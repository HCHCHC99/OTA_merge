#line 1 "..\\..\\Utils\\msg_queue.c"
#line 1 "..\\..\\Utils\\msg_queue.h"



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






 
#line 5 "..\\..\\Utils\\msg_queue.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 6 "..\\..\\Utils\\msg_queue.h"
#line 1 "..\\..\\Utils\\lock.h"



#line 5 "..\\..\\Utils\\lock.h"
#line 6 "..\\..\\Utils\\lock.h"
#line 1 "..\\..\\Utils\\rtt_manager.h"



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

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
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
   




 
#line 436 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
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











#line 892 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 281 "..\\..\\RTT\\SEGGER_RTT.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"



#line 147 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

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

















































#line 5 "..\\..\\Utils\\rtt_manager.h"
#line 1 "..\\..\\Utils\\TickTimer.h"



#line 5 "..\\..\\Utils\\TickTimer.h"
#line 6 "..\\..\\Utils\\TickTimer.h"



typedef struct {
    uint64_t startTick;   
    uint64_t delayMs;     
    _Bool isRunning;       
} NonBlockingDelay_t;


void tickTimer_Init(void);


uint64_t tickTimer_GetCount(void);


void tickTimer_DelayMs(uint64_t ms);



void tickTimer_Update(void);




void nbDelay_Init(NonBlockingDelay_t* delayObj, uint64_t delayMs);


void nbDelay_Start(NonBlockingDelay_t* delayObj);



_Bool nbDelay_IsComplete(NonBlockingDelay_t* delayObj);


_Bool nbDelay_IsComplete_noclose(NonBlockingDelay_t* delayObj);


void nbDelay_Stop(NonBlockingDelay_t* delayObj);


void nbDelay_SetTime(NonBlockingDelay_t* delayObj, uint64_t delayMs);


uint64_t tickTimer_GetElapsedSinceLastCall(void);

uint64_t tickTimer_GetRawTick(void);

#line 6 "..\\..\\Utils\\rtt_manager.h"
#line 7 "..\\..\\Utils\\rtt_manager.h"
#line 8 "..\\..\\Utils\\rtt_manager.h"
#line 9 "..\\..\\Utils\\rtt_manager.h"














 



 

 




 














 









 

















 













typedef struct {
    NonBlockingDelay_t delay;
    uint32_t intervalMs;
    uint32_t skippedCount;
} RTT_IntervalPrinter_t;



#line 115 "..\\..\\Utils\\rtt_manager.h"

void _rtt_interval_print(RTT_IntervalPrinter_t* printer, const char* format, va_list args);


uint32_t RTT_GetSkippedCount(RTT_IntervalPrinter_t* printer);


void RTT_ClearSkippedCount(RTT_IntervalPrinter_t* printer);




#line 7 "..\\..\\Utils\\lock.h"




 
























 
typedef enum {
    LOCK_TYPE_MUTEX = 0,     
    LOCK_TYPE_SPIN = 1,      
    LOCK_TYPE_RECURSIVE = 2  
} lock_type_t;

 
typedef enum {
    LOCK_FREE = 0,
    LOCK_BUSY = 1
} lock_state_t;

 
typedef struct {
    volatile lock_state_t state;
    volatile uint32_t owner_task;
    volatile uint32_t lock_count;
    volatile uint32_t wait_count;
    lock_type_t type;
    uint32_t lock_time;       
} mutex_t;

 
void Lock_Init(mutex_t *lock, lock_type_t type, const char *name);

 
_Bool Lock_TryLock(mutex_t *lock, const char *caller);

 
_Bool Lock_Lock(mutex_t *lock, uint32_t timeoutMs, const char *caller);

 
void Lock_Unlock(mutex_t *lock, const char *caller);

 
_Bool Lock_IsLocked(mutex_t *lock);

 
uint32_t Lock_GetWaitCount(mutex_t *lock);

