#include "nmea.h"
#include "communication.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int hexchar2int(char c);
int hex2int(char *c);
int checksumOK(char *string);
int parseCDLstring(char *string, char **fields, int max_fields);

GPS_RMC rmcData;

extern UART_COM_DATA uartComData3;

char *strA[100];
char* tok;

void initGPSdata(void)
{
    rmcData.is_valid = 0;
    rmcData.hour = 0;
    rmcData.minute = 0;
    rmcData.second = 0;
    rmcData.year = 0;
    rmcData.month = 0;
    rmcData.day = 0;
    rmcData.latitude = 0;
    rmcData.latitude_dms = 0;
    rmcData.latitude_direction = 0;
    rmcData.longitude = 0;
    rmcData.longitude_dms = 0;
    rmcData.longitude_direction = 0;
}

int parseNMEAstring(char *str)
{
	char *field[50];
    char *test = &(uartComData3.receiveBuffer[3]);
    char seps[]   = ",";
    int i = 0; 
    if (strncmp(test, "RMC", 3) == 0)
    {
        char *test2 = &(uartComData3.receiveBuffer[0]);
        parseCDLstring(test2, field, 20);
        
        char *rest;
        uint32_t utc = strtol(field[1], &rest, 10);
        rmcData.hour = utc / 10000;
        rmcData.minute = utc / 100 - rmcData.hour * 100;
        rmcData.second = utc - rmcData.hour * 10000 - rmcData.minute * 100;
        uint32_t date = strtol(field[9], &rest, 10);
        rmcData.day = date / 10000;
        rmcData.month = date / 100 - rmcData.day * 100;
        rmcData.year = date - rmcData.day * 10000 - rmcData.month * 100;
        
        rmcData.latitude_dms = strtod(field[3], &rest);
        rmcData.latitude_direction = field[4];
        char *lat = field[3];
        rmcData.latitude = (lat[0] - '0') * 10 + lat[1] - '0';
        rmcData.latitude += strtod(lat + 2, &rest) / 60;
        if (field[4] == 'S') 
            rmcData.latitude *= -1;
        
        rmcData.longitude_dms = strtod(field[5], &rest);
        rmcData.longitude_direction = field[6];
        char *lon = field[5];
        rmcData.longitude = (lon[0] - '0') * 100 + (lon[1] - '0') * 10 + lon[2] - '0';
        rmcData.longitude += strtod(lon + 3, &rest) / 60;
	if (field[6]== 'W')
		rmcData.longitude *= -1;
        
        
    
        for(i=0;i<10;i++)
        {
            UART3_Write( field[i], strlen(field[i]) );
            while(UART3_WriteIsBusy());
            UART3_Write( "\n\r",2 );
            while(UART3_WriteIsBusy());
        }
    }
    return -1;
}

int checksumOK(char *string)
{
	char *checksum_str;
	int checksum;
	unsigned char calculated_checksum = 0;

	// Checksum is postcede by *
	checksum_str = strchr(string, '*');
	if (checksum_str != NULL)
    {
		// Remove checksum from string
		*checksum_str = '\0';
		// Calculate checksum, starting after $ (i = 1)
		for (int i = 1; i < strlen(string); i++) 
			calculated_checksum = calculated_checksum ^ string[i];
		checksum = hex2int((char *)checksum_str+1);
		if (checksum == calculated_checksum)
			return 1;
	} 
    else
		return 0;
	return 0;
}

int hexchar2int(char c)
{
    if (c >= '0' && c <= '9')
        return c - '0';
    if (c >= 'A' && c <= 'F')
        return c - 'A' + 10;
    if (c >= 'a' && c <= 'f')
        return c - 'a' + 10;
    return -1;
}

int hex2int(char *c)
{
	int value;
	value = hexchar2int(c[0]);
	value = value << 4;
	value += hexchar2int(c[1]);
	return value;
}

int parseCDLstring(char *string, char **fields, int max_fields)
{
	int i = 0;
	fields[i++] = string;
	while ((i < max_fields) && NULL != (string = strchr(string, ','))) 
    {
		*string = '\0';
		fields[i++] = ++string;
	}
	return --i;
}

unsigned long unixTimestamp(int year, int month, int day, int hour, int min, int sec)
{
    const short days_since_beginning_of_year[12] = {0,31,59,90,120,151,181,212,243,273,304,334};

    int leap_years = ((year-1)-1968)/4
                  - ((year-1)-1900)/100
                  + ((year-1)-1600)/400;

    long days_since_1970 = (year-1970)*365 + leap_years
                      + days_since_beginning_of_year[month-1] + day-1;

    if ( (month>2) && (year%4==0 && (year%100!=0 || year%400==0)) )
    days_since_1970 += 1; /* +leap day, if year is a leap year */

    return sec + 60 * ( min + 60 * (hour + 24*days_since_1970) );
}