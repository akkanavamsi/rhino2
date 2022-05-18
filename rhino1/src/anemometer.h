/* 
 * File:   anemometer.h
 * Author: RFord7
 *
 * Created on 26 April 2022, 14:09
 */

#ifndef ANEMOMETER_H
#define	ANEMOMETER_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stdint.h>
    
    #define IR_MEAN_WIND_SPEED 0 + 3
    #define IR_MEAN_WIND_DIRECTION 2 + 3
    #define IR_PRECIPITATION 34 + 3
    #define IR_COMPASS 80 + 3
    #define IR_RADIATION 90+ 3


    typedef struct
    {
//        uint16_t VAvgWS;
//        uint16_t VAvgWD;
//        uint16_t StdDevWD;
//        uint16_t Msr;
//        uint16_t StdDevSR;
//        uint16_t Prec;
//        uint16_t Cmp;
//        uint16_t SAvgWS ;
//        uint16_t StdDevWS;
//        int8_t AvgWDSin;
//        int8_t AvgWDCos;
        uint32_t windSpeed;
        uint32_t windDirection;
        uint32_t precipitation;
        uint32_t compass;
        int32_t radiation;
    }ANEMOMETER_DATA;

    extern ANEMOMETER_DATA anemometerData;

#ifdef	__cplusplus
}
#endif

#endif	/* ANEMOMETER_H */

