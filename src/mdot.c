#include "mdot.h"
#include "stringbuffer.h"
#include "communication.h"
MDOT_DATA mDotData;
STRING_BUFFER stringBuffer;
uint16_t timeout;
uint16_t mDotTimoutCount = 0;
uint16_t mDotSentCount = 0;
uint16_t mDotErrorCount = 0;

LW_PAYLOAD payload;

char * testMD = "Hello";

void mDotCommand(MDOT_COMMAND command, int parameter1, char * parameter2);
void mDotWait(void);
int checkMDotResponse(void);

//Test
void initPayload(void)
{
   payload.values.Id = 1234; 
   payload.values.Tstp = 1642522740; 
   payload.values.V = 1; 
   payload.values.GasC = 150; 
   payload.values.stdDevG =  10; 
   payload.values.AvgSW = 5;
   payload.values.AvgDW = 97; 
   payload.values.StdDevW = 3; 
   payload.values.StdDevDir = 2; 
   payload.values.Msr = 4; 
   payload.values.StdDevSr = 1; 
   payload.values.Prec = 6;
   payload.values.Cmp = 12; 
   payload.values.Lat = 153.35710874569601; 
   payload.values.Lgt = -6.372070312500001;
   payload.values.Alt = 67;
   payload.values.Fq = 9;
   payload.values.Ns = 1;
   payload.values.Tsrc = 1;
   payload.values.Tilt = 14;
   payload.values.BattStatus = 98;
   payload.values.Curr = 1;
   payload.values.Volt = 12;
   payload.values.Mtemp = 17;
   payload.values.Mpress = 14;
   payload.values.Mhum = 75;
}

void createHexString(const unsigned char *src, size_t len, unsigned char *dest)
{
    static const unsigned char table[] = "0123456789abcdef";

    for (; len > 0; --len)
    {
        unsigned char c = *src++;
        *dest++ = table[c >> 4];
        *dest++ = table[c & 0x0f];
    }
    *dest = 0; 
}

unsigned char strTest[200];
//End Test

void mDotInit(void)
{
    mDotData.state = MDOT_STATE_INIT;
}

void mDotTasks(void)
{
    char comBuffer[STRING_BUFFER_SIZE];
    size_t count;
    switch(mDotData.state)
    {
        case MDOT_STATE_INIT:
            mDotData.command = MDOT_NONE;
            memset(mDotData.sendBuffer,0,MDOT_TX_BUFFER);
            memset(mDotData.receiveBuffer,0,MDOT_RX_BUFFER);
            LS_Clear();
            LS_N_Clear();  
            MDOT_RST_Set();
            MDOT_RST_Clear(); 
            uint16_t y;
            for(y = 0; y < 1000; y++)       // 100 = 44uS
                asm("NOP");                 // 1000 = 440uS
            MDOT_RST_Set();
            MDOT_PQR_Set();
            MDOT_SLEEP_Clear();  
            MDOT_WAKE_Set();
            MDOT_ASSOC_Set();
            initBuffer(&stringBuffer);
            //*** TEST ***
            initPayload();
            createHexString(payload.bytes, sizeof(payload), strTest);
            mDotCommand(MDOT_TEST, 0, NULL);//Test
            mDotCommand(MDOT_SET_ECHO, 0, NULL);//Turn off echo
//            mDotCommand(MDOT_SET_ECHO, 0, NULL);//Turn off echo
            mDotCommand(MDOT_SET_NET_EUI, 1, "MTCDT-21299329");//Set network name
            mDotCommand(MDOT_SET_NET_PASS, 1, "MTCDT-21299329");//Set network pass phrase
            mDotCommand(MDOT_SET_CLASS, 0, "C");//Set class C
            mDotCommand(MDOT_CHM, NULL, "0,00FF");//Mask 0-7   
            mDotCommand(MDOT_TXDR, 4, NULL);//DR4
            mDotCommand(MDOT_SAVE, 0, NULL);//Save      
            mDotCommand(MDOT_JOIN_NETWORK, 0, NULL);//Join network      
            mDotCommand(MDOT_SENDB, NULL, "");//Save
            mDotCommand(MDOT_SENDB, NULL, "");//Save
            mDotCommand(MDOT_SENDB, NULL, strTest);//Save
            
//            mDotCommand(MDOT_VERSION, 0, NULL);//Test
            
//            mDotCommand(MDOT_SEND, NULL, testMD);//Save
//            mDotCommand(MDOT_VERSION, 0, NULL);//Test
//            mDotCommand(MDOT_TEST, 0, NULL);//Test
            //*** END TEST ***
            
            mDotData.state = MDOT_STATE_IDLE;
            break;
        case MDOT_STATE_COMMAND:
            count = pop(&stringBuffer, comBuffer, &(mDotData.command));
            sendStringU6(comBuffer);
            mDotSentCount++;
            timeout = MDOT_TIME_OUT;
            mDotData.state = MDOT_STATE_WAIT;
            break;
        case MDOT_STATE_PROCESS:
            parseLoraFrame();
            mDotData.state = MDOT_STATE_IDLE;
            break;
        case MDOT_STATE_WAIT:
            mDotWait();         
            break;
        case MDOT_STATE_IDLE:
            if(available(&stringBuffer))
                mDotData.state = MDOT_STATE_COMMAND;
            break;
        case MDOT_STATE_ERROR:
            mDotErrorCount++;
            mDotData.state = MDOT_STATE_IDLE;
            break;
        case MDOT_STATE_TIMEOUT:
            mDotTimoutCount++;
            mDotData.state = MDOT_STATE_IDLE;
            break;
        default:
            break;
    }
}

