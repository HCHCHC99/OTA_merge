#line 1 "..\\..\\Utils\\TickTimer.c"
#line 1 "..\\..\\Utils\\TickTimer.h"



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






 
#line 5 "..\\..\\Utils\\TickTimer.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



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

#line 2 "..\\..\\Utils\\TickTimer.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 3 "..\\..\\Utils\\TickTimer.c"

static volatile uint64_t s_tickCount = 0;
static uint64_t s_lastCallTick = 0;


void tickTimer_Init(void)
{
    s_tickCount = 0;
    s_lastCallTick = tickTimer_GetCount(); 
}


uint64_t tickTimer_GetRawTick(void) {
    uint64_t tick;
    
    tick = s_tickCount;
    
    return tick;
}


uint64_t tickTimer_GetCount(void)
{
    uint64_t tick;
    
    tick = s_tickCount;
    
    return tick;
}


void tickTimer_DelayMs(uint64_t ms)
{
    uint64_t startTick = tickTimer_GetCount();
    while ((tickTimer_GetCount() - startTick) < ms);
}


__attribute__((section(".ramfunc"))) void tickTimer_Update(void)
{
    s_tickCount++;
}



void nbDelay_Init(NonBlockingDelay_t* delayObj, uint64_t delayMs) {
    
    if (delayObj == 0) {
        return;  
    }

    
    delayObj->startTick = 0;
    delayObj->delayMs = delayMs;
    delayObj->isRunning = 0;
}

void nbDelay_Start(NonBlockingDelay_t* delayObj)
{
    delayObj->startTick = tickTimer_GetCount();
    delayObj->isRunning = 1;
}

_Bool nbDelay_IsComplete(NonBlockingDelay_t* delayObj)
{
    if (!delayObj->isRunning) {
        return 0;
    }
    
    uint64_t currentTick = tickTimer_GetCount();
    uint64_t elapsed = currentTick - delayObj->startTick;
    
    if (elapsed >= delayObj->delayMs) {
        delayObj->isRunning = 0;
        return 1;
    }
    
    return 0;
}


_Bool nbDelay_IsComplete_noclose(NonBlockingDelay_t* delayObj)
{
    if (!delayObj->isRunning) {
        return 0;
    }
    
    uint64_t currentTick = tickTimer_GetCount();
    uint64_t elapsed = currentTick - delayObj->startTick;
    
    
    return (elapsed >= delayObj->delayMs);
}

void nbDelay_Stop(NonBlockingDelay_t* delayObj)
{
    delayObj->isRunning = 0;
}

void nbDelay_SetTime(NonBlockingDelay_t* delayObj, uint64_t delayMs) {
    if (delayObj == 0) {
        return;
    }

    delayObj->delayMs = delayMs;
}


uint64_t tickTimer_GetElapsedSinceLastCall(void)
{
    uint64_t currentTick;
    uint64_t elapsed;
    
    
    currentTick = s_tickCount;  
    elapsed = currentTick - s_lastCallTick;
    s_lastCallTick = currentTick;
    
    
    return elapsed;
}