#line 7 "..\\..\\Utils\\msg_queue.h"
#line 8 "..\\..\\Utils\\msg_queue.h"




 
























 
typedef enum {
    MSG_PRIO_URGENT = 0,
    MSG_PRIO_HIGH = 1,
    MSG_PRIO_NORMAL = 2,
    MSG_PRIO_LOW = 3
} msg_prio_t;

 
typedef struct {
    msg_prio_t priority;
    uint16_t type;
    uint16_t len;
    uint32_t timestamp;
    uint8_t *data;
    uint8_t buffer[256];
    void (*callback)(void*);
    void *callback_arg;
} msg_t;

 
typedef struct {
    uint16_t max_size;
    _Bool overwrite;
    _Bool priority_enabled;
    uint16_t timeout_ms;
} queue_config_t;

 
typedef struct {
    uint16_t total_enqueued;
    uint16_t total_dequeued;
    uint16_t total_dropped;
    uint16_t max_usage;
    uint16_t overflow_count;
} queue_stats_t;

 
typedef struct {
    msg_t *buffer;
    uint16_t size;
    volatile uint16_t head;
    volatile uint16_t tail;
    volatile uint16_t count;
    queue_config_t config;
    queue_stats_t stats;
    mutex_t lock;
    char name[32];            
} msg_queue_t;

 
void MsgQueue_Init(msg_queue_t *queue, msg_t *buffer, uint16_t size, queue_config_t *config, const char *name);

 
_Bool MsgQueue_Send(msg_queue_t *queue, msg_t *msg, _Bool blocking, const char *caller);

 
_Bool MsgQueue_SendUrgent(msg_queue_t *queue, msg_t *msg, const char *caller);

 
_Bool MsgQueue_Receive(msg_queue_t *queue, msg_t *msg, uint32_t timeoutMs, const char *caller);

 
_Bool MsgQueue_Peek(msg_queue_t *queue, msg_t *msg);

 
uint16_t MsgQueue_GetCount(msg_queue_t *queue);

 
void MsgQueue_GetStats(msg_queue_t *queue, queue_stats_t *stats);

 
void MsgQueue_Clear(msg_queue_t *queue);

 
uint16_t MsgQueue_DeleteByType(msg_queue_t *queue, uint16_t type);

 
_Bool MsgQueue_WaitNotEmpty(msg_queue_t *queue, uint32_t timeoutMs);

#line 2 "..\\..\\Utils\\msg_queue.c"
#line 3 "..\\..\\Utils\\msg_queue.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




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
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
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
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 4 "..\\..\\Utils\\msg_queue.c"

 
static const char* GetPriorityStr(msg_prio_t priority)
{
    switch(priority) {
        case MSG_PRIO_URGENT: return "URGENT";
        case MSG_PRIO_HIGH:   return "HIGH";
        case MSG_PRIO_NORMAL: return "NORMAL";
        case MSG_PRIO_LOW:    return "LOW";
        default:              return "UNKNOWN";
    }
}