void mDotCommand(MDOT_COMMAND command, int parameter1, char * parameter2)
{
    char comBuffer[STRING_BUFFER_SIZE];
    size_t count;
    switch(command)
    {
        default:
        case MDOT_NONE:
            mDotData.state = MDOT_STATE_IDLE;
            return;
            break;
        case MDOT_TEST:
            count = sprintf(comBuffer,"AT"); 
            break;
        case MDOT_SET_ECHO:
            count = sprintf(comBuffer,"ATE%d",parameter1);
            break;
        case MDOT_SAVE:
            count = sprintf(comBuffer,"AT&W"); 
            break;
        case MDOT_SET_PING_TIME:
            count = sprintf(comBuffer,"AT+PP=%d",parameter1);
            break;
        case MDOT_GET_TIME:
            count = sprintf(comBuffer,"AT+GPSTIME"); 
            break;
        case MDOT_GET_BEACON:
            count = sprintf(comBuffer,"AT+BLS"); 
            break;
        case MDOT_SET_BAT:
            count = sprintf(comBuffer,"AT+BAT=%d",parameter1);
            break;
        case MDOT_GET_EUI:
            count = sprintf(comBuffer,"AT+DI=?"); 
            break;
        case MDOT_SET_EUI:
            count = sprintf(comBuffer,"AT+DI=%s",parameter2);
            break;
        case MDOT_SET_NETWORK:
            count = sprintf(comBuffer,"AT+PN=%d",parameter1);
            break;
        case MDOT_GET_NETWORK:
            count = sprintf(comBuffer,"AT+PN=?");
            break;
        case MDOT_JOIN_NETWORK:
            count = sprintf(comBuffer,"AT+JOIN"); 
            break;
        case MDOT_SET_NET_EUI:
            count = sprintf(comBuffer,"AT+NI=%d,%s", parameter1, parameter2);
            break;
        case MDOT_GET_NET_EUI:
            count = sprintf(comBuffer,"AT+NI=?");
            break;
        case MDOT_SET_NET_PASS:
            count = sprintf(comBuffer,"AT+NK=%d,%s", parameter1, parameter2);
            break;
        case MDOT_GET_NET_PASS:
            count = sprintf(comBuffer,"AT+NK=?");
            break;
        case MDOT_GET_JOIN_STATUS:
            count = sprintf(comBuffer,"AT+NJS"); 
            break;
        case MDOT_SET_CLASS:
            count = sprintf(comBuffer,"AT+DC=%s",parameter2);
            break;
        case MDOT_SEND:
            count = sprintf(comBuffer,"AT+SEND=%s",parameter2);
            break;
        case MDOT_SENDB:
            count = sprintf(comBuffer,"AT+SENDB=%s",parameter2);
            break;
        case MDOT_RECEIVE:
            count = sprintf(comBuffer,"AT+RECV"); 
            break;
        case MDOT_GET_DATA_PENDING:
            count = sprintf(comBuffer,"AT+DP"); 
            break;
        case MDOT_ESCAPE_SERIAL:
            count = sprintf(comBuffer,"+++"); 
            break;
        case MDOT_VERSION:
            count = sprintf(comBuffer,"AT&V"); 
            break;
        case MDOT_TXDR:
            count = sprintf(comBuffer,"AT+TXDR=%d",parameter1);
            break;
        case MDOT_CHM:
            count = sprintf(comBuffer,"AT+CHM=%s",parameter2);
            break;
        case MDOT_OPEN_REC_WIN:
            count = sprintf(comBuffer,"AT+SEND"); 
            break;
    }   
    count = push(&stringBuffer, comBuffer, command);
    memset(mDotData.receiveBuffer,0,MDOT_RX_BUFFER);
}

