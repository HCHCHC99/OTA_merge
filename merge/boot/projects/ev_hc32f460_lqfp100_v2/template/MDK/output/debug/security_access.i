#line 1 "..\\..\\UDS\\security_access.c"



 
#line 1 "..\\..\\UDS\\security_access.h"



 



#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 9 "..\\..\\UDS\\security_access.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 10 "..\\..\\UDS\\security_access.h"





_Bool seedkey_calc_lv1_key(uint8_t *seed, uint8_t *key);

#line 6 "..\\..\\UDS\\security_access.c"
#line 7 "..\\..\\UDS\\security_access.c"




static uint8_t crc8(uint8_t *data, int32_t length)
{
    uint8_t crc = 0xff;
    int32_t f, b;

    for (f = 0; f < length; f++)
    {
        crc ^= data[f];
        for (b = 0; b < 8; b++)
        {
            if ((crc & 0x80) != 0)
            {
                crc <<= 1;
                crc ^= 0x1d;
            }
            else
            {
                crc <<= 1;
            }
        }
    }
    return ~crc;
}

static _Bool compute_key_from_seed(uint8_t *seed, uint8_t *key)
{
    uint8_t buf_byte[6];
    uint8_t crc_byte[7];
    int32_t i;

    
    for (i = 0; i < (6); i++)
    {
        buf_byte[i] = seed[i];
    }

    
    crc_byte[0] = crc8(buf_byte, (6));
    buf_byte[0] = crc_byte[0];
    
    
    crc_byte[1] = crc8(buf_byte, (6));

    
    for (i = 0; i < (6); i++)
    {
        buf_byte[i] = seed[i];
    }
    buf_byte[0] = seed[0];
    buf_byte[1] = crc_byte[1];
    crc_byte[2] = crc8(buf_byte, (6));

    buf_byte[1] = seed[1];
    buf_byte[2] = crc_byte[2];
    crc_byte[3] = crc8(buf_byte, (6));

    buf_byte[2] = seed[2];
    buf_byte[3] = crc_byte[3];
    crc_byte[4] = crc8(buf_byte, (6));

    buf_byte[3] = seed[3];
    buf_byte[4] = crc_byte[4];
    crc_byte[5] = crc8(buf_byte, (6));

    buf_byte[4] = seed[4];
    buf_byte[5] = crc_byte[5];
    crc_byte[6] = crc8(buf_byte, (6));

    
    if (crc_byte[3] == 0 && crc_byte[4] == 0 && crc_byte[5] == 0 && crc_byte[6] == 0)
    {
        key[0] = crc_byte[1];
        key[1] = crc_byte[2];
        key[2] = crc_byte[3];
        key[3] = crc_byte[4];
    }
    else
    {
        key[0] = crc_byte[3];
        key[1] = crc_byte[4];
        key[2] = crc_byte[5];
        key[3] = crc_byte[6];
    }

    return 1;
}

_Bool seedkey_calc_lv1_key(uint8_t *seed, uint8_t *key)
{
    uint8_t new_seed[(6)];
    int32_t index;

    
    for (index = 0; index < 4; index++)
    {
        new_seed[index] = seed[index];
    }
    new_seed[4] = ((0xe738) & 0xff00) >> 8;  
    new_seed[5] = (0xe738) & 0xff;            
    
    return compute_key_from_seed(new_seed, key);
}
