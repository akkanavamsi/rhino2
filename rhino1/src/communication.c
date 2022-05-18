#include "communication.h"

UART_COM_DATA uartComData6;
uint8_t rxByte;
uint16_t uart6_timeout = 0;
uint16_t uart6_eof = 0;
bool uart6_timeoutFlag = false;
bool uart6_eofFlag = false;

void uart6_writeCallback(uintptr_t context)
{ 
    uartComData6.state = UART_BUFFER_WAIT;
    uartComData6.writeStatus = true;
}

void uart6_readCallback(uintptr_t context)
{         
    UART6_Read(&rxByte, 1);
    uartComData6.receiveBuffer[uartComData6.receiveCount++] = rxByte;
    uart6_eof = 0;
    uartComData6.state = UART_RECEIVE_BUFFER;
}

void uart6_counters(void)
{
    if((uartComData6.state == UART_BUFFER_WAIT) || (uartComData6.state == UART_RECEIVE_BUFFER))
    {
        uart6_timeout++;
        if(uart6_timeout >= 1000)//1000ms
        {
            uart6_timeout = 0;
            uart6_timeoutFlag = true;
        }
    }
    if(uartComData6.state == UART_RECEIVE_BUFFER)//check eof
    {
        uart6_eof++;
        if(uart6_eof >= 10)//100ms
        {
            uart6_eofFlag = true;
            uart6_eof = 0;
        }
    }
}

void communicationHandlingDone(void)
{
    uartComData6.readStatus = false;
    uartComData6.state = UART_BUFFER_IDLE;
}

void communication_init(void)
{
    uartComData6.state = UART_BUFFER_INIT;
}

int testsend = 0;
int testreq = 0;

void communication_task(void)
{
    switch(uartComData6.state)
    {
        case UART_BUFFER_INIT:
            UART6_WriteCallbackRegister(uart6_writeCallback, 0);
            UART6_ReadCallbackRegister(uart6_readCallback, 0);
            uartComData6.writeStatus = false;
            uartComData6.readStatus = false;
            uartComData6.timeutStatus = false;
            clearSendBuffer();
            clearReceiveBuffer();
            UART6_Read(&rxByte, 1); 
            uart6_eof = 0;
            uart6_timeout = 0;
            uart6_timeoutFlag = false;
            uart6_eofFlag = false;
            uartComData6.state = UART_BUFFER_IDLE;
            break;
        case UART_SEND_BUFFER:
            testsend++;
            clearReceiveBuffer();
            UART6_Write(uartComData6.sendBuffer, uartComData6.sendCount);
            uart6_timeout = 0;
            uart6_eof = 0;
            uart6_timeoutFlag = false;
            uart6_eofFlag = false;
            uartComData6.timeutStatus = false;
            uartComData6.readStatus = false;
            uartComData6.state = UART_BUFFER_WAIT;
            break;
        case UART_RECEIVE_BUFFER:
            //if(uartComData6.receiveBuffer[uartComData6.receiveCount - 1] == 0x0A)//Line Feed
            //if(uartComData6.receiveBuffer[uartComData6.receiveCount -1] == 0x00)//NULL
            if(uart6_eofFlag)
            {
                uartComData6.state = UART_RECEIVE_PROCESS;
                uartComData6.readStatus = true;//EOF
                uart6_eofFlag = false;
            }
            if(uart6_timeoutFlag)
            {
                uartComData6.state = UART_BUFFER_ERROR;
            }
            break;
        case UART_RECEIVE_PROCESS:
            testreq ++;
//            clearReceiveBuffer();
            uartComData6.state = UART_BUFFER_IDLE;
            break;
        case UART_BUFFER_ERROR:
            uartComData6.timeout++;
            uartComData6.readStatus = true;
            uartComData6.timeutStatus = true;
            clearReceiveBuffer();
            uartComData6.state = UART_BUFFER_IDLE;
            break;
        case UART_BUFFER_WAIT:
            if(uart6_timeoutFlag)
            {
                uartComData6.state = UART_BUFFER_ERROR;
            }
//            if(!UART6_WriteIsBusy())              
//                uartComData6.state = UART_BUFFER_IDLE;
            break;
        default:
        case UART_BUFFER_IDLE:
            break;
    }
}

void clearSendBuffer(void)
{
    memset(uartComData6.sendBuffer,0,COM_BUFFER_SIZE);
    uartComData6.sendCount = 0;
}

void clearReceiveBuffer(void)
{
    memset(uartComData6.receiveBuffer,0,COM_BUFFER_SIZE);
    uartComData6.receiveCount = 0;
}

void sendBuffer(void)
{
    if(uartComData6.state == UART_BUFFER_IDLE)
        uartComData6.state = UART_SEND_BUFFER;
}

bool uart6Busy(void)
{
    if(uartComData6.state == UART_BUFFER_IDLE)
        return false;
    else
        return true;
}

uint16_t sendStringU6(char * str)
{
    uint16_t len = strlen(str);
    int i;
    clearSendBuffer();
    for(i =0; i < len; i++)
        uartComData6.sendBuffer[i] = str[i];
    uartComData6.sendBuffer[len] = 0x0D;//CR
    uartComData6.sendBuffer[len + 1] = 0x0A;//LF
    uartComData6.sendCount = len + 2;
    sendBuffer();
    //UART6_Write(str,len);
    return len;
}