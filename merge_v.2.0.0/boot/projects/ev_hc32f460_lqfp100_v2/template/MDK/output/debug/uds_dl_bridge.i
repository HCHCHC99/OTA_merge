#line 1 "..\\..\\UDS\\uds_dl_bridge.c"







 
#line 1 "..\\..\\UDS\\uds_dl_if.h"







 



#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
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




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 13 "..\\..\\UDS\\uds_dl_if.h"
#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 14 "..\\..\\UDS\\uds_dl_if.h"

 
typedef enum
{
    UDS_DL_OK = 0,               
    UDS_DL_ADDR_INVALID,         
    UDS_DL_SIZE_TOO_LARGE,       
    UDS_DL_ERASE_FAILED,         
    UDS_DL_WRITE_FAILED,         
    UDS_DL_VERIFY_FAILED,        
    UDS_DL_SEQUENCE_ERROR,       
    UDS_DL_BUSY,                 
    UDS_DL_NOT_READY,            
    UDS_DL_CRC_MISMATCH,         
    UDS_DL_GENERAL_ERROR         
} uds_dl_result_t;

 
typedef struct
{
    uint32_t total_size;             
    uint32_t received_size;          
    uint32_t target_address;         
    uint8_t  progress_percent;       
} uds_dl_progress_t;

 
typedef enum
{
    UDS_DL_STATE_IDLE = 0,           
    UDS_DL_STATE_READY,              
    UDS_DL_STATE_TRANSFERRING,       
    UDS_DL_STATE_VERIFYING,          
    UDS_DL_STATE_COMPLETE,           
    UDS_DL_STATE_ERROR               
} uds_dl_state_t;

 
typedef struct
{
    




 
    uds_dl_result_t (*init)(void* config_data, uint16_t config_len);

    




 
    uds_dl_result_t (*on_request_download)(uint32_t address, uint32_t size);

    





 
    uds_dl_result_t (*on_transfer_data)(uint8_t block_sequence_number,
	                                         const uint8_t* data,
	                                         uint16_t len);

    


 
    uds_dl_result_t (*on_transfer_exit)(void);

    




 
    uds_dl_result_t (*erase)(uint32_t address, uint32_t size);

    





 
    uds_dl_result_t (*calculate_crc)(uint32_t address, uint32_t size,
                                      uint32_t* crc_result);

    


 
    uds_dl_state_t (*get_state)(void);

    


 
    void (*get_progress)(uds_dl_progress_t* progress);

    


 
    uds_dl_result_t (*get_last_error)(void);

    

 
    void (*cancel)(void);

    

 
    void (*reset)(void);

    


 
    void (*task)(void);

    


 
    _Bool (*is_pending)(void);

    




 
    _Bool (*read_did)(uint16_t did, uint32_t* value);

} uds_dl_if_t;

 





 
void uds_dl_register(const uds_dl_if_t* iface);




 
const uds_dl_if_t* uds_dl_get_if(void);




 
_Bool uds_dl_is_registered(void);

#line 10 "..\\..\\UDS\\uds_dl_bridge.c"
#line 1 "..\\..\\UDS\\flash_download.h"



#line 5 "..\\..\\UDS\\flash_download.h"
#line 6 "..\\..\\UDS\\flash_download.h"


typedef enum
{
    FW_UPDATE_IDLE = 0,         
    FW_UPDATE_PREPARING,        
    FW_UPDATE_READY,            
    FW_UPDATE_TRANSFERRING,     
    FW_UPDATE_VERIFYING,        
    FW_UPDATE_COMPLETE,         
    FW_UPDATE_ERROR             
} FlashDownloadState_t;


typedef enum
{
    FW_RESULT_OK = 0,           
    FW_RESULT_ADDR_INVALID,     
    FW_RESULT_SIZE_TOO_LARGE,   
    FW_RESULT_ERASE_FAILED,     
    FW_RESULT_WRITE_FAILED,     
    FW_RESULT_VERIFY_FAILED,    
    FW_RESULT_SEQUENCE_ERROR,   
    FW_RESULT_BUSY,             
    FW_RESULT_NOT_READY         
} FlashDownloadResult_t;


typedef struct
{
    uint32_t total_size;        
    uint32_t received_size;     
    uint32_t target_address;    
    uint8_t progress_percent;   
} FlashDownloadProgress_t;


typedef struct
{
    uint32_t max_firmware_size;     
    uint32_t flash_sector_size;     
    uint32_t user_start_addr;       
    uint32_t user_end_addr;         
    uint8_t verify_enabled;         
    uint8_t auto_reset_on_complete; 
} FlashDownloadConfig_t;











 





 









 









 
FlashDownloadResult_t FlashDownload_OnRequestDownload(uint32_t address, uint32_t size);







 
FlashDownloadResult_t FlashDownload_OnTransferData(uint8_t block_sequence_number,
                                                    uint8_t* data,
                                                    uint16_t len);




 