void MsgQueue_Init(msg_queue_t *queue, msg_t *buffer, uint16_t size, queue_config_t *config, const char *name)
{
    if (queue == 0 || buffer == 0) return;
    
    queue->buffer = buffer;
    queue->size = size;
    queue->head = 0;
    queue->tail = 0;
    queue->count = 0;
    
    if (name != 0 && strlen(name) < sizeof(queue->name)) {
        strcpy((char*)queue->name, name);
    } else {
        strcpy((char*)queue->name, "unknown");
    }
    
    if (config != 0) {
        queue->config = *config;
    } else {
        queue->config.max_size = size;
        queue->config.overwrite = 0;
        queue->config.priority_enabled = 0;
        queue->config.timeout_ms = 0;
    }
    
    memset(&queue->stats, 0, sizeof(queue_stats_t));
    Lock_Init(&queue->lock, LOCK_TYPE_MUTEX, queue->name);
    
    ((void)0);

}

 
static _Bool EnqueueInternal(msg_queue_t *queue, msg_t *msg)
{
    uint16_t pos;
    
    if (queue->count >= queue->size) {
        queue->stats.overflow_count++;
        
        ((void)0);

        
        if (!queue->config.overwrite) {
            ((void)0);
            return 0;
        }
        
        ((void)0);
        queue->head = (queue->head + 1) % queue->size;
        queue->count--;
    }
    
     
    if (queue->config.priority_enabled && queue->count > 0) {
        uint16_t i;
        _Bool inserted = 0;
        
        for (i = 0; i < queue->count; i++) {
            pos = (queue->tail - 1 - i + queue->size) % queue->size;
            if (queue->buffer[pos].priority <= msg->priority) {
                memmove(&queue->buffer[(pos + 2) % queue->size], 
                       &queue->buffer[(pos + 1) % queue->size],
                       (queue->count - i) * sizeof(msg_t));
                queue->tail = (queue->tail + 1) % queue->size;
                pos = (pos + 1) % queue->size;
                inserted = 1;
                ((void)0);
                break;
            }
        }
        
        if (!inserted) {
            pos = queue->tail;
            queue->tail = (queue->tail + 1) % queue->size;
        }
    } else {
        pos = queue->tail;
        queue->tail = (queue->tail + 1) % queue->size;
    }
    
    memcpy(&queue->buffer[pos], msg, sizeof(msg_t));
    queue->buffer[pos].timestamp = tickTimer_GetCount();
    queue->count++;
    
    ((void)0);


    
    return 1;
}

_Bool MsgQueue_Send(msg_queue_t *queue, msg_t *msg, _Bool blocking, const char *caller)
{
    uint64_t startTick = 0;
    _Bool result = 0;
    
    if (queue == 0 || msg == 0) {
        ((void)0);
        return 0;
    }
    
    ((void)0);


    
    if (blocking) {
        startTick = tickTimer_GetCount();
    }
    
    while (1) {
        Lock_Lock(&queue->lock, 100, "MsgQueue_Send");
        
        result = EnqueueInternal(queue, msg);
        
        Lock_Unlock(&queue->lock, "MsgQueue_Send");
        
        if (result) {
            queue->stats.total_enqueued++;
            if (queue->count > queue->stats.max_usage) {
                queue->stats.max_usage = queue->count;
                ((void)0);
            }
            ((void)0);

            return 1;
        }
        
        if (!blocking) {
            queue->stats.total_dropped++;
            ((void)0);

            return 0;
        }
        
        if (queue->config.timeout_ms > 0) {
            if ((tickTimer_GetCount() - startTick) >= queue->config.timeout_ms) {
                ((void)0);

                return 0;
            }
        }
        
        for (volatile int i = 0; i < 100; i++);
    }
}

_Bool MsgQueue_SendUrgent(msg_queue_t *queue, msg_t *msg, const char *caller)
{
    _Bool result;
    _Bool prio_enabled;
    
    if (queue == 0 || msg == 0) return 0;
    
    ((void)0);

    
    Lock_Lock(&queue->lock, 100, "MsgQueue_SendUrgent");
    
    prio_enabled = queue->config.priority_enabled;
    queue->config.priority_enabled = 1;
    msg->priority = MSG_PRIO_URGENT;
    
    result = EnqueueInternal(queue, msg);
    
    queue->config.priority_enabled = prio_enabled;
    
    Lock_Unlock(&queue->lock, "MsgQueue_SendUrgent");
    
    if (result) {
        queue->stats.total_enqueued++;
        ((void)0);
    } else {
        queue->stats.total_dropped++;
        ((void)0);

    }
    
    return result;
}