int resTest;

void mDotWait(void)
{
    if(uartComData6.readStatus)
    {   
        mDotData.command = MDOT_NONE;
        if(uartComData6.timeutStatus)
        {
            mDotData.state = MDOT_STATE_TIMEOUT;
            return;
        }
//        resTest = checkMDotResponse();   
//        if(resTest == MDOT_FRAME_OK)
            mDotData.state = MDOT_STATE_PROCESS;
//        else
//            mDotData.state = MDOT_STATE_ERROR;
        return;
    }
}

void mDotSetEcho(bool value)
{
//    if(value)
//        mDotData.parameter = 1;
//    else
//        mDotData.parameter = 0;
//    mDotData.command = MDOT_SET_ECHO;
}

int checkMDotResponse(void)
{
    char good[5] = "\nOK\r";
    char testStr[5];
    if(uartComData6.receiveCount < 8)
        return MDOT_FRAME_ERROR;
    int head = uartComData6.receiveCount - 8;
    strncpy(testStr, uartComData6.receiveBuffer + head, 4);
    testStr[4] = 0;
    if(strcmp(testStr, good) == 0)
        return MDOT_FRAME_OK;
    else
        return MDOT_FRAME_ERROR;
}

int parseLoraFrame(void)
{
    strcpy(mDotData.receiveBuffer, uartComData6.receiveBuffer);
    switch(mDotData.command)
        {
            default:
            case MDOT_NONE:
                break;
            case MDOT_TEST:
                break;
            case MDOT_SET_ECHO:
                break;
            case MDOT_SAVE:
                break;
            case MDOT_SET_PING_TIME:
                break;
            case MDOT_GET_TIME:
                break;
            case MDOT_GET_BEACON:
                break;
            case MDOT_SET_BAT:
                break;
            case MDOT_GET_EUI:
                break;
            case MDOT_SET_NETWORK:
                break;
            case MDOT_JOIN_NETWORK:
                break;
            case MDOT_SET_NET_EUI:
                break;
            case MDOT_SET_NET_PASS:
                break;
            case MDOT_GET_JOIN_STATUS:
                break;
            case MDOT_SET_CLASS:
                break;
            case MDOT_SEND:
                break;
            case MDOT_SENDB:
                break;
            case MDOT_RECEIVE:
                asm("NOP");
                asm("NOP");
                break;
            case MDOT_GET_DATA_PENDING:
                break;
            case MDOT_ESCAPE_SERIAL:
                break;
        }        
    return MDOT_FRAME_ERROR;
}

void getMdotMessage(void)
{
    mDotCommand(MDOT_RECEIVE, NULL, "");//Read received message
}