FlashDownloadResult_t FlashDownload_OnTransferExit(void);






 
FlashDownloadResult_t FlashDownload_Erase(uint32_t address, uint32_t size);







 
FlashDownloadResult_t FlashDownload_CalculateCRC(uint32_t address, uint32_t size, uint32_t* crc_result);





 
FlashDownloadState_t FlashDownload_GetState(void);



 
void FlashDownload_GetProgress(FlashDownloadProgress_t* progress);



 
FlashDownloadResult_t FlashDownload_GetLastError(void);



 
uint16_t FlashDownload_GetFirmwareVersion(void);



 
uint16_t FlashDownload_GetBootloaderVersion(void);



 
uint32_t FlashDownload_GetFirmwareCRC(void);






 
void FlashDownload_Init(const FlashDownloadConfig_t* config);



 
void FlashDownload_Cancel(void);



 
void FlashDownload_Reset(void);






 
void FlashDownload_Task(void);




 
_Bool FlashDownload_IsPending(void);

#line 11 "..\\..\\UDS\\uds_dl_bridge.c"
#line 1 "..\\..\\RTT\\rtt_log.h"



#line 1 "..\\..\\RTT\\SEGGER_RTT.h"























































 




#line 1 "..\\..\\RTT\\SEGGER_RTT_Conf.h"























































 













 


















































 
































 
#line 241 "..\\..\\RTT\\SEGGER_RTT_Conf.h"




 
#line 296 "..\\..\\RTT\\SEGGER_RTT_Conf.h"




 
#line 310 "..\\..\\RTT\\SEGGER_RTT_Conf.h"




 
#line 324 "..\\..\\RTT\\SEGGER_RTT_Conf.h"




 
#line 351 "..\\..\\RTT\\SEGGER_RTT_Conf.h"










 
#line 383 "..\\..\\RTT\\SEGGER_RTT_Conf.h"




 
#line 398 "..\\..\\RTT\\SEGGER_RTT_Conf.h"





 
#line 415 "..\\..\\RTT\\SEGGER_RTT_Conf.h"




 









 
#line 62 "..\\..\\RTT\\SEGGER_RTT.h"






 


  
  
  
  
  
  
  
  
  
  
  
  
#line 107 "..\\..\\RTT\\SEGGER_RTT.h"
    
    
    
    
    
#line 237 "..\\..\\RTT\\SEGGER_RTT.h"
  
  
  
#line 249 "..\\..\\RTT\\SEGGER_RTT.h"





#line 261 "..\\..\\RTT\\SEGGER_RTT.h"





#line 278 "..\\..\\RTT\\SEGGER_RTT.h"

#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 281 "..\\..\\RTT\\SEGGER_RTT.h"
#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"



#line 147 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

#line 282 "..\\..\\RTT\\SEGGER_RTT.h"
#line 283 "..\\..\\RTT\\SEGGER_RTT.h"






 








#line 305 "..\\..\\RTT\\SEGGER_RTT.h"






 





typedef struct {
  const     char*    sName;         
            char*    pBuffer;       
            unsigned SizeOfBuffer;  
            unsigned WrOff;         
  volatile  unsigned RdOff;         
            unsigned Flags;         
} SEGGER_RTT_BUFFER_UP;





typedef struct {
  const     char*    sName;         
            char*    pBuffer;       
            unsigned SizeOfBuffer;  
  volatile  unsigned WrOff;         
            unsigned RdOff;         
            unsigned Flags;         
} SEGGER_RTT_BUFFER_DOWN;






typedef struct {
  char                    acID[16];                                 
  int                     MaxNumUpBuffers;                          
  int                     MaxNumDownBuffers;                        
  SEGGER_RTT_BUFFER_UP    aUp[(3)];       
  SEGGER_RTT_BUFFER_DOWN  aDown[(3)];   



} SEGGER_RTT_CB;






 
extern SEGGER_RTT_CB _SEGGER_RTT;






 



int          SEGGER_RTT_AllocDownBuffer         (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_AllocUpBuffer           (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_ConfigUpBuffer          (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_ConfigDownBuffer        (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_GetKey                  (void);
unsigned     SEGGER_RTT_HasData                 (unsigned BufferIndex);
int          SEGGER_RTT_HasKey                  (void);
unsigned     SEGGER_RTT_HasDataUp               (unsigned BufferIndex);
void         SEGGER_RTT_Init                    (void);
unsigned     SEGGER_RTT_Read                    (unsigned BufferIndex,       void* pBuffer, unsigned BufferSize);
unsigned     SEGGER_RTT_ReadNoLock              (unsigned BufferIndex,       void* pData,   unsigned BufferSize);
int          SEGGER_RTT_SetNameDownBuffer       (unsigned BufferIndex, const char* sName);
int          SEGGER_RTT_SetNameUpBuffer         (unsigned BufferIndex, const char* sName);
int          SEGGER_RTT_SetFlagsDownBuffer      (unsigned BufferIndex, unsigned Flags);
int          SEGGER_RTT_SetFlagsUpBuffer        (unsigned BufferIndex, unsigned Flags);
int          SEGGER_RTT_WaitKey                 (void);
unsigned     SEGGER_RTT_Write                   (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_WriteNoLock             (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_WriteSkipNoLock         (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_ASM_WriteSkipNoLock     (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_WriteString             (unsigned BufferIndex, const char* s);
void         SEGGER_RTT_WriteWithOverwriteNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_PutChar                 (unsigned BufferIndex, char c);
unsigned     SEGGER_RTT_PutCharSkip             (unsigned BufferIndex, char c);
unsigned     SEGGER_RTT_PutCharSkipNoLock       (unsigned BufferIndex, char c);
unsigned     SEGGER_RTT_GetAvailWriteSpace      (unsigned BufferIndex);
unsigned     SEGGER_RTT_GetBytesInBuffer        (unsigned BufferIndex);














 
unsigned     SEGGER_RTT_ReadUpBuffer            (unsigned BufferIndex, void* pBuffer, unsigned BufferSize);
unsigned     SEGGER_RTT_ReadUpBufferNoLock      (unsigned BufferIndex, void* pData, unsigned BufferSize);
unsigned     SEGGER_RTT_WriteDownBuffer         (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_WriteDownBufferNoLock   (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);








 
int     SEGGER_RTT_SetTerminal        (unsigned char TerminalId);
int     SEGGER_RTT_TerminalOut        (unsigned char TerminalId, const char* s);






 
int SEGGER_RTT_printf(unsigned BufferIndex, const char * sFormat, ...);
int SEGGER_RTT_vprintf(unsigned BufferIndex, const char * sFormat, va_list * pParamList);












 
















#line 475 "..\\..\\RTT\\SEGGER_RTT.h"

#line 484 "..\\..\\RTT\\SEGGER_RTT.h"

#line 493 "..\\..\\RTT\\SEGGER_RTT.h"

#line 502 "..\\..\\RTT\\SEGGER_RTT.h"




 
#line 5 "..\\..\\RTT\\rtt_log.h"













typedef enum {
    LOG_CH_MAIN    = 0,    
    LOG_CH_USB     = 1,    
    LOG_CH_SENSOR  = 2,    
    LOG_CH_MOTOR   = 3,    
    LOG_CH_COMM    = 4,    
    LOG_CH_UI      = 5,    
    LOG_CH_MAX            
} LogChannel_t;




#line 38 "..\\..\\RTT\\rtt_log.h"

















































#line 12 "..\\..\\UDS\\uds_dl_bridge.c"
#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 13 "..\\..\\UDS\\uds_dl_bridge.c"

 





 
static const uds_dl_if_t* g_dl_iface = 0;

 
 
static uds_dl_result_t dl_convert_fw_result(FlashDownloadResult_t fw_result)
{
    switch (fw_result)
    {
        case FW_RESULT_OK:              return UDS_DL_OK;
        case FW_RESULT_ADDR_INVALID:    return UDS_DL_ADDR_INVALID;
        case FW_RESULT_SIZE_TOO_LARGE:  return UDS_DL_SIZE_TOO_LARGE;
        case FW_RESULT_ERASE_FAILED:    return UDS_DL_ERASE_FAILED;
        case FW_RESULT_WRITE_FAILED:    return UDS_DL_WRITE_FAILED;
        case FW_RESULT_VERIFY_FAILED:   return UDS_DL_VERIFY_FAILED;
        case FW_RESULT_SEQUENCE_ERROR:  return UDS_DL_SEQUENCE_ERROR;
        case FW_RESULT_BUSY:            return UDS_DL_BUSY;
        case FW_RESULT_NOT_READY:       return UDS_DL_NOT_READY;
        default:                        return UDS_DL_GENERAL_ERROR;
    }
}

 
static uds_dl_state_t dl_convert_fw_state(FlashDownloadState_t fw_state)
{
    switch (fw_state)
    {
        case FW_UPDATE_IDLE:            return UDS_DL_STATE_IDLE;
        case FW_UPDATE_READY:           return UDS_DL_STATE_READY;
        case FW_UPDATE_TRANSFERRING:    return UDS_DL_STATE_TRANSFERRING;
        case FW_UPDATE_VERIFYING:       return UDS_DL_STATE_VERIFYING;
        case FW_UPDATE_COMPLETE:        return UDS_DL_STATE_COMPLETE;
        case FW_UPDATE_ERROR:           return UDS_DL_STATE_ERROR;
        default:                        return UDS_DL_STATE_IDLE;
    }
}

 

static uds_dl_result_t dl_fw_init(void* config_data, uint16_t config_len)
{
    (void)config_data;
    (void)config_len;
    
    FlashDownload_Init(0);
    return UDS_DL_OK;
}

static uds_dl_result_t dl_fw_on_request_download(uint32_t address, uint32_t size)
{
    return dl_convert_fw_result(FlashDownload_OnRequestDownload(address, size));
}

static uds_dl_result_t dl_fw_on_transfer_data(uint8_t block_sequence_number,
                                                const uint8_t* data,
                                                uint16_t len)
{
     
    return dl_convert_fw_result(
        FlashDownload_OnTransferData(block_sequence_number,
                                      (uint8_t*)data,
                                      len));
}

static uds_dl_result_t dl_fw_on_transfer_exit(void)
{
    return dl_convert_fw_result(FlashDownload_OnTransferExit());
}

static uds_dl_result_t dl_fw_erase(uint32_t address, uint32_t size)
{
    return dl_convert_fw_result(FlashDownload_Erase(address, size));
}

static uds_dl_result_t dl_fw_calculate_crc(uint32_t address, uint32_t size,
                                             uint32_t* crc_result)
{
    return dl_convert_fw_result(
        FlashDownload_CalculateCRC(address, size, crc_result));
}

static uds_dl_state_t dl_fw_get_state(void)
{
    return dl_convert_fw_state(FlashDownload_GetState());
}

static void dl_fw_get_progress(uds_dl_progress_t* progress)
{
    FlashDownloadProgress_t fw_progress;
    FlashDownload_GetProgress(&fw_progress);
    
    if (progress != 0)
    {
        progress->total_size = fw_progress.total_size;
        progress->received_size = fw_progress.received_size;
        progress->target_address = fw_progress.target_address;
        progress->progress_percent = fw_progress.progress_percent;
    }
}

static uds_dl_result_t dl_fw_get_last_error(void)
{
    return dl_convert_fw_result(FlashDownload_GetLastError());
}

static void dl_fw_cancel(void)
{
    FlashDownload_Cancel();
}

static void dl_fw_reset(void)
{
    FlashDownload_Reset();
}

static void dl_fw_task(void)
{
    FlashDownload_Task();
}

static _Bool dl_fw_is_pending(void)
{
    return FlashDownload_IsPending();
}

static _Bool dl_fw_read_did(uint16_t did, uint32_t* value)
{
    if (value == 0) return 0;
    
    switch (did)
    {
        case 0xF000:  
            *value = FlashDownload_GetFirmwareVersion();
            return 1;
            
        case 0xF001:  
            *value = FlashDownload_GetBootloaderVersion();
            return 1;
            
        case 0xF002:  
            *value = FlashDownload_GetFirmwareCRC();
            return 1;
            
        default:
            return 0;
    }
}

 
static const uds_dl_if_t g_firmware_download_iface = {
    .init                = dl_fw_init,
    .on_request_download = dl_fw_on_request_download,
    .on_transfer_data    = dl_fw_on_transfer_data,
    .on_transfer_exit    = dl_fw_on_transfer_exit,
    .erase               = dl_fw_erase,
    .calculate_crc       = dl_fw_calculate_crc,
    .get_state           = dl_fw_get_state,
    .get_progress        = dl_fw_get_progress,
    .get_last_error      = dl_fw_get_last_error,
    .cancel              = dl_fw_cancel,
    .reset               = dl_fw_reset,
    .task                = dl_fw_task,
    .is_pending          = dl_fw_is_pending,
    .read_did            = dl_fw_read_did,
};

 

void uds_dl_register(const uds_dl_if_t* iface)
{
    if (iface != 0)
    {
        g_dl_iface = iface;
        SEGGER_RTT_printf(LOG_CH_MAIN, "\033[32m" "[%s] " "Download interface registered" "\033[0m" "\r\n", "DL");
    }
}

const uds_dl_if_t* uds_dl_get_if(void)
{
    return g_dl_iface;
}

_Bool uds_dl_is_registered(void)
{
    return (g_dl_iface != 0);
}




 
void uds_dl_init_fw(void)
{
    SEGGER_RTT_printf(LOG_CH_MAIN, "\033[32m" "[%s] " "=== Firmware Download Interface Init ===" "\033[0m" "\r\n", "DL");
    uds_dl_register(&g_firmware_download_iface);
    SEGGER_RTT_printf(LOG_CH_MAIN, "\033[32m" "[%s] " "=== Firmware Download Interface Init Done ===" "\033[0m" "\r\n", "DL");
}