_Bool MsgQueue_Receive(msg_queue_t *queue, msg_t *msg, uint32_t timeoutMs, const char *caller)
{
    uint64_t startTick;
    
    if (queue == 0 || msg == 0) return 0;
    
    ((void)0);

    
    startTick = tickTimer_GetCount();
    
    while (1) {
        Lock_Lock(&queue->lock, 100, "MsgQueue_Receive");
        
        if (queue->count > 0) {
            memcpy(msg, &queue->buffer[queue->head], sizeof(msg_t));
            uint16_t old_head = queue->head;
            queue->head = (queue->head + 1) % queue->size;
            queue->count--;
            Lock_Unlock(&queue->lock, "MsgQueue_Receive");
            
            queue->stats.total_dequeued++;
            
            ((void)0);


            return 1;
        }
        
        Lock_Unlock(&queue->lock, "MsgQueue_Receive");
        
        if (timeoutMs == 0) {
            ((void)0);

            return 0;
        }
        
        if ((tickTimer_GetCount() - startTick) >= timeoutMs) {
            ((void)0);

            return 0;
        }
        
        for (volatile int i = 0; i < 100; i++);
    }
}

_Bool MsgQueue_Peek(msg_queue_t *queue, msg_t *msg)
{
    if (queue == 0 || msg == 0) return 0;
    
    Lock_Lock(&queue->lock, 100, "MsgQueue_Peek");
    
    if (queue->count == 0) {
        Lock_Unlock(&queue->lock, "MsgQueue_Peek");
        ((void)0);
        return 0;
    }
    
    memcpy(msg, &queue->buffer[queue->head], sizeof(msg_t));
    
    Lock_Unlock(&queue->lock, "MsgQueue_Peek");
    
    ((void)0);
    return 1;
}

uint16_t MsgQueue_GetCount(msg_queue_t *queue)
{
    uint16_t count;
    
    if (queue == 0) return 0;
    
    Lock_Lock(&queue->lock, 100, "MsgQueue_GetCount");
    count = queue->count;
    Lock_Unlock(&queue->lock, "MsgQueue_GetCount");
    
    return count;
}

void MsgQueue_GetStats(msg_queue_t *queue, queue_stats_t *stats)
{
    if (queue == 0 || stats == 0) return;
    
    Lock_Lock(&queue->lock, 100, "MsgQueue_GetStats");
    memcpy(stats, &queue->stats, sizeof(queue_stats_t));
    Lock_Unlock(&queue->lock, "MsgQueue_GetStats");
    
    ((void)0);


}

void MsgQueue_Clear(msg_queue_t *queue)
{
    if (queue == 0) return;
    
    ((void)0);
    
    Lock_Lock(&queue->lock, 100, "MsgQueue_Clear");
    queue->head = 0;
    queue->tail = 0;
    queue->count = 0;
    Lock_Unlock(&queue->lock, "MsgQueue_Clear");
}

uint16_t MsgQueue_DeleteByType(msg_queue_t *queue, uint16_t type)
{
    uint16_t deleted = 0;
    uint16_t i, new_tail;
    msg_t temp_buffer[256];
    
    if (queue == 0) return 0;
    
    ((void)0);
    
    Lock_Lock(&queue->lock, 100, "MsgQueue_DeleteByType");
    
    new_tail = 0;
    for (i = 0; i < queue->count; i++) {
        uint16_t idx = (queue->head + i) % queue->size;
        if (queue->buffer[idx].type != type) {
            memcpy(&temp_buffer[new_tail++], &queue->buffer[idx], sizeof(msg_t));
        } else {
            deleted++;
        }
    }
    
    for (i = 0; i < new_tail; i++) {
        memcpy(&queue->buffer[i], &temp_buffer[i], sizeof(msg_t));
    }
    
    queue->head = 0;
    queue->tail = new_tail;
    queue->count = new_tail;
    
    Lock_Unlock(&queue->lock, "MsgQueue_DeleteByType");
    
    ((void)0);

    return deleted;
}

_Bool MsgQueue_WaitNotEmpty(msg_queue_t *queue, uint32_t timeoutMs)
{
    uint64_t startTick;
    
    if (queue == 0) return 0;
    
    ((void)0);
    
    startTick = tickTimer_GetCount();
    
    while (MsgQueue_GetCount(queue) == 0) {
        if (timeoutMs > 0 && (tickTimer_GetCount() - startTick) >= timeoutMs) {
            ((void)0);
            return 0;
        }
        for (volatile int i = 0; i < 100; i++);
    }
    
    ((void)0);

    return 1;
}
