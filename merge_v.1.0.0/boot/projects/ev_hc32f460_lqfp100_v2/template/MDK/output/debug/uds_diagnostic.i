#line 1 "..\\..\\UDS\\uds_diagnostic.c"






 
#line 1 "..\\..\\UDS\\uds_diagnostic.h"






 



 
#line 1 "..\\..\\UDS\\common.h"







 

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





 
#line 11 "..\\..\\UDS\\common.h"
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



 

#line 12 "..\\..\\UDS\\common.h"
#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"



#line 147 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

#line 13 "..\\..\\UDS\\common.h"
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






 
#line 14 "..\\..\\UDS\\common.h"
#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 15 "..\\..\\UDS\\common.h"
#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 16 "..\\..\\UDS\\common.h"
#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 17 "..\\..\\UDS\\common.h"
#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"




 





 












 






   









 






#line 61 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 75 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   




 















 
#line 112 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 230 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 251 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"



extern const int math_errhandling;
#line 261 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    inline double _sqrt(double __x) { return sqrt(__x); }


    inline float _sqrtf(float __x) { return __sqrtf(__x); }



    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 479 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );






 
extern __declspec(__nothrow) double exp2(double  );  
extern __declspec(__nothrow) float exp2f(float  );
__declspec(__nothrow) long double exp2l(long double );
extern __declspec(__nothrow) double fdim(double  , double  );
extern __declspec(__nothrow) float fdimf(float  , float  );
__declspec(__nothrow) long double fdiml(long double , long double );
#line 803 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"
extern __declspec(__nothrow) double fma(double  , double  , double  );
extern __declspec(__nothrow) float fmaf(float  , float  , float  );

inline __declspec(__nothrow) long double fmal(long double __x, long double __y, long double __z)     { return (long double)fma((double)__x, (double)__y, (double)__z); }


extern __declspec(__nothrow) __attribute__((const)) double fmax(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fmaxf(float  , float  );
__declspec(__nothrow) long double fmaxl(long double , long double );
extern __declspec(__nothrow) __attribute__((const)) double fmin(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fminf(float  , float  );
__declspec(__nothrow) long double fminl(long double , long double );
extern __declspec(__nothrow) double log2(double  );  
extern __declspec(__nothrow) float log2f(float  );
__declspec(__nothrow) long double log2l(long double );
extern __declspec(__nothrow) long lrint(double  );
extern __declspec(__nothrow) long lrintf(float  );

inline __declspec(__nothrow) long lrintl(long double __x)     { return lrint((double)__x); }


extern __declspec(__nothrow) long long llrint(double  );
extern __declspec(__nothrow) long long llrintf(float  );

inline __declspec(__nothrow) long long llrintl(long double __x)     { return llrint((double)__x); }


extern __declspec(__nothrow) long lround(double  );
extern __declspec(__nothrow) long lroundf(float  );

inline __declspec(__nothrow) long lroundl(long double __x)     { return lround((double)__x); }


extern __declspec(__nothrow) long long llround(double  );
extern __declspec(__nothrow) long long llroundf(float  );

inline __declspec(__nothrow) long long llroundl(long double __x)     { return llround((double)__x); }


extern __declspec(__nothrow) __attribute__((const)) double nan(const char *  );
extern __declspec(__nothrow) __attribute__((const)) float nanf(const char *  );

inline __declspec(__nothrow) __attribute__((const)) long double nanl(const char *__t)     { return (long double)nan(__t); }
#line 856 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"
extern __declspec(__nothrow) __attribute__((const)) double nearbyint(double  );
extern __declspec(__nothrow) __attribute__((const)) float nearbyintf(float  );
__declspec(__nothrow) long double nearbyintl(long double );
extern  double remquo(double  , double  , int *  );
extern  float remquof(float  , float  , int *  );

inline long double remquol(long double __x, long double __y, int *__q)     { return (long double)remquo((double)__x, (double)__y, __q); }


extern __declspec(__nothrow) __attribute__((const)) double round(double  );
extern __declspec(__nothrow) __attribute__((const)) float roundf(float  );
__declspec(__nothrow) long double roundl(long double );
extern __declspec(__nothrow) double tgamma(double  );  
extern __declspec(__nothrow) float tgammaf(float  );
__declspec(__nothrow) long double tgammal(long double );
extern __declspec(__nothrow) __attribute__((const)) double trunc(double  );
extern __declspec(__nothrow) __attribute__((const)) float truncf(float  );
__declspec(__nothrow) long double truncl(long double );






#line 896 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 1087 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











#line 1317 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





 
#line 18 "..\\..\\UDS\\common.h"
#line 1 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\assert.h"
 
 
 
 





 









 





 

#line 43 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\assert.h"
    extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
    extern __declspec(__nothrow) __declspec(__noreturn) void __aeabi_assert(const char *, const char *, int) __attribute__((__nonnull__(1,2)));
#line 53 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\assert.h"

#line 77 "F:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\assert.h"





 

#line 19 "..\\..\\UDS\\common.h"

 
#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"






















 



 







 
#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_def.h"

























 



 







 
#line 40 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_def.h"
#line 41 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_def.h"




 



 



 



 
typedef float float32_t;



 
typedef double float64_t;



 
typedef void (*func_ptr_t)(void);



 
typedef enum {
    DISABLE = 0U,
    ENABLE  = 1U,
} en_functional_state_t;



 
typedef enum {
    RESET = 0U,
    SET   = 1U,
} en_flag_status_t, en_int_status_t;


 



 



 




 








#line 187 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_def.h"



 



 
#pragma diag_suppress 1296





 




 
 


 


 


 


 



 




 

 





 





 



 




 







 




 
#line 276 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_def.h"


 




 




 




 
#line 326 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_def.h"


 




 








































 



 



 



 



 









 
#line 37 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"

#line 1 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f4xx.h"


















 



 







 


 

#line 1 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"






















 










 








 
typedef enum {
    NMI_IRQn                    = -14,   
    HardFault_IRQn              = -13,   
    MemManageFault_IRQn         = -12,   
    BusFault_IRQn               = -11,   
    UsageFault_IRQn             = -10,   
    SVC_IRQn                    = -5,    
    DebugMonitor_IRQn           = -4,    
    PendSV_IRQn                 = -2,    
    SysTick_IRQn                = -1,    
    INT000_IRQn                 = 0,
    INT001_IRQn                 = 1,
    INT002_IRQn                 = 2,
    INT003_IRQn                 = 3,
    INT004_IRQn                 = 4,
    INT005_IRQn                 = 5,
    INT006_IRQn                 = 6,
    INT007_IRQn                 = 7,
    INT008_IRQn                 = 8,
    INT009_IRQn                 = 9,
    INT010_IRQn                 = 10,
    INT011_IRQn                 = 11,
    INT012_IRQn                 = 12,
    INT013_IRQn                 = 13,
    INT014_IRQn                 = 14,
    INT015_IRQn                 = 15,
    INT016_IRQn                 = 16,
    INT017_IRQn                 = 17,
    INT018_IRQn                 = 18,
    INT019_IRQn                 = 19,
    INT020_IRQn                 = 20,
    INT021_IRQn                 = 21,
    INT022_IRQn                 = 22,
    INT023_IRQn                 = 23,
    INT024_IRQn                 = 24,
    INT025_IRQn                 = 25,
    INT026_IRQn                 = 26,
    INT027_IRQn                 = 27,
    INT028_IRQn                 = 28,
    INT029_IRQn                 = 29,
    INT030_IRQn                 = 30,
    INT031_IRQn                 = 31,
    INT032_IRQn                 = 32,
    INT033_IRQn                 = 33,
    INT034_IRQn                 = 34,
    INT035_IRQn                 = 35,
    INT036_IRQn                 = 36,
    INT037_IRQn                 = 37,
    INT038_IRQn                 = 38,
    INT039_IRQn                 = 39,
    INT040_IRQn                 = 40,
    INT041_IRQn                 = 41,
    INT042_IRQn                 = 42,
    INT043_IRQn                 = 43,
    INT044_IRQn                 = 44,
    INT045_IRQn                 = 45,
    INT046_IRQn                 = 46,
    INT047_IRQn                 = 47,
    INT048_IRQn                 = 48,
    INT049_IRQn                 = 49,
    INT050_IRQn                 = 50,
    INT051_IRQn                 = 51,
    INT052_IRQn                 = 52,
    INT053_IRQn                 = 53,
    INT054_IRQn                 = 54,
    INT055_IRQn                 = 55,
    INT056_IRQn                 = 56,
    INT057_IRQn                 = 57,
    INT058_IRQn                 = 58,
    INT059_IRQn                 = 59,
    INT060_IRQn                 = 60,
    INT061_IRQn                 = 61,
    INT062_IRQn                 = 62,
    INT063_IRQn                 = 63,
    INT064_IRQn                 = 64,
    INT065_IRQn                 = 65,
    INT066_IRQn                 = 66,
    INT067_IRQn                 = 67,
    INT068_IRQn                 = 68,
    INT069_IRQn                 = 69,
    INT070_IRQn                 = 70,
    INT071_IRQn                 = 71,
    INT072_IRQn                 = 72,
    INT073_IRQn                 = 73,
    INT074_IRQn                 = 74,
    INT075_IRQn                 = 75,
    INT076_IRQn                 = 76,
    INT077_IRQn                 = 77,
    INT078_IRQn                 = 78,
    INT079_IRQn                 = 79,
    INT080_IRQn                 = 80,
    INT081_IRQn                 = 81,
    INT082_IRQn                 = 82,
    INT083_IRQn                 = 83,
    INT084_IRQn                 = 84,
    INT085_IRQn                 = 85,
    INT086_IRQn                 = 86,
    INT087_IRQn                 = 87,
    INT088_IRQn                 = 88,
    INT089_IRQn                 = 89,
    INT090_IRQn                 = 90,
    INT091_IRQn                 = 91,
    INT092_IRQn                 = 92,
    INT093_IRQn                 = 93,
    INT094_IRQn                 = 94,
    INT095_IRQn                 = 95,
    INT096_IRQn                 = 96,
    INT097_IRQn                 = 97,
    INT098_IRQn                 = 98,
    INT099_IRQn                 = 99,
    INT100_IRQn                 = 100,
    INT101_IRQn                 = 101,
    INT102_IRQn                 = 102,
    INT103_IRQn                 = 103,
    INT104_IRQn                 = 104,
    INT105_IRQn                 = 105,
    INT106_IRQn                 = 106,
    INT107_IRQn                 = 107,
    INT108_IRQn                 = 108,
    INT109_IRQn                 = 109,
    INT110_IRQn                 = 110,
    INT111_IRQn                 = 111,
    INT112_IRQn                 = 112,
    INT113_IRQn                 = 113,
    INT114_IRQn                 = 114,
    INT115_IRQn                 = 115,
    INT116_IRQn                 = 116,
    INT117_IRQn                 = 117,
    INT118_IRQn                 = 118,
    INT119_IRQn                 = 119,
    INT120_IRQn                 = 120,
    INT121_IRQn                 = 121,
    INT122_IRQn                 = 122,
    INT123_IRQn                 = 123,
    INT124_IRQn                 = 124,
    INT125_IRQn                 = 125,
    INT126_IRQn                 = 126,
    INT127_IRQn                 = 127,
    INT128_IRQn                 = 128,
    INT129_IRQn                 = 129,
    INT130_IRQn                 = 130,
    INT131_IRQn                 = 131,
    INT132_IRQn                 = 132,
    INT133_IRQn                 = 133,
    INT134_IRQn                 = 134,
    INT135_IRQn                 = 135,
    INT136_IRQn                 = 136,
    INT137_IRQn                 = 137,
    INT138_IRQn                 = 138,
    INT139_IRQn                 = 139,
    INT140_IRQn                 = 140,
    INT141_IRQn                 = 141,
    INT142_IRQn                 = 142,
    INT143_IRQn                 = 143,

} IRQn_Type;

#line 1 "../../../../drivers/cmsis/Include/core_cm4.h"
 




 
















 










#line 35 "../../../../drivers/cmsis/Include/core_cm4.h"

















 




 



 

#line 1 "../../../../drivers/cmsis/Include/cmsis_version.h"
 




 
















 










 
#line 64 "../../../../drivers/cmsis/Include/core_cm4.h"

 









 
#line 87 "../../../../drivers/cmsis/Include/core_cm4.h"

#line 161 "../../../../drivers/cmsis/Include/core_cm4.h"

#line 1 "../../../../drivers/cmsis/Include/cmsis_compiler.h"
 




 
















 




#line 29 "../../../../drivers/cmsis/Include/cmsis_compiler.h"



 
#line 1 "../../../../drivers/cmsis/Include/cmsis_armcc.h"
 




 
















 









 













   
   
   

 




 
#line 111 "../../../../drivers/cmsis/Include/cmsis_armcc.h"

 





















 



 





 
 






 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}









 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1U);
}









 
static __inline uint32_t __get_FPSCR(void)
{


  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}






 
static __inline void __set_FPSCR(uint32_t fpscr)
{


  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);



}


 


 



 




 






 







 






 








 






 






 


                  





 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int16_t __REVSH(int16_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
#line 550 "../../../../drivers/cmsis/Include/cmsis_armcc.h"







 











 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 


#line 798 "../../../../drivers/cmsis/Include/cmsis_armcc.h"

   


 



 



#line 869 "../../../../drivers/cmsis/Include/cmsis_armcc.h"













 


#line 35 "../../../../drivers/cmsis/Include/cmsis_compiler.h"




 
#line 280 "../../../../drivers/cmsis/Include/cmsis_compiler.h"




#line 163 "../../../../drivers/cmsis/Include/core_cm4.h"

















 
#line 212 "../../../../drivers/cmsis/Include/core_cm4.h"

 






 
#line 228 "../../../../drivers/cmsis/Include/core_cm4.h"

 




 













 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 





















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:1;                
    uint32_t ICI_IT_1:6;                  
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                
    uint32_t T:1;                         
    uint32_t ICI_IT_2:2;                  
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 

































 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 









 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RESERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 



 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 


















 





















 


















 









 















 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    
  volatile uint32_t ACTLR;                   
} SCnSCB_Type;

 



 















 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[32U];
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 



 



























 









   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   







 



 
typedef struct
{
  volatile const  uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 



 



 












 






 



 





















 






 





















 






 



 


















 






   








 



 
typedef struct
{
  volatile const  uint32_t TYPE;                    
  volatile uint32_t CTRL;                    
  volatile uint32_t RNR;                     
  volatile uint32_t RBAR;                    
  volatile uint32_t RASR;                    
  volatile uint32_t RBAR_A1;                 
  volatile uint32_t RASR_A1;                 
  volatile uint32_t RBAR_A2;                 
  volatile uint32_t RASR_A2;                 
  volatile uint32_t RBAR_A3;                 
  volatile uint32_t RASR_A3;                 
} MPU_Type;



 









 









 



 









 






























 








 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;                   
  volatile uint32_t FPCAR;                   
  volatile uint32_t FPDSCR;                  
  volatile const  uint32_t MVFR0;                   
  volatile const  uint32_t MVFR1;                   
  volatile const  uint32_t MVFR2;                   
} FPU_Type;

 



























 



 












 
























 












 




 







 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 




































 






 







































 







 






 







 


 







 

 
#line 1558 "../../../../drivers/cmsis/Include/core_cm4.h"

#line 1567 "../../../../drivers/cmsis/Include/core_cm4.h"









 










 


 



 





 

#line 1621 "../../../../drivers/cmsis/Include/core_cm4.h"

#line 1631 "../../../../drivers/cmsis/Include/core_cm4.h"




 
#line 1642 "../../../../drivers/cmsis/Include/core_cm4.h"










 
static __inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U)  );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static __inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}







 
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    __memory_changed();
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __memory_changed();
  }
}









 
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __dsb(0xF);
    __isb(0xF);
  }
}









 
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}







 
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}










 
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - 4)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4)) & (uint32_t)0xFFUL);
  }
}










 
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               >> (8U - 4)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4)));
  }
}












 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}










 
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;
   
}









 
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];
}





 
__declspec(noreturn) static __inline void __NVIC_SystemReset(void)
{
  __dsb(0xF);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  __dsb(0xF);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 


 



#line 1 "../../../../drivers/cmsis/Include/mpu_armv7.h"





 
















 
 





 



#line 62 "../../../../drivers/cmsis/Include/mpu_armv7.h"

#line 69 "../../../../drivers/cmsis/Include/mpu_armv7.h"





 












   














 
#line 110 "../../../../drivers/cmsis/Include/mpu_armv7.h"












                          









  










  












  




 




 




 




 





 
typedef struct {
  uint32_t RBAR; 
  uint32_t RASR; 
} ARM_MPU_Region_t;
    


 
static __inline void ARM_MPU_Enable(uint32_t MPU_Control)
{
  __dmb(0xF);
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL = MPU_Control | (1UL );

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR |= (1UL << 16U);

  __dsb(0xF);
  __isb(0xF);
}


 
static __inline void ARM_MPU_Disable(void)
{
  __dmb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR &= ~(1UL << 16U);

  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL  &= ~(1UL );
  __dsb(0xF);
  __isb(0xF);
}



 
static __inline void ARM_MPU_ClrRegion(uint32_t rnr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = 0U;
}




    
static __inline void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}





    
static __inline void ARM_MPU_SetRegionEx(uint32_t rnr, uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}





 
static __inline void ARM_MPU_OrderedMemcpy(volatile uint32_t* dst, const uint32_t* __restrict src, uint32_t len)
{
  uint32_t i;
  for (i = 0U; i < len; ++i) 
  {
    dst[i] = src[i];
  }
}




 
static __inline void ARM_MPU_Load(ARM_MPU_Region_t const* table, uint32_t cnt) 
{
  const uint32_t rowWordSize = sizeof(ARM_MPU_Region_t)/4U;
  while (cnt > 4U) {
    ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), 4U*rowWordSize);
    table += 4U;
    cnt -= 4U;
  }
  ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), cnt*rowWordSize);
}

#line 1961 "../../../../drivers/cmsis/Include/core_cm4.h"




 





 








 
static __inline uint32_t SCB_GetFPUType(void)
{
  uint32_t mvfr0;

  mvfr0 = ((FPU_Type *) ((0xE000E000UL) + 0x0F30UL) )->MVFR0;
  if      ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x020U)
  {
    return 1U;            
  }
  else
  {
    return 0U;            
  }
}


 



 





 













 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 4) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 





 

extern volatile int32_t ITM_RxBuffer;                               










 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);        
  }

  return (ch);
}







 
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 










#line 202 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"
#line 203 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"




 
typedef enum {
    EVT_SRC_SWI_IRQ0            = 0U,        
    EVT_SRC_SWI_IRQ1            = 1U,        
    EVT_SRC_SWI_IRQ2            = 2U,        
    EVT_SRC_SWI_IRQ3            = 3U,        
    EVT_SRC_SWI_IRQ4            = 4U,        
    EVT_SRC_SWI_IRQ5            = 5U,        
    EVT_SRC_SWI_IRQ6            = 6U,        
    EVT_SRC_SWI_IRQ7            = 7U,        
    EVT_SRC_SWI_IRQ8            = 8U,        
    EVT_SRC_SWI_IRQ9            = 9U,        
    EVT_SRC_SWI_IRQ10           = 10U,       
    EVT_SRC_SWI_IRQ11           = 11U,       
    EVT_SRC_SWI_IRQ12           = 12U,       
    EVT_SRC_SWI_IRQ13           = 13U,       
    EVT_SRC_SWI_IRQ14           = 14U,       
    EVT_SRC_SWI_IRQ15           = 15U,       
    EVT_SRC_SWI_IRQ16           = 16U,       
    EVT_SRC_SWI_IRQ17           = 17U,       
    EVT_SRC_SWI_IRQ18           = 18U,       
    EVT_SRC_SWI_IRQ19           = 19U,       
    EVT_SRC_SWI_IRQ20           = 20U,       
    EVT_SRC_SWI_IRQ21           = 21U,       
    EVT_SRC_SWI_IRQ22           = 22U,       
    EVT_SRC_SWI_IRQ23           = 23U,       
    EVT_SRC_SWI_IRQ24           = 24U,       
    EVT_SRC_SWI_IRQ25           = 25U,       
    EVT_SRC_SWI_IRQ26           = 26U,       
    EVT_SRC_SWI_IRQ27           = 27U,       
    EVT_SRC_SWI_IRQ28           = 28U,       
    EVT_SRC_SWI_IRQ29           = 29U,       
    EVT_SRC_SWI_IRQ30           = 30U,       
    EVT_SRC_SWI_IRQ31           = 31U,       

     
    EVT_SRC_PORT_EIRQ0          = 0U,        
    EVT_SRC_PORT_EIRQ1          = 1U,        
    EVT_SRC_PORT_EIRQ2          = 2U,        
    EVT_SRC_PORT_EIRQ3          = 3U,        
    EVT_SRC_PORT_EIRQ4          = 4U,        
    EVT_SRC_PORT_EIRQ5          = 5U,        
    EVT_SRC_PORT_EIRQ6          = 6U,        
    EVT_SRC_PORT_EIRQ7          = 7U,        
    EVT_SRC_PORT_EIRQ8          = 8U,        
    EVT_SRC_PORT_EIRQ9          = 9U,        
    EVT_SRC_PORT_EIRQ10         = 10U,       
    EVT_SRC_PORT_EIRQ11         = 11U,       
    EVT_SRC_PORT_EIRQ12         = 12U,       
    EVT_SRC_PORT_EIRQ13         = 13U,       
    EVT_SRC_PORT_EIRQ14         = 14U,       
    EVT_SRC_PORT_EIRQ15         = 15U,       

     
    EVT_SRC_DMA1_TC0            = 32U,       
    EVT_SRC_DMA1_TC1            = 33U,       
    EVT_SRC_DMA1_TC2            = 34U,       
    EVT_SRC_DMA1_TC3            = 35U,       
    EVT_SRC_DMA2_TC0            = 36U,       
    EVT_SRC_DMA2_TC1            = 37U,       
    EVT_SRC_DMA2_TC2            = 38U,       
    EVT_SRC_DMA2_TC3            = 39U,       
    EVT_SRC_DMA1_BTC0           = 40U,       
    EVT_SRC_DMA1_BTC1           = 41U,       
    EVT_SRC_DMA1_BTC2           = 42U,       
    EVT_SRC_DMA1_BTC3           = 43U,       
    EVT_SRC_DMA2_BTC0           = 44U,       
    EVT_SRC_DMA2_BTC1           = 45U,       
    EVT_SRC_DMA2_BTC2           = 46U,       
    EVT_SRC_DMA2_BTC3           = 47U,       

     
    EVT_SRC_EFM_OPTEND          = 52U,       

     
    EVT_SRC_USBFS_SOF           = 53U,       

     
    EVT_SRC_DCU1                = 55U,       
    EVT_SRC_DCU2                = 56U,       
    EVT_SRC_DCU3                = 57U,       
    EVT_SRC_DCU4                = 58U,       

     
    EVT_SRC_TMR0_1_CMP_A        = 64U,       
    EVT_SRC_TMR0_1_CMP_B        = 65U,       
    EVT_SRC_TMR0_2_CMP_A        = 66U,       
    EVT_SRC_TMR0_2_CMP_B        = 67U,       

     
    EVT_SRC_RTC_ALM             = 81U,       
    EVT_SRC_RTC_PRD             = 82U,       

     
    EVT_SRC_TMR6_1_GCMP_A       = 96U,       
    EVT_SRC_TMR6_1_GCMP_B       = 97U,       
    EVT_SRC_TMR6_1_GCMP_C       = 98U,       
    EVT_SRC_TMR6_1_GCMP_D       = 99U,       
    EVT_SRC_TMR6_1_GCMP_E       = 100U,      
    EVT_SRC_TMR6_1_GCMP_F       = 101U,      
    EVT_SRC_TMR6_1_OVF          = 102U,      
    EVT_SRC_TMR6_1_UDF          = 103U,      
    EVT_SRC_TMR6_1_SCMP_A       = 107U,      
    EVT_SRC_TMR6_1_SCMP_B       = 108U,      
    EVT_SRC_TMR6_2_GCMP_A       = 112U,      
    EVT_SRC_TMR6_2_GCMP_B       = 113U,      
    EVT_SRC_TMR6_2_GCMP_C       = 114U,      
    EVT_SRC_TMR6_2_GCMP_D       = 115U,      
    EVT_SRC_TMR6_2_GCMP_E       = 116U,      
    EVT_SRC_TMR6_2_GCMP_F       = 117U,      
    EVT_SRC_TMR6_2_OVF          = 118U,      
    EVT_SRC_TMR6_2_UDF          = 119U,      
    EVT_SRC_TMR6_2_SCMP_A       = 123U,      
    EVT_SRC_TMR6_2_SCMP_B       = 124U,      
    EVT_SRC_TMR6_3_GCMP_A       = 128U,      
    EVT_SRC_TMR6_3_GCMP_B       = 129U,      
    EVT_SRC_TMR6_3_GCMP_C       = 130U,      
    EVT_SRC_TMR6_3_GCMP_D       = 131U,      
    EVT_SRC_TMR6_3_GCMP_E       = 132U,      
    EVT_SRC_TMR6_3_GCMP_F       = 133U,      
    EVT_SRC_TMR6_3_OVF          = 134U,      
    EVT_SRC_TMR6_3_UDF          = 135U,      
    EVT_SRC_TMR6_3_SCMP_A       = 139U,      
    EVT_SRC_TMR6_3_SCMP_B       = 140U,      

     
    EVT_SRC_TMRA_1_OVF          = 256U,      
    EVT_SRC_TMRA_1_UDF          = 257U,      
    EVT_SRC_TMRA_1_CMP          = 258U,      
    EVT_SRC_TMRA_2_OVF          = 259U,      
    EVT_SRC_TMRA_2_UDF          = 260U,      
    EVT_SRC_TMRA_2_CMP          = 261U,      
    EVT_SRC_TMRA_3_OVF          = 262U,      
    EVT_SRC_TMRA_3_UDF          = 263U,      
    EVT_SRC_TMRA_3_CMP          = 264U,      
    EVT_SRC_TMRA_4_OVF          = 265U,      
    EVT_SRC_TMRA_4_UDF          = 266U,      
    EVT_SRC_TMRA_4_CMP          = 267U,      
    EVT_SRC_TMRA_5_OVF          = 268U,      
    EVT_SRC_TMRA_5_UDF          = 269U,      
    EVT_SRC_TMRA_5_CMP          = 270U,      
    EVT_SRC_TMRA_6_OVF          = 272U,      
    EVT_SRC_TMRA_6_UDF          = 273U,      
    EVT_SRC_TMRA_6_CMP          = 274U,      

     
    EVT_SRC_USART1_EI           = 278U,      
    EVT_SRC_USART1_RI           = 279U,      
    EVT_SRC_USART1_TI           = 280U,      
    EVT_SRC_USART1_TCI          = 281U,      
    EVT_SRC_USART1_RTO          = 282U,      
    EVT_SRC_USART2_EI           = 283U,      
    EVT_SRC_USART2_RI           = 284U,      
    EVT_SRC_USART2_TI           = 285U,      
    EVT_SRC_USART2_TCI          = 286U,      
    EVT_SRC_USART2_RTO          = 287U,      
    EVT_SRC_USART3_EI           = 288U,      
    EVT_SRC_USART3_RI           = 289U,      
    EVT_SRC_USART3_TI           = 290U,      
    EVT_SRC_USART3_TCI          = 291U,      
    EVT_SRC_USART3_RTO          = 292U,      
    EVT_SRC_USART4_EI           = 293U,      
    EVT_SRC_USART4_RI           = 294U,      
    EVT_SRC_USART4_TI           = 295U,      
    EVT_SRC_USART4_TCI          = 296U,      
    EVT_SRC_USART4_RTO          = 297U,      

     
    EVT_SRC_SPI1_SPRI           = 299U,      
    EVT_SRC_SPI1_SPTI           = 300U,      
    EVT_SRC_SPI1_SPII           = 301U,      
    EVT_SRC_SPI1_SPEI           = 302U,      
    EVT_SRC_SPI1_SPTEND         = 303U,      
    EVT_SRC_SPI2_SPRI           = 304U,      
    EVT_SRC_SPI2_SPTI           = 305U,      
    EVT_SRC_SPI2_SPII           = 306U,      
    EVT_SRC_SPI2_SPEI           = 307U,      
    EVT_SRC_SPI2_SPTEND         = 308U,      
    EVT_SRC_SPI3_SPRI           = 309U,      
    EVT_SRC_SPI3_SPTI           = 310U,      
    EVT_SRC_SPI3_SPII           = 311U,      
    EVT_SRC_SPI3_SPEI           = 312U,      
    EVT_SRC_SPI3_SPTEND         = 313U,      
    EVT_SRC_SPI4_SPRI           = 314U,      
    EVT_SRC_SPI4_SPTI           = 315U,      
    EVT_SRC_SPI4_SPII           = 316U,      
    EVT_SRC_SPI4_SPEI           = 317U,      
    EVT_SRC_SPI4_SPTEND         = 318U,      

     
    EVT_SRC_AOS_STRG            = 319U,      

     
    EVT_SRC_TMR4_1_SCMP0        = 368U,      
    EVT_SRC_TMR4_1_SCMP1        = 369U,      
    EVT_SRC_TMR4_1_SCMP2        = 370U,      
    EVT_SRC_TMR4_1_SCMP3        = 371U,      
    EVT_SRC_TMR4_1_SCMP4        = 372U,      
    EVT_SRC_TMR4_1_SCMP5        = 373U,      
    EVT_SRC_TMR4_2_SCMP0        = 374U,      
    EVT_SRC_TMR4_2_SCMP1        = 375U,      
    EVT_SRC_TMR4_2_SCMP2        = 376U,      
    EVT_SRC_TMR4_2_SCMP3        = 377U,      
    EVT_SRC_TMR4_2_SCMP4        = 378U,      
    EVT_SRC_TMR4_2_SCMP5        = 379U,      
    EVT_SRC_TMR4_3_SCMP0        = 384U,      
    EVT_SRC_TMR4_3_SCMP1        = 385U,      
    EVT_SRC_TMR4_3_SCMP2        = 386U,      
    EVT_SRC_TMR4_3_SCMP3        = 387U,      
    EVT_SRC_TMR4_3_SCMP4        = 388U,      
    EVT_SRC_TMR4_3_SCMP5        = 389U,      

     
    EVT_SRC_EVENT_PORT1         = 394U,      
    EVT_SRC_EVENT_PORT2         = 395U,      
    EVT_SRC_EVENT_PORT3         = 396U,      
    EVT_SRC_EVENT_PORT4         = 397U,      

     
    EVT_SRC_I2S1_TXIRQOUT       = 400U,      
    EVT_SRC_I2S1_RXIRQOUT       = 401U,      
    EVT_SRC_I2S2_TXIRQOUT       = 403U,      
    EVT_SRC_I2S2_RXIRQOUT       = 404U,      
    EVT_SRC_I2S3_TXIRQOUT       = 406U,      
    EVT_SRC_I2S3_RXIRQOUT       = 407U,      
    EVT_SRC_I2S4_TXIRQOUT       = 409U,      
    EVT_SRC_I2S4_RXIRQOUT       = 410U,      

     
    EVT_SRC_CMP1                = 416U,      
    EVT_SRC_CMP2                = 417U,      
    EVT_SRC_CMP3                = 418U,      

     
    EVT_SRC_I2C1_RXI            = 420U,      
    EVT_SRC_I2C1_TXI            = 421U,      
    EVT_SRC_I2C1_TEI            = 422U,      
    EVT_SRC_I2C1_EEI            = 423U,      
    EVT_SRC_I2C2_RXI            = 424U,      
    EVT_SRC_I2C2_TXI            = 425U,      
    EVT_SRC_I2C2_TEI            = 426U,      
    EVT_SRC_I2C2_EEI            = 427U,      
    EVT_SRC_I2C3_RXI            = 428U,      
    EVT_SRC_I2C3_TXI            = 429U,      
    EVT_SRC_I2C3_TEI            = 430U,      
    EVT_SRC_I2C3_EEI            = 431U,      

     
    EVT_SRC_LVD1                = 433U,      
    EVT_SRC_LVD2                = 434U,      

     
    EVT_SRC_OTS                 = 435U,      

     
    EVT_SRC_WDT_REFUDF          = 439U,      

     
    EVT_SRC_ADC1_EOCA           = 448U,      
    EVT_SRC_ADC1_EOCB           = 449U,      
    EVT_SRC_ADC1_CHCMP          = 450U,      
    EVT_SRC_ADC1_SEQCMP         = 451U,      
    EVT_SRC_ADC2_EOCA           = 452U,      
    EVT_SRC_ADC2_EOCB           = 453U,      
    EVT_SRC_ADC2_CHCMP          = 454U,      
    EVT_SRC_ADC2_SEQCMP         = 455U,      

     
    EVT_SRC_TRNG_END            = 456U,      

     
    EVT_SRC_SDIOC1_DMAR         = 480U,      
    EVT_SRC_SDIOC1_DMAW         = 481U,      
    EVT_SRC_SDIOC2_DMAR         = 483U,      
    EVT_SRC_SDIOC2_DMAW         = 484U,      
    EVT_SRC_MAX                 = 511U,
} en_event_src_t;




 
typedef enum {
    INT_SRC_SWI_IRQ0            = 0U,        
    INT_SRC_SWI_IRQ1            = 1U,        
    INT_SRC_SWI_IRQ2            = 2U,        
    INT_SRC_SWI_IRQ3            = 3U,        
    INT_SRC_SWI_IRQ4            = 4U,        
    INT_SRC_SWI_IRQ5            = 5U,        
    INT_SRC_SWI_IRQ6            = 6U,        
    INT_SRC_SWI_IRQ7            = 7U,        
    INT_SRC_SWI_IRQ8            = 8U,        
    INT_SRC_SWI_IRQ9            = 9U,        
    INT_SRC_SWI_IRQ10           = 10U,       
    INT_SRC_SWI_IRQ11           = 11U,       
    INT_SRC_SWI_IRQ12           = 12U,       
    INT_SRC_SWI_IRQ13           = 13U,       
    INT_SRC_SWI_IRQ14           = 14U,       
    INT_SRC_SWI_IRQ15           = 15U,       
    INT_SRC_SWI_IRQ16           = 16U,       
    INT_SRC_SWI_IRQ17           = 17U,       
    INT_SRC_SWI_IRQ18           = 18U,       
    INT_SRC_SWI_IRQ19           = 19U,       
    INT_SRC_SWI_IRQ20           = 20U,       
    INT_SRC_SWI_IRQ21           = 21U,       
    INT_SRC_SWI_IRQ22           = 22U,       
    INT_SRC_SWI_IRQ23           = 23U,       
    INT_SRC_SWI_IRQ24           = 24U,       
    INT_SRC_SWI_IRQ25           = 25U,       
    INT_SRC_SWI_IRQ26           = 26U,       
    INT_SRC_SWI_IRQ27           = 27U,       
    INT_SRC_SWI_IRQ28           = 28U,       
    INT_SRC_SWI_IRQ29           = 29U,       
    INT_SRC_SWI_IRQ30           = 30U,       
    INT_SRC_SWI_IRQ31           = 31U,       

     
    INT_SRC_PORT_EIRQ0          = 0U,        
    INT_SRC_PORT_EIRQ1          = 1U,        
    INT_SRC_PORT_EIRQ2          = 2U,        
    INT_SRC_PORT_EIRQ3          = 3U,        
    INT_SRC_PORT_EIRQ4          = 4U,        
    INT_SRC_PORT_EIRQ5          = 5U,        
    INT_SRC_PORT_EIRQ6          = 6U,        
    INT_SRC_PORT_EIRQ7          = 7U,        
    INT_SRC_PORT_EIRQ8          = 8U,        
    INT_SRC_PORT_EIRQ9          = 9U,        
    INT_SRC_PORT_EIRQ10         = 10U,       
    INT_SRC_PORT_EIRQ11         = 11U,       
    INT_SRC_PORT_EIRQ12         = 12U,       
    INT_SRC_PORT_EIRQ13         = 13U,       
    INT_SRC_PORT_EIRQ14         = 14U,       
    INT_SRC_PORT_EIRQ15         = 15U,       

     
    INT_SRC_DMA1_TC0            = 32U,       
    INT_SRC_DMA1_TC1            = 33U,       
    INT_SRC_DMA1_TC2            = 34U,       
    INT_SRC_DMA1_TC3            = 35U,       
    INT_SRC_DMA2_TC0            = 36U,       
    INT_SRC_DMA2_TC1            = 37U,       
    INT_SRC_DMA2_TC2            = 38U,       
    INT_SRC_DMA2_TC3            = 39U,       
    INT_SRC_DMA1_BTC0           = 40U,       
    INT_SRC_DMA1_BTC1           = 41U,       
    INT_SRC_DMA1_BTC2           = 42U,       
    INT_SRC_DMA1_BTC3           = 43U,       
    INT_SRC_DMA2_BTC0           = 44U,       
    INT_SRC_DMA2_BTC1           = 45U,       
    INT_SRC_DMA2_BTC2           = 46U,       
    INT_SRC_DMA2_BTC3           = 47U,       
    INT_SRC_DMA1_ERR            = 48U,       
    INT_SRC_DMA2_ERR            = 49U,       

     
    INT_SRC_EFM_PEERR           = 50U,       
    INT_SRC_EFM_COLERR          = 51U,       
    INT_SRC_EFM_OPTEND          = 52U,       

     
    INT_SRC_QSPI_INTR           = 54U,       

     
    INT_SRC_DCU1                = 55U,       
    INT_SRC_DCU2                = 56U,       
    INT_SRC_DCU3                = 57U,       
    INT_SRC_DCU4                = 58U,       

     
    INT_SRC_TMR0_1_CMP_A        = 64U,       
    INT_SRC_TMR0_1_CMP_B        = 65U,       
    INT_SRC_TMR0_2_CMP_A        = 66U,       
    INT_SRC_TMR0_2_CMP_B        = 67U,       

     
    INT_SRC_RTC_ALM             = 81U,       
    INT_SRC_RTC_PRD             = 82U,       

     
    INT_SRC_XTAL32_STOP         = 84U,       

     
    INT_SRC_XTAL_STOP           = 85U,       

     
    INT_SRC_WKTM_PRD            = 86U,       

     
    INT_SRC_SWDT_REFUDF         = 87U,       

     
    INT_SRC_TMR6_1_GCMP_A       = 96U,       
    INT_SRC_TMR6_1_GCMP_B       = 97U,       
    INT_SRC_TMR6_1_GCMP_C       = 98U,       
    INT_SRC_TMR6_1_GCMP_D       = 99U,       
    INT_SRC_TMR6_1_GCMP_E       = 100U,      
    INT_SRC_TMR6_1_GCMP_F       = 101U,      
    INT_SRC_TMR6_1_OVF          = 102U,      
    INT_SRC_TMR6_1_UDF          = 103U,      
    INT_SRC_TMR6_1_DTE          = 104U,      
    INT_SRC_TMR6_1_SCMP_A       = 107U,      
    INT_SRC_TMR6_1_SCMP_B       = 108U,      
    INT_SRC_TMR6_2_GCMP_A       = 112U,      
    INT_SRC_TMR6_2_GCMP_B       = 113U,      
    INT_SRC_TMR6_2_GCMP_C       = 114U,      
    INT_SRC_TMR6_2_GCMP_D       = 115U,      
    INT_SRC_TMR6_2_GCMP_E       = 116U,      
    INT_SRC_TMR6_2_GCMP_F       = 117U,      
    INT_SRC_TMR6_2_OVF          = 118U,      
    INT_SRC_TMR6_2_UDF          = 119U,      
    INT_SRC_TMR6_2_DTE          = 120U,      
    INT_SRC_TMR6_2_SCMP_A       = 123U,      
    INT_SRC_TMR6_2_SCMP_B       = 124U,      
    INT_SRC_TMR6_3_GCMP_A       = 128U,      
    INT_SRC_TMR6_3_GCMP_B       = 129U,      
    INT_SRC_TMR6_3_GCMP_C       = 130U,      
    INT_SRC_TMR6_3_GCMP_D       = 131U,      
    INT_SRC_TMR6_3_GCMP_E       = 132U,      
    INT_SRC_TMR6_3_GCMP_F       = 133U,      
    INT_SRC_TMR6_3_OVF          = 134U,      
    INT_SRC_TMR6_3_UDF          = 135U,      
    INT_SRC_TMR6_3_DTE          = 136U,      
    INT_SRC_TMR6_3_SCMP_A       = 139U,      
    INT_SRC_TMR6_3_SCMP_B       = 140U,      

     
    INT_SRC_TMRA_1_OVF          = 256U,      
    INT_SRC_TMRA_1_UDF          = 257U,      
    INT_SRC_TMRA_1_CMP          = 258U,      
    INT_SRC_TMRA_2_OVF          = 259U,      
    INT_SRC_TMRA_2_UDF          = 260U,      
    INT_SRC_TMRA_2_CMP          = 261U,      
    INT_SRC_TMRA_3_OVF          = 262U,      
    INT_SRC_TMRA_3_UDF          = 263U,      
    INT_SRC_TMRA_3_CMP          = 264U,      
    INT_SRC_TMRA_4_OVF          = 265U,      
    INT_SRC_TMRA_4_UDF          = 266U,      
    INT_SRC_TMRA_4_CMP          = 267U,      
    INT_SRC_TMRA_5_OVF          = 268U,      
    INT_SRC_TMRA_5_UDF          = 269U,      
    INT_SRC_TMRA_5_CMP          = 270U,      
    INT_SRC_TMRA_6_OVF          = 272U,      
    INT_SRC_TMRA_6_UDF          = 273U,      
    INT_SRC_TMRA_6_CMP          = 274U,      

     
    INT_SRC_USBFS_GLB           = 275U,      

     
    INT_SRC_USART1_EI           = 278U,      
    INT_SRC_USART1_RI           = 279U,      
    INT_SRC_USART1_TI           = 280U,      
    INT_SRC_USART1_TCI          = 281U,      
    INT_SRC_USART1_RTO          = 282U,      
    INT_SRC_USART1_WUPI         = 432U,      
    INT_SRC_USART2_EI           = 283U,      
    INT_SRC_USART2_RI           = 284U,      
    INT_SRC_USART2_TI           = 285U,      
    INT_SRC_USART2_TCI          = 286U,      
    INT_SRC_USART2_RTO          = 287U,      
    INT_SRC_USART3_EI           = 288U,      
    INT_SRC_USART3_RI           = 289U,      
    INT_SRC_USART3_TI           = 290U,      
    INT_SRC_USART3_TCI          = 291U,      
    INT_SRC_USART3_RTO          = 292U,      
    INT_SRC_USART4_EI           = 293U,      
    INT_SRC_USART4_RI           = 294U,      
    INT_SRC_USART4_TI           = 295U,      
    INT_SRC_USART4_TCI          = 296U,      
    INT_SRC_USART4_RTO          = 297U,      

     
    INT_SRC_SPI1_SPRI           = 299U,      
    INT_SRC_SPI1_SPTI           = 300U,      
    INT_SRC_SPI1_SPII           = 301U,      
    INT_SRC_SPI1_SPEI           = 302U,      
    INT_SRC_SPI2_SPRI           = 304U,      
    INT_SRC_SPI2_SPTI           = 305U,      
    INT_SRC_SPI2_SPII           = 306U,      
    INT_SRC_SPI2_SPEI           = 307U,      
    INT_SRC_SPI3_SPRI           = 309U,      
    INT_SRC_SPI3_SPTI           = 310U,      
    INT_SRC_SPI3_SPII           = 311U,      
    INT_SRC_SPI3_SPEI           = 312U,      
    INT_SRC_SPI4_SPRI           = 314U,      
    INT_SRC_SPI4_SPTI           = 315U,      
    INT_SRC_SPI4_SPII           = 316U,      
    INT_SRC_SPI4_SPEI           = 317U,      

     
    INT_SRC_TMR4_1_GCMP_UH      = 320U,      
    INT_SRC_TMR4_1_GCMP_UL      = 321U,      
    INT_SRC_TMR4_1_GCMP_VH      = 322U,      
    INT_SRC_TMR4_1_GCMP_VL      = 323U,      
    INT_SRC_TMR4_1_GCMP_WH      = 324U,      
    INT_SRC_TMR4_1_GCMP_WL      = 325U,      
    INT_SRC_TMR4_1_OVF          = 326U,      
    INT_SRC_TMR4_1_UDF          = 327U,      
    INT_SRC_TMR4_1_RELOAD_U     = 328U,      
    INT_SRC_TMR4_1_RELOAD_V     = 329U,      
    INT_SRC_TMR4_1_RELOAD_W     = 330U,      
    INT_SRC_TMR4_2_GCMP_UH      = 336U,      
    INT_SRC_TMR4_2_GCMP_UL      = 337U,      
    INT_SRC_TMR4_2_GCMP_VH      = 338U,      
    INT_SRC_TMR4_2_GCMP_VL      = 339U,      
    INT_SRC_TMR4_2_GCMP_WH      = 340U,      
    INT_SRC_TMR4_2_GCMP_WL      = 341U,      
    INT_SRC_TMR4_2_OVF          = 342U,      
    INT_SRC_TMR4_2_UDF          = 343U,      
    INT_SRC_TMR4_2_RELOAD_U     = 344U,      
    INT_SRC_TMR4_2_RELOAD_V     = 345U,      
    INT_SRC_TMR4_2_RELOAD_W     = 346U,      
    INT_SRC_TMR4_3_GCMP_UH      = 352U,      
    INT_SRC_TMR4_3_GCMP_UL      = 353U,      
    INT_SRC_TMR4_3_GCMP_VH      = 354U,      
    INT_SRC_TMR4_3_GCMP_VL      = 355U,      
    INT_SRC_TMR4_3_GCMP_WH      = 356U,      
    INT_SRC_TMR4_3_GCMP_WL      = 357U,      
    INT_SRC_TMR4_3_OVF          = 358U,      
    INT_SRC_TMR4_3_UDF          = 359U,      
    INT_SRC_TMR4_3_RELOAD_U     = 360U,      
    INT_SRC_TMR4_3_RELOAD_V     = 361U,      
    INT_SRC_TMR4_3_RELOAD_W     = 362U,      

     
    INT_SRC_EMB_GR0             = 390U,      
    INT_SRC_EMB_GR1             = 391U,      
    INT_SRC_EMB_GR2             = 392U,      
    INT_SRC_EMB_GR3             = 393U,      

     
    INT_SRC_EVENT_PORT1         = 394U,      
    INT_SRC_EVENT_PORT2         = 395U,      
    INT_SRC_EVENT_PORT3         = 396U,      
    INT_SRC_EVENT_PORT4         = 397U,      

     
    INT_SRC_I2S1_TXIRQOUT       = 400U,      
    INT_SRC_I2S1_RXIRQOUT       = 401U,      
    INT_SRC_I2S1_ERRIRQOUT      = 402U,      
    INT_SRC_I2S2_TXIRQOUT       = 403U,      
    INT_SRC_I2S2_RXIRQOUT       = 404U,      
    INT_SRC_I2S2_ERRIRQOUT      = 405U,      
    INT_SRC_I2S3_TXIRQOUT       = 406U,      
    INT_SRC_I2S3_RXIRQOUT       = 407U,      
    INT_SRC_I2S3_ERRIRQOUT      = 408U,      
    INT_SRC_I2S4_TXIRQOUT       = 409U,      
    INT_SRC_I2S4_RXIRQOUT       = 410U,      
    INT_SRC_I2S4_ERRIRQOUT      = 411U,      

     
    INT_SRC_CMP1                = 416U,      
    INT_SRC_CMP2                = 417U,      
    INT_SRC_CMP3                = 418U,      

     
    INT_SRC_I2C1_RXI            = 420U,      
    INT_SRC_I2C1_TXI            = 421U,      
    INT_SRC_I2C1_TEI            = 422U,      
    INT_SRC_I2C1_EEI            = 423U,      
    INT_SRC_I2C2_RXI            = 424U,      
    INT_SRC_I2C2_TXI            = 425U,      
    INT_SRC_I2C2_TEI            = 426U,      
    INT_SRC_I2C2_EEI            = 427U,      
    INT_SRC_I2C3_RXI            = 428U,      
    INT_SRC_I2C3_TXI            = 429U,      
    INT_SRC_I2C3_TEI            = 430U,      
    INT_SRC_I2C3_EEI            = 431U,      

     
    INT_SRC_LVD1                = 433U,      
    INT_SRC_LVD2                = 434U,      

     
    INT_SRC_OTS                 = 435U,      

     
    INT_SRC_FCMFERRI            = 436U,      
    INT_SRC_FCMMENDI            = 437U,      
    INT_SRC_FCMCOVFI            = 438U,      

     
    INT_SRC_WDT_REFUDF          = 439U,      

     
    INT_SRC_ADC1_EOCA           = 448U,      
    INT_SRC_ADC1_EOCB           = 449U,      
    INT_SRC_ADC1_CHCMP          = 450U,      
    INT_SRC_ADC1_SEQCMP         = 451U,      
    INT_SRC_ADC2_EOCA           = 452U,      
    INT_SRC_ADC2_EOCB           = 453U,      
    INT_SRC_ADC2_CHCMP          = 454U,      
    INT_SRC_ADC2_SEQCMP         = 455U,      

     
    INT_SRC_TRNG_END            = 456U,      

     
    INT_SRC_SDIOC1_SD           = 482U,      
    INT_SRC_SDIOC2_SD           = 485U,      

     
    INT_SRC_CAN_INT             = 486U,      

    INT_SRC_MAX                 = 511U,
} en_int_src_t;

 
 
 


#pragma anon_unions



 
typedef struct {
    volatile uint8_t  STR;
    uint8_t RESERVED0[1];
    volatile uint16_t CR0;
    volatile uint16_t CR1;
    uint8_t RESERVED1[4];
    volatile uint16_t TRGSR;
    volatile uint32_t CHSELRA;
    volatile uint32_t CHSELRB;
    volatile uint32_t AVCHSELR;
    uint8_t RESERVED2[8];
    volatile uint8_t  SSTR0;
    volatile uint8_t  SSTR1;
    volatile uint8_t  SSTR2;
    volatile uint8_t  SSTR3;
    volatile uint8_t  SSTR4;
    volatile uint8_t  SSTR5;
    volatile uint8_t  SSTR6;
    volatile uint8_t  SSTR7;
    volatile uint8_t  SSTR8;
    volatile uint8_t  SSTR9;
    volatile uint8_t  SSTR10;
    volatile uint8_t  SSTR11;
    volatile uint8_t  SSTR12;
    volatile uint8_t  SSTR13;
    volatile uint8_t  SSTR14;
    volatile uint8_t  SSTR15;
    volatile uint8_t  SSTRL;
    uint8_t RESERVED3[7];
    volatile uint16_t CHMUXR0;
    volatile uint16_t CHMUXR1;
    volatile uint16_t CHMUXR2;
    volatile uint16_t CHMUXR3;
    uint8_t RESERVED4[6];
    volatile uint8_t  ISR;
    volatile uint8_t  ICR;
    uint8_t RESERVED5[4];
    volatile uint16_t SYNCCR;
    uint8_t RESERVED6[2];
    volatile const  uint16_t DR0;
    volatile const  uint16_t DR1;
    volatile const  uint16_t DR2;
    volatile const  uint16_t DR3;
    volatile const  uint16_t DR4;
    volatile const  uint16_t DR5;
    volatile const  uint16_t DR6;
    volatile const  uint16_t DR7;
    volatile const  uint16_t DR8;
    volatile const  uint16_t DR9;
    volatile const  uint16_t DR10;
    volatile const  uint16_t DR11;
    volatile const  uint16_t DR12;
    volatile const  uint16_t DR13;
    volatile const  uint16_t DR14;
    volatile const  uint16_t DR15;
    volatile const  uint16_t DR16;
    uint8_t RESERVED7[46];
    volatile uint16_t AWDCR;
    uint8_t RESERVED8[2];
    volatile uint16_t AWDDR0;
    volatile uint16_t AWDDR1;
    uint8_t RESERVED9[4];
    volatile uint32_t AWDCHSR;
    volatile uint32_t AWDSR;
    uint8_t RESERVED10[12];
    volatile uint16_t PGACR;
    volatile uint16_t PGAGSR;
    uint8_t RESERVED11[8];
    volatile uint16_t PGAINSR0;
    volatile uint16_t PGAINSR1;
} CM_ADC_TypeDef;



 
typedef struct {
    volatile uint32_t CR;
    uint8_t RESERVED0[12];
    volatile uint32_t DR0;
    volatile uint32_t DR1;
    volatile uint32_t DR2;
    volatile uint32_t DR3;
    volatile uint32_t KR0;
    volatile uint32_t KR1;
    volatile uint32_t KR2;
    volatile uint32_t KR3;
} CM_AES_TypeDef;



 
typedef struct {
    volatile  uint32_t INTSFTTRG;
    volatile uint32_t DCU_TRGSEL1;
    volatile uint32_t DCU_TRGSEL2;
    volatile uint32_t DCU_TRGSEL3;
    volatile uint32_t DCU_TRGSEL4;
    volatile uint32_t DMA1_TRGSEL0;
    volatile uint32_t DMA1_TRGSEL1;
    volatile uint32_t DMA1_TRGSEL2;
    volatile uint32_t DMA1_TRGSEL3;
    volatile uint32_t DMA2_TRGSEL0;
    volatile uint32_t DMA2_TRGSEL1;
    volatile uint32_t DMA2_TRGSEL2;
    volatile uint32_t DMA2_TRGSEL3;
    volatile uint32_t DMA_RC_TRGSEL;
    volatile uint32_t TMR6_TRGSEL0;
    volatile uint32_t TMR6_TRGSEL1;
    volatile uint32_t TMR0_TRGSEL;
    volatile uint32_t PEVNT_TRGSEL12;
    volatile uint32_t PEVNT_TRGSEL34;
    volatile uint32_t TMRA_TRGSEL0;
    volatile uint32_t TMRA_TRGSEL1;
    volatile uint32_t OTS_TRGSEL;
    volatile uint32_t ADC1_TRGSEL0;
    volatile uint32_t ADC1_TRGSEL1;
    volatile uint32_t ADC2_TRGSEL0;
    volatile uint32_t ADC2_TRGSEL1;
    volatile uint32_t COMTRG1;
    volatile uint32_t COMTRG2;
    uint8_t RESERVED0[144];
    volatile uint32_t PEVNTDIRR1;
    volatile const  uint32_t PEVNTIDR1;
    volatile uint32_t PEVNTODR1;
    volatile uint32_t PEVNTORR1;
    volatile uint32_t PEVNTOSR1;
    volatile uint32_t PEVNTRISR1;
    volatile uint32_t PEVNTFALR1;
    volatile uint32_t PEVNTDIRR2;
    volatile const  uint32_t PEVNTIDR2;
    volatile uint32_t PEVNTODR2;
    volatile uint32_t PEVNTORR2;
    volatile uint32_t PEVNTOSR2;
    volatile uint32_t PEVNTRISR2;
    volatile uint32_t PEVNTFALR2;
    volatile uint32_t PEVNTDIRR3;
    volatile const  uint32_t PEVNTIDR3;
    volatile uint32_t PEVNTODR3;
    volatile uint32_t PEVNTORR3;
    volatile uint32_t PEVNTOSR3;
    volatile uint32_t PEVNTRISR3;
    volatile uint32_t PEVNTFALR3;
    volatile uint32_t PEVNTDIRR4;
    volatile const  uint32_t PEVNTIDR4;
    volatile uint32_t PEVNTODR4;
    volatile uint32_t PEVNTORR4;
    volatile uint32_t PEVNTOSR4;
    volatile uint32_t PEVNTRISR4;
    volatile uint32_t PEVNTFALR4;
    volatile uint32_t PEVNTNFCR;
} CM_AOS_TypeDef;



 
typedef struct {
    volatile const  uint32_t RBUF;
    uint8_t RESERVED0[76];
    volatile uint32_t TBUF;
    uint8_t RESERVED1[76];
    volatile uint8_t  CFG_STAT;
    volatile uint8_t  TCMD;
    volatile uint8_t  TCTRL;
    volatile uint8_t  RCTRL;
    volatile uint8_t  RTIE;
    volatile uint8_t  RTIF;
    volatile uint8_t  ERRINT;
    volatile uint8_t  LIMIT;
    volatile uint32_t SBT;
    uint8_t RESERVED2[4];
    volatile const  uint8_t  EALCAP;
    uint8_t RESERVED3[1];
    volatile uint8_t  RECNT;
    volatile uint8_t  TECNT;
    volatile uint8_t  ACFCTRL;
    uint8_t RESERVED4[1];
    volatile uint8_t  ACFEN;
    uint8_t RESERVED5[1];
    volatile uint32_t ACF;
    uint8_t RESERVED6[2];
    volatile uint8_t  TBSLOT;
    volatile uint8_t  TTCFG;
    volatile uint32_t REF_MSG;
    volatile uint16_t TRG_CFG;
    volatile uint16_t TT_TRIG;
    volatile uint16_t TT_WTRIG;
} CM_CAN_TypeDef;



 
typedef struct {
    volatile uint16_t CTRL;
    volatile uint16_t VLTSEL;
    volatile const  uint16_t OUTMON;
    volatile uint16_t CVSSTB;
    volatile uint16_t CVSPRD;
} CM_CMP_TypeDef;



 
typedef struct {
    uint8_t RESERVED0[256];
    volatile uint16_t DADR1;
    volatile uint16_t DADR2;
    uint8_t RESERVED1[4];
    volatile uint16_t DACR;
    uint8_t RESERVED2[2];
    volatile uint16_t RVADC;
} CM_CMP_COMMON_TypeDef;



 
typedef struct {
    uint8_t RESERVED0[16];
    volatile uint16_t PERICKSEL;
    volatile uint16_t I2SCKSEL;
    uint8_t RESERVED1[12];
    volatile uint32_t SCFGR;
    volatile uint8_t  USBCKCFGR;
    uint8_t RESERVED2[1];
    volatile uint8_t  CKSWR;
    uint8_t RESERVED3[3];
    volatile uint8_t  PLLCR;
    uint8_t RESERVED4[3];
    volatile uint8_t  UPLLCR;
    uint8_t RESERVED5[3];
    volatile uint8_t  XTALCR;
    uint8_t RESERVED6[3];
    volatile uint8_t  HRCCR;
    uint8_t RESERVED7[1];
    volatile uint8_t  MRCCR;
    uint8_t RESERVED8[3];
    volatile uint8_t  OSCSTBSR;
    volatile uint8_t  MCO1CFGR;
    volatile uint8_t  MCO2CFGR;
    volatile uint8_t  TPIUCKCFGR;
    volatile uint8_t  XTALSTDCR;
    volatile uint8_t  XTALSTDSR;
    uint8_t RESERVED9[31];
    volatile uint8_t  MRCTRM;
    volatile uint8_t  HRCTRM;
    uint8_t RESERVED10[63];
    volatile uint8_t  XTALSTBCR;
    uint8_t RESERVED11[93];
    volatile uint32_t PLLCFGR;
    volatile uint32_t UPLLCFGR;
    uint8_t RESERVED12[776];
    volatile uint8_t  XTALCFGR;
    uint8_t RESERVED13[15];
    volatile uint8_t  XTAL32CR;
    volatile uint8_t  XTAL32CFGR;
    uint8_t RESERVED14[3];
    volatile uint8_t  XTAL32NFR;
    uint8_t RESERVED15[1];
    volatile uint8_t  LRCCR;
    uint8_t RESERVED16[1];
    volatile uint8_t  LRCTRM;
} CM_CMU_TypeDef;



 
typedef struct {
    volatile uint32_t CR;
    volatile uint32_t RESLT;
    uint8_t RESERVED0[4];
    volatile const  uint32_t FLG;
    uint8_t RESERVED1[112];
    volatile const  uint32_t DAT0;
    volatile const  uint32_t DAT1;
    volatile const  uint32_t DAT2;
    volatile const  uint32_t DAT3;
    volatile const  uint32_t DAT4;
    volatile const  uint32_t DAT5;
    volatile const  uint32_t DAT6;
    volatile const  uint32_t DAT7;
    volatile const  uint32_t DAT8;
    volatile const  uint32_t DAT9;
    volatile const  uint32_t DAT10;
    volatile const  uint32_t DAT11;
    volatile const  uint32_t DAT12;
    volatile const  uint32_t DAT13;
    volatile const  uint32_t DAT14;
    volatile const  uint32_t DAT15;
    volatile const  uint32_t DAT16;
    volatile const  uint32_t DAT17;
    volatile const  uint32_t DAT18;
    volatile const  uint32_t DAT19;
    volatile const  uint32_t DAT20;
    volatile const  uint32_t DAT21;
    volatile const  uint32_t DAT22;
    volatile const  uint32_t DAT23;
    volatile const  uint32_t DAT24;
    volatile const  uint32_t DAT25;
    volatile const  uint32_t DAT26;
    volatile const  uint32_t DAT27;
    volatile const  uint32_t DAT28;
    volatile const  uint32_t DAT29;
    volatile const  uint32_t DAT30;
    volatile const  uint32_t DAT31;
} CM_CRC_TypeDef;



 
typedef struct {
    uint8_t RESERVED0[28];
    volatile uint32_t MCUDBGSTAT;
    volatile uint32_t MCUSTPCTL;
    volatile uint32_t MCUTRACECTL;
} CM_DBGC_TypeDef;



 
typedef struct {
    volatile uint32_t CTL;
    volatile  uint32_t FLAG;
    volatile uint32_t DATA0;
    volatile uint32_t DATA1;
    volatile uint32_t DATA2;
    volatile  uint32_t FLAGCLR;
    volatile uint32_t INTEVTSEL;
} CM_DCU_TypeDef;



 
typedef struct {
    volatile uint32_t EN;
    volatile const  uint32_t INTSTAT0;
    volatile const  uint32_t INTSTAT1;
    volatile uint32_t INTMASK0;
    volatile uint32_t INTMASK1;
    volatile  uint32_t INTCLR0;
    volatile  uint32_t INTCLR1;
    volatile uint32_t CHEN;
    volatile const  uint32_t REQSTAT;
    volatile const  uint32_t CHSTAT;
    uint8_t RESERVED0[4];
    volatile uint32_t RCFGCTL;
    volatile  uint32_t SWREQ;
    uint8_t RESERVED1[12];
    volatile uint32_t SAR0;
    volatile uint32_t DAR0;
    volatile uint32_t DTCTL0;
    union {
        volatile uint32_t RPT0;
        volatile uint32_t RPTB0;
    };
    union {
        volatile uint32_t SNSEQCTL0;
        volatile uint32_t SNSEQCTLB0;
    };
    union {
        volatile uint32_t DNSEQCTL0;
        volatile uint32_t DNSEQCTLB0;
    };
    volatile uint32_t LLP0;
    volatile uint32_t CHCTL0;
    volatile const  uint32_t MONSAR0;
    volatile const  uint32_t MONDAR0;
    volatile const  uint32_t MONDTCTL0;
    volatile const  uint32_t MONRPT0;
    volatile const  uint32_t MONSNSEQCTL0;
    volatile const  uint32_t MONDNSEQCTL0;
    uint8_t RESERVED2[8];
    volatile uint32_t SAR1;
    volatile uint32_t DAR1;
    volatile uint32_t DTCTL1;
    union {
        volatile uint32_t RPT1;
        volatile uint32_t RPTB1;
    };
    union {
        volatile uint32_t SNSEQCTL1;
        volatile uint32_t SNSEQCTLB1;
    };
    union {
        volatile uint32_t DNSEQCTL1;
        volatile uint32_t DNSEQCTLB1;
    };
    volatile uint32_t LLP1;
    volatile uint32_t CHCTL1;
    volatile const  uint32_t MONSAR1;
    volatile const  uint32_t MONDAR1;
    volatile const  uint32_t MONDTCTL1;
    volatile const  uint32_t MONRPT1;
    volatile const  uint32_t MONSNSEQCTL1;
    volatile const  uint32_t MONDNSEQCTL1;
    uint8_t RESERVED3[8];
    volatile uint32_t SAR2;
    volatile uint32_t DAR2;
    volatile uint32_t DTCTL2;
    union {
        volatile uint32_t RPT2;
        volatile uint32_t RPTB2;
    };
    union {
        volatile uint32_t SNSEQCTL2;
        volatile uint32_t SNSEQCTLB2;
    };
    union {
        volatile uint32_t DNSEQCTL2;
        volatile uint32_t DNSEQCTLB2;
    };
    volatile uint32_t LLP2;
    volatile uint32_t CHCTL2;
    volatile const  uint32_t MONSAR2;
    volatile const  uint32_t MONDAR2;
    volatile const  uint32_t MONDTCTL2;
    volatile const  uint32_t MONRPT2;
    volatile const  uint32_t MONSNSEQCTL2;
    volatile const  uint32_t MONDNSEQCTL2;
    uint8_t RESERVED4[8];
    volatile uint32_t SAR3;
    volatile uint32_t DAR3;
    volatile uint32_t DTCTL3;
    union {
        volatile uint32_t RPT3;
        volatile uint32_t RPTB3;
    };
    union {
        volatile uint32_t SNSEQCTL3;
        volatile uint32_t SNSEQCTLB3;
    };
    union {
        volatile uint32_t DNSEQCTL3;
        volatile uint32_t DNSEQCTLB3;
    };
    volatile uint32_t LLP3;
    volatile uint32_t CHCTL3;
    volatile const  uint32_t MONSAR3;
    volatile const  uint32_t MONDAR3;
    volatile const  uint32_t MONDTCTL3;
    volatile const  uint32_t MONRPT3;
    volatile const  uint32_t MONSNSEQCTL3;
    volatile const  uint32_t MONDNSEQCTL3;
} CM_DMA_TypeDef;



 
typedef struct {
    volatile uint32_t FAPRT;
    volatile uint32_t FSTP;
    volatile uint32_t FRMC;
    volatile uint32_t FWMC;
    volatile const  uint32_t FSR;
    volatile uint32_t FSCLR;
    volatile uint32_t FITE;
    volatile const  uint32_t FSWP;
    volatile uint32_t FPMTSW;
    volatile uint32_t FPMTEW;
    uint8_t RESERVED0[40];
    volatile const  uint32_t UQID0;
    volatile const  uint32_t UQID1;
    volatile const  uint32_t UQID2;
    uint8_t RESERVED1[164];
    volatile uint32_t MMF_REMPRT;
    volatile uint32_t MMF_REMCR0;
    volatile uint32_t MMF_REMCR1;
} CM_EFM_TypeDef;



 
typedef struct {
    volatile uint32_t CTL;
    volatile uint32_t PWMLV;
    volatile uint32_t SOE;
    volatile const  uint32_t STAT;
    volatile  uint32_t STATCLR;
    volatile uint32_t INTEN;
} CM_EMB_TypeDef;



 
typedef struct {
    volatile uint32_t LVR;
    volatile uint32_t UVR;
    volatile const  uint32_t CNTR;
    volatile uint32_t STR;
    volatile uint32_t MCCR;
    volatile uint32_t RCCR;
    volatile uint32_t RIER;
    volatile const  uint32_t SR;
    volatile  uint32_t CLR;
} CM_FCM_TypeDef;



 
typedef struct {
    volatile const  uint16_t PIDRA;
    uint8_t RESERVED0[2];
    volatile uint16_t PODRA;
    volatile uint16_t POERA;
    volatile uint16_t POSRA;
    volatile uint16_t PORRA;
    volatile uint16_t POTRA;
    uint8_t RESERVED1[2];
    volatile const  uint16_t PIDRB;
    uint8_t RESERVED2[2];
    volatile uint16_t PODRB;
    volatile uint16_t POERB;
    volatile uint16_t POSRB;
    volatile uint16_t PORRB;
    volatile uint16_t POTRB;
    uint8_t RESERVED3[2];
    volatile const  uint16_t PIDRC;
    uint8_t RESERVED4[2];
    volatile uint16_t PODRC;
    volatile uint16_t POERC;
    volatile uint16_t POSRC;
    volatile uint16_t PORRC;
    volatile uint16_t POTRC;
    uint8_t RESERVED5[2];
    volatile const  uint16_t PIDRD;
    uint8_t RESERVED6[2];
    volatile uint16_t PODRD;
    volatile uint16_t POERD;
    volatile uint16_t POSRD;
    volatile uint16_t PORRD;
    volatile uint16_t POTRD;
    uint8_t RESERVED7[2];
    volatile const  uint16_t PIDRE;
    uint8_t RESERVED8[2];
    volatile uint16_t PODRE;
    volatile uint16_t POERE;
    volatile uint16_t POSRE;
    volatile uint16_t PORRE;
    volatile uint16_t POTRE;
    uint8_t RESERVED9[2];
    volatile const  uint16_t PIDRH;
    uint8_t RESERVED10[2];
    volatile uint16_t PODRH;
    volatile uint16_t POERH;
    volatile uint16_t POSRH;
    volatile uint16_t PORRH;
    volatile uint16_t POTRH;
    uint8_t RESERVED11[918];
    volatile uint16_t PSPCR;
    uint8_t RESERVED12[2];
    volatile uint16_t PCCR;
    volatile uint16_t PINAER;
    volatile uint16_t PWPR;
    uint8_t RESERVED13[2];
    volatile uint16_t PCRA0;
    volatile uint16_t PFSRA0;
    volatile uint16_t PCRA1;
    volatile uint16_t PFSRA1;
    volatile uint16_t PCRA2;
    volatile uint16_t PFSRA2;
    volatile uint16_t PCRA3;
    volatile uint16_t PFSRA3;
    volatile uint16_t PCRA4;
    volatile uint16_t PFSRA4;
    volatile uint16_t PCRA5;
    volatile uint16_t PFSRA5;
    volatile uint16_t PCRA6;
    volatile uint16_t PFSRA6;
    volatile uint16_t PCRA7;
    volatile uint16_t PFSRA7;
    volatile uint16_t PCRA8;
    volatile uint16_t PFSRA8;
    volatile uint16_t PCRA9;
    volatile uint16_t PFSRA9;
    volatile uint16_t PCRA10;
    volatile uint16_t PFSRA10;
    volatile uint16_t PCRA11;
    volatile uint16_t PFSRA11;
    volatile uint16_t PCRA12;
    volatile uint16_t PFSRA12;
    volatile uint16_t PCRA13;
    volatile uint16_t PFSRA13;
    volatile uint16_t PCRA14;
    volatile uint16_t PFSRA14;
    volatile uint16_t PCRA15;
    volatile uint16_t PFSRA15;
    volatile uint16_t PCRB0;
    volatile uint16_t PFSRB0;
    volatile uint16_t PCRB1;
    volatile uint16_t PFSRB1;
    volatile uint16_t PCRB2;
    volatile uint16_t PFSRB2;
    volatile uint16_t PCRB3;
    volatile uint16_t PFSRB3;
    volatile uint16_t PCRB4;
    volatile uint16_t PFSRB4;
    volatile uint16_t PCRB5;
    volatile uint16_t PFSRB5;
    volatile uint16_t PCRB6;
    volatile uint16_t PFSRB6;
    volatile uint16_t PCRB7;
    volatile uint16_t PFSRB7;
    volatile uint16_t PCRB8;
    volatile uint16_t PFSRB8;
    volatile uint16_t PCRB9;
    volatile uint16_t PFSRB9;
    volatile uint16_t PCRB10;
    volatile uint16_t PFSRB10;
    volatile uint16_t PCRB11;
    volatile uint16_t PFSRB11;
    volatile uint16_t PCRB12;
    volatile uint16_t PFSRB12;
    volatile uint16_t PCRB13;
    volatile uint16_t PFSRB13;
    volatile uint16_t PCRB14;
    volatile uint16_t PFSRB14;
    volatile uint16_t PCRB15;
    volatile uint16_t PFSRB15;
    volatile uint16_t PCRC0;
    volatile uint16_t PFSRC0;
    volatile uint16_t PCRC1;
    volatile uint16_t PFSRC1;
    volatile uint16_t PCRC2;
    volatile uint16_t PFSRC2;
    volatile uint16_t PCRC3;
    volatile uint16_t PFSRC3;
    volatile uint16_t PCRC4;
    volatile uint16_t PFSRC4;
    volatile uint16_t PCRC5;
    volatile uint16_t PFSRC5;
    volatile uint16_t PCRC6;
    volatile uint16_t PFSRC6;
    volatile uint16_t PCRC7;
    volatile uint16_t PFSRC7;
    volatile uint16_t PCRC8;
    volatile uint16_t PFSRC8;
    volatile uint16_t PCRC9;
    volatile uint16_t PFSRC9;
    volatile uint16_t PCRC10;
    volatile uint16_t PFSRC10;
    volatile uint16_t PCRC11;
    volatile uint16_t PFSRC11;
    volatile uint16_t PCRC12;
    volatile uint16_t PFSRC12;
    volatile uint16_t PCRC13;
    volatile uint16_t PFSRC13;
    volatile uint16_t PCRC14;
    volatile uint16_t PFSRC14;
    volatile uint16_t PCRC15;
    volatile uint16_t PFSRC15;
    volatile uint16_t PCRD0;
    volatile uint16_t PFSRD0;
    volatile uint16_t PCRD1;
    volatile uint16_t PFSRD1;
    volatile uint16_t PCRD2;
    volatile uint16_t PFSRD2;
    volatile uint16_t PCRD3;
    volatile uint16_t PFSRD3;
    volatile uint16_t PCRD4;
    volatile uint16_t PFSRD4;
    volatile uint16_t PCRD5;
    volatile uint16_t PFSRD5;
    volatile uint16_t PCRD6;
    volatile uint16_t PFSRD6;
    volatile uint16_t PCRD7;
    volatile uint16_t PFSRD7;
    volatile uint16_t PCRD8;
    volatile uint16_t PFSRD8;
    volatile uint16_t PCRD9;
    volatile uint16_t PFSRD9;
    volatile uint16_t PCRD10;
    volatile uint16_t PFSRD10;
    volatile uint16_t PCRD11;
    volatile uint16_t PFSRD11;
    volatile uint16_t PCRD12;
    volatile uint16_t PFSRD12;
    volatile uint16_t PCRD13;
    volatile uint16_t PFSRD13;
    volatile uint16_t PCRD14;
    volatile uint16_t PFSRD14;
    volatile uint16_t PCRD15;
    volatile uint16_t PFSRD15;
    volatile uint16_t PCRE0;
    volatile uint16_t PFSRE0;
    volatile uint16_t PCRE1;
    volatile uint16_t PFSRE1;
    volatile uint16_t PCRE2;
    volatile uint16_t PFSRE2;
    volatile uint16_t PCRE3;
    volatile uint16_t PFSRE3;
    volatile uint16_t PCRE4;
    volatile uint16_t PFSRE4;
    volatile uint16_t PCRE5;
    volatile uint16_t PFSRE5;
    volatile uint16_t PCRE6;
    volatile uint16_t PFSRE6;
    volatile uint16_t PCRE7;
    volatile uint16_t PFSRE7;
    volatile uint16_t PCRE8;
    volatile uint16_t PFSRE8;
    volatile uint16_t PCRE9;
    volatile uint16_t PFSRE9;
    volatile uint16_t PCRE10;
    volatile uint16_t PFSRE10;
    volatile uint16_t PCRE11;
    volatile uint16_t PFSRE11;
    volatile uint16_t PCRE12;
    volatile uint16_t PFSRE12;
    volatile uint16_t PCRE13;
    volatile uint16_t PFSRE13;
    volatile uint16_t PCRE14;
    volatile uint16_t PFSRE14;
    volatile uint16_t PCRE15;
    volatile uint16_t PFSRE15;
    volatile uint16_t PCRH0;
    volatile uint16_t PFSRH0;
    volatile uint16_t PCRH1;
    volatile uint16_t PFSRH1;
    volatile uint16_t PCRH2;
    volatile uint16_t PFSRH2;
} CM_GPIO_TypeDef;



 
typedef struct {
    volatile uint32_t CR;
    uint8_t RESERVED0[12];
    volatile uint32_t HR7;
    volatile uint32_t HR6;
    volatile uint32_t HR5;
    volatile uint32_t HR4;
    volatile uint32_t HR3;
    volatile uint32_t HR2;
    volatile uint32_t HR1;
    volatile uint32_t HR0;
    uint8_t RESERVED1[16];
    volatile uint32_t DR15;
    volatile uint32_t DR14;
    volatile uint32_t DR13;
    volatile uint32_t DR12;
    volatile uint32_t DR11;
    volatile uint32_t DR10;
    volatile uint32_t DR9;
    volatile uint32_t DR8;
    volatile uint32_t DR7;
    volatile uint32_t DR6;
    volatile uint32_t DR5;
    volatile uint32_t DR4;
    volatile uint32_t DR3;
    volatile uint32_t DR2;
    volatile uint32_t DR1;
    volatile uint32_t DR0;
} CM_HASH_TypeDef;



 
typedef struct {
    volatile uint32_t CR1;
    volatile uint32_t CR2;
    volatile uint32_t CR3;
    volatile uint32_t CR4;
    volatile uint32_t SLR0;
    volatile uint32_t SLR1;
    volatile uint32_t SLTR;
    volatile uint32_t SR;
    volatile  uint32_t CLR;
    volatile  uint8_t  DTR;
    uint8_t RESERVED0[3];
    volatile const  uint8_t  DRR;
    uint8_t RESERVED1[3];
    volatile uint32_t CCR;
    volatile uint32_t FLTR;
} CM_I2C_TypeDef;



 
typedef struct {
    volatile uint32_t CTRL;
    volatile const  uint32_t SR;
    volatile uint32_t ER;
    volatile uint32_t CFGR;
    volatile  uint32_t TXBUF;
    volatile const  uint32_t RXBUF;
    volatile uint32_t PR;
} CM_I2S_TypeDef;



 
typedef struct {
    volatile const  uint32_t ICG0;
    volatile const  uint32_t ICG1;
    volatile const  uint32_t ICG2;
    volatile const  uint32_t ICG3;
    volatile const  uint32_t ICG4;
    volatile const  uint32_t ICG5;
    volatile const  uint32_t ICG6;
    volatile const  uint32_t ICG7;
} CM_ICG_TypeDef;



 
typedef struct {
    volatile uint32_t NMICR;
    volatile uint32_t NMIENR;
    volatile uint32_t NMIFR;
    volatile uint32_t NMICFR;
    volatile uint32_t EIRQCR0;
    volatile uint32_t EIRQCR1;
    volatile uint32_t EIRQCR2;
    volatile uint32_t EIRQCR3;
    volatile uint32_t EIRQCR4;
    volatile uint32_t EIRQCR5;
    volatile uint32_t EIRQCR6;
    volatile uint32_t EIRQCR7;
    volatile uint32_t EIRQCR8;
    volatile uint32_t EIRQCR9;
    volatile uint32_t EIRQCR10;
    volatile uint32_t EIRQCR11;
    volatile uint32_t EIRQCR12;
    volatile uint32_t EIRQCR13;
    volatile uint32_t EIRQCR14;
    volatile uint32_t EIRQCR15;
    volatile uint32_t WUPEN;
    volatile uint32_t EIFR;
    volatile uint32_t EIFCR;
    volatile uint32_t SEL0;
    volatile uint32_t SEL1;
    volatile uint32_t SEL2;
    volatile uint32_t SEL3;
    volatile uint32_t SEL4;
    volatile uint32_t SEL5;
    volatile uint32_t SEL6;
    volatile uint32_t SEL7;
    volatile uint32_t SEL8;
    volatile uint32_t SEL9;
    volatile uint32_t SEL10;
    volatile uint32_t SEL11;
    volatile uint32_t SEL12;
    volatile uint32_t SEL13;
    volatile uint32_t SEL14;
    volatile uint32_t SEL15;
    volatile uint32_t SEL16;
    volatile uint32_t SEL17;
    volatile uint32_t SEL18;
    volatile uint32_t SEL19;
    volatile uint32_t SEL20;
    volatile uint32_t SEL21;
    volatile uint32_t SEL22;
    volatile uint32_t SEL23;
    volatile uint32_t SEL24;
    volatile uint32_t SEL25;
    volatile uint32_t SEL26;
    volatile uint32_t SEL27;
    volatile uint32_t SEL28;
    volatile uint32_t SEL29;
    volatile uint32_t SEL30;
    volatile uint32_t SEL31;
    volatile uint32_t SEL32;
    volatile uint32_t SEL33;
    volatile uint32_t SEL34;
    volatile uint32_t SEL35;
    volatile uint32_t SEL36;
    volatile uint32_t SEL37;
    volatile uint32_t SEL38;
    volatile uint32_t SEL39;
    volatile uint32_t SEL40;
    volatile uint32_t SEL41;
    volatile uint32_t SEL42;
    volatile uint32_t SEL43;
    volatile uint32_t SEL44;
    volatile uint32_t SEL45;
    volatile uint32_t SEL46;
    volatile uint32_t SEL47;
    volatile uint32_t SEL48;
    volatile uint32_t SEL49;
    volatile uint32_t SEL50;
    volatile uint32_t SEL51;
    volatile uint32_t SEL52;
    volatile uint32_t SEL53;
    volatile uint32_t SEL54;
    volatile uint32_t SEL55;
    volatile uint32_t SEL56;
    volatile uint32_t SEL57;
    volatile uint32_t SEL58;
    volatile uint32_t SEL59;
    volatile uint32_t SEL60;
    volatile uint32_t SEL61;
    volatile uint32_t SEL62;
    volatile uint32_t SEL63;
    volatile uint32_t SEL64;
    volatile uint32_t SEL65;
    volatile uint32_t SEL66;
    volatile uint32_t SEL67;
    volatile uint32_t SEL68;
    volatile uint32_t SEL69;
    volatile uint32_t SEL70;
    volatile uint32_t SEL71;
    volatile uint32_t SEL72;
    volatile uint32_t SEL73;
    volatile uint32_t SEL74;
    volatile uint32_t SEL75;
    volatile uint32_t SEL76;
    volatile uint32_t SEL77;
    volatile uint32_t SEL78;
    volatile uint32_t SEL79;
    volatile uint32_t SEL80;
    volatile uint32_t SEL81;
    volatile uint32_t SEL82;
    volatile uint32_t SEL83;
    volatile uint32_t SEL84;
    volatile uint32_t SEL85;
    volatile uint32_t SEL86;
    volatile uint32_t SEL87;
    volatile uint32_t SEL88;
    volatile uint32_t SEL89;
    volatile uint32_t SEL90;
    volatile uint32_t SEL91;
    volatile uint32_t SEL92;
    volatile uint32_t SEL93;
    volatile uint32_t SEL94;
    volatile uint32_t SEL95;
    volatile uint32_t SEL96;
    volatile uint32_t SEL97;
    volatile uint32_t SEL98;
    volatile uint32_t SEL99;
    volatile uint32_t SEL100;
    volatile uint32_t SEL101;
    volatile uint32_t SEL102;
    volatile uint32_t SEL103;
    volatile uint32_t SEL104;
    volatile uint32_t SEL105;
    volatile uint32_t SEL106;
    volatile uint32_t SEL107;
    volatile uint32_t SEL108;
    volatile uint32_t SEL109;
    volatile uint32_t SEL110;
    volatile uint32_t SEL111;
    volatile uint32_t SEL112;
    volatile uint32_t SEL113;
    volatile uint32_t SEL114;
    volatile uint32_t SEL115;
    volatile uint32_t SEL116;
    volatile uint32_t SEL117;
    volatile uint32_t SEL118;
    volatile uint32_t SEL119;
    volatile uint32_t SEL120;
    volatile uint32_t SEL121;
    volatile uint32_t SEL122;
    volatile uint32_t SEL123;
    volatile uint32_t SEL124;
    volatile uint32_t SEL125;
    volatile uint32_t SEL126;
    volatile uint32_t SEL127;
    volatile uint32_t VSSEL128;
    volatile uint32_t VSSEL129;
    volatile uint32_t VSSEL130;
    volatile uint32_t VSSEL131;
    volatile uint32_t VSSEL132;
    volatile uint32_t VSSEL133;
    volatile uint32_t VSSEL134;
    volatile uint32_t VSSEL135;
    volatile uint32_t VSSEL136;
    volatile uint32_t VSSEL137;
    volatile uint32_t VSSEL138;
    volatile uint32_t VSSEL139;
    volatile uint32_t VSSEL140;
    volatile uint32_t VSSEL141;
    volatile uint32_t VSSEL142;
    volatile uint32_t VSSEL143;
    volatile uint32_t SWIER;
    volatile uint32_t EVTER;
    volatile uint32_t IER;
} CM_INTC_TypeDef;



 
typedef struct {
    volatile uint32_t SCR;
    volatile uint32_t SER;
    volatile uint32_t SSR;
} CM_KEYSCAN_TypeDef;



 
typedef struct {
    volatile uint32_t RGD0;
    volatile uint32_t RGD1;
    volatile uint32_t RGD2;
    volatile uint32_t RGD3;
    volatile uint32_t RGD4;
    volatile uint32_t RGD5;
    volatile uint32_t RGD6;
    volatile uint32_t RGD7;
    volatile uint32_t RGD8;
    volatile uint32_t RGD9;
    volatile uint32_t RGD10;
    volatile uint32_t RGD11;
    volatile uint32_t RGD12;
    volatile uint32_t RGD13;
    volatile uint32_t RGD14;
    volatile uint32_t RGD15;
    volatile uint32_t RGCR0;
    volatile uint32_t RGCR1;
    volatile uint32_t RGCR2;
    volatile uint32_t RGCR3;
    volatile uint32_t RGCR4;
    volatile uint32_t RGCR5;
    volatile uint32_t RGCR6;
    volatile uint32_t RGCR7;
    volatile uint32_t RGCR8;
    volatile uint32_t RGCR9;
    volatile uint32_t RGCR10;
    volatile uint32_t RGCR11;
    volatile uint32_t RGCR12;
    volatile uint32_t RGCR13;
    volatile uint32_t RGCR14;
    volatile uint32_t RGCR15;
    volatile uint32_t CR;
    volatile const  uint32_t SR;
    volatile  uint32_t ECLR;
    volatile uint32_t WP;
    uint8_t RESERVED0[16268];
    volatile uint32_t IPPR;
} CM_MPU_TypeDef;



 
typedef struct {
    volatile uint16_t CTL;
    volatile uint16_t DR1;
    volatile uint16_t DR2;
    volatile uint16_t ECR;
} CM_OTS_TypeDef;



 
typedef struct {
    volatile uint32_t USBFS_SYCTLREG;
    volatile uint32_t SDIOC_SYCTLREG;
} CM_PERIC_TypeDef;



 
typedef struct {
    volatile uint32_t FCG0;
    volatile uint32_t FCG1;
    volatile uint32_t FCG2;
    volatile uint32_t FCG3;
    volatile uint32_t FCG0PC;
    uint8_t RESERVED0[17388];
    volatile uint16_t WKTCR;
    uint8_t RESERVED1[31754];
    volatile uint16_t STPMCR;
    uint8_t RESERVED2[6];
    volatile uint32_t RAMPC0;
    volatile uint16_t RAMOPM;
    uint8_t RESERVED3[198];
    volatile uint8_t  PVDICR;
    volatile uint8_t  PVDDSR;
    uint8_t RESERVED4[796];
    volatile uint16_t FPRC;
    volatile uint8_t  PWRC0;
    volatile uint8_t  PWRC1;
    volatile uint8_t  PWRC2;
    volatile uint8_t  PWRC3;
    volatile uint8_t  PDWKE0;
    volatile uint8_t  PDWKE1;
    volatile uint8_t  PDWKE2;
    volatile uint8_t  PDWKES;
    volatile uint8_t  PDWKF0;
    volatile uint8_t  PDWKF1;
    volatile uint8_t  PWCMR;
    uint8_t RESERVED5[4];
    volatile uint8_t  MDSWCR;
    uint8_t RESERVED6[2];
    volatile uint8_t  PVDCR0;
    volatile uint8_t  PVDCR1;
    volatile uint8_t  PVDFCR;
    volatile uint8_t  PVDLCR;
    uint8_t RESERVED7[21];
    volatile uint8_t  XTAL32CS;
} CM_PWC_TypeDef;



 
typedef struct {
    volatile uint32_t CR;
    volatile uint32_t CSCR;
    volatile uint32_t FCR;
    volatile uint32_t SR;
    volatile uint32_t DCOM;
    volatile uint32_t CCMD;
    volatile uint32_t XCMD;
    uint8_t RESERVED0[8];
    volatile  uint32_t CLR;
    uint8_t RESERVED1[2012];
    volatile uint32_t EXAR;
} CM_QSPI_TypeDef;



 
typedef struct {
    volatile uint16_t RSTF0;
} CM_RMU_TypeDef;



 
typedef struct {
    volatile uint8_t  CR0;
    uint8_t RESERVED0[3];
    volatile uint8_t  CR1;
    uint8_t RESERVED1[3];
    volatile uint8_t  CR2;
    uint8_t RESERVED2[3];
    volatile uint8_t  CR3;
    uint8_t RESERVED3[3];
    volatile uint8_t  SEC;
    uint8_t RESERVED4[3];
    volatile uint8_t  MIN;
    uint8_t RESERVED5[3];
    volatile uint8_t  HOUR;
    uint8_t RESERVED6[3];
    volatile uint8_t  WEEK;
    uint8_t RESERVED7[3];
    volatile uint8_t  DAY;
    uint8_t RESERVED8[3];
    volatile uint8_t  MON;
    uint8_t RESERVED9[3];
    volatile uint8_t  YEAR;
    uint8_t RESERVED10[3];
    volatile uint8_t  ALMMIN;
    uint8_t RESERVED11[3];
    volatile uint8_t  ALMHOUR;
    uint8_t RESERVED12[3];
    volatile uint8_t  ALMWEEK;
    uint8_t RESERVED13[3];
    volatile uint8_t  ERRCRH;
    uint8_t RESERVED14[3];
    volatile uint8_t  ERRCRL;
} CM_RTC_TypeDef;



 
typedef struct {
    uint8_t RESERVED0[4];
    volatile uint16_t BLKSIZE;
    volatile uint16_t BLKCNT;
    volatile uint16_t ARG0;
    volatile uint16_t ARG1;
    volatile uint16_t TRANSMODE;
    volatile uint16_t CMD;
    volatile const  uint16_t RESP0;
    volatile const  uint16_t RESP1;
    volatile const  uint16_t RESP2;
    volatile const  uint16_t RESP3;
    volatile const  uint16_t RESP4;
    volatile const  uint16_t RESP5;
    volatile const  uint16_t RESP6;
    volatile const  uint16_t RESP7;
    volatile uint16_t BUF0;
    volatile uint16_t BUF1;
    volatile const  uint32_t PSTAT;
    volatile uint8_t  HOSTCON;
    volatile uint8_t  PWRCON;
    volatile uint8_t  BLKGPCON;
    uint8_t RESERVED1[1];
    volatile uint16_t CLKCON;
    volatile uint8_t  TOUTCON;
    volatile uint8_t  SFTRST;
    volatile uint16_t NORINTST;
    volatile uint16_t ERRINTST;
    volatile uint16_t NORINTSTEN;
    volatile uint16_t ERRINTSTEN;
    volatile uint16_t NORINTSGEN;
    volatile uint16_t ERRINTSGEN;
    volatile const  uint16_t ATCERRST;
    uint8_t RESERVED2[18];
    volatile  uint16_t FEA;
    volatile  uint16_t FEE;
} CM_SDIOC_TypeDef;



 
typedef struct {
    volatile uint32_t DR;
    volatile uint32_t CR1;
    uint8_t RESERVED0[4];
    volatile uint32_t CFG1;
    uint8_t RESERVED1[4];
    volatile uint32_t SR;
    volatile uint32_t CFG2;
} CM_SPI_TypeDef;



 
typedef struct {
    volatile uint32_t WTCR;
    volatile uint32_t WTPR;
    volatile uint32_t CKCR;
    volatile uint32_t CKPR;
    volatile uint32_t CKSR;
} CM_SRAMC_TypeDef;



 
typedef struct {
    uint8_t RESERVED0[4];
    volatile uint32_t SR;
    volatile uint32_t RR;
} CM_SWDT_TypeDef;



 
typedef struct {
    volatile uint32_t CNTAR;
    volatile uint32_t CNTBR;
    volatile uint32_t CMPAR;
    volatile uint32_t CMPBR;
    volatile uint32_t BCONR;
    volatile uint32_t STFLR;
} CM_TMR0_TypeDef;



 
typedef struct {
    uint8_t RESERVED0[2];
    volatile uint16_t OCCRUH;
    uint8_t RESERVED1[2];
    volatile uint16_t OCCRUL;
    uint8_t RESERVED2[2];
    volatile uint16_t OCCRVH;
    uint8_t RESERVED3[2];
    volatile uint16_t OCCRVL;
    uint8_t RESERVED4[2];
    volatile uint16_t OCCRWH;
    uint8_t RESERVED5[2];
    volatile uint16_t OCCRWL;
    volatile uint16_t OCSRU;
    volatile uint16_t OCERU;
    volatile uint16_t OCSRV;
    volatile uint16_t OCERV;
    volatile uint16_t OCSRW;
    volatile uint16_t OCERW;
    volatile uint16_t OCMRUH;
    uint8_t RESERVED6[2];
    volatile uint32_t OCMRUL;
    volatile uint16_t OCMRVH;
    uint8_t RESERVED7[2];
    volatile uint32_t OCMRVL;
    volatile uint16_t OCMRWH;
    uint8_t RESERVED8[2];
    volatile uint32_t OCMRWL;
    uint8_t RESERVED9[6];
    volatile uint16_t CPSR;
    uint8_t RESERVED10[2];
    volatile uint16_t CNTR;
    volatile uint16_t CCSR;
    volatile uint16_t CVPR;
    uint8_t RESERVED11[54];
    volatile uint16_t PFSRU;
    volatile uint16_t PDARU;
    volatile uint16_t PDBRU;
    uint8_t RESERVED12[2];
    volatile uint16_t PFSRV;
    volatile uint16_t PDARV;
    volatile uint16_t PDBRV;
    uint8_t RESERVED13[2];
    volatile uint16_t PFSRW;
    volatile uint16_t PDARW;
    volatile uint16_t PDBRW;
    volatile uint16_t POCRU;
    uint8_t RESERVED14[2];
    volatile uint16_t POCRV;
    uint8_t RESERVED15[2];
    volatile uint16_t POCRW;
    uint8_t RESERVED16[2];
    volatile uint16_t RCSR;
    uint8_t RESERVED17[12];
    volatile uint16_t SCCRUH;
    uint8_t RESERVED18[2];
    volatile uint16_t SCCRUL;
    uint8_t RESERVED19[2];
    volatile uint16_t SCCRVH;
    uint8_t RESERVED20[2];
    volatile uint16_t SCCRVL;
    uint8_t RESERVED21[2];
    volatile uint16_t SCCRWH;
    uint8_t RESERVED22[2];
    volatile uint16_t SCCRWL;
    volatile uint16_t SCSRUH;
    volatile uint16_t SCMRUH;
    volatile uint16_t SCSRUL;
    volatile uint16_t SCMRUL;
    volatile uint16_t SCSRVH;
    volatile uint16_t SCMRVH;
    volatile uint16_t SCSRVL;
    volatile uint16_t SCMRVL;
    volatile uint16_t SCSRWH;
    volatile uint16_t SCMRWH;
    volatile uint16_t SCSRWL;
    volatile uint16_t SCMRWL;
    uint8_t RESERVED23[16];
    volatile uint16_t ECSR;
} CM_TMR4_TypeDef;



 
typedef struct {
    volatile uint32_t ECER1;
    volatile uint32_t ECER2;
    volatile uint32_t ECER3;
} CM_TMR4_ECER_TypeDef;



 
typedef struct {
    volatile uint32_t CNTER;
    volatile uint32_t PERAR;
    volatile uint32_t PERBR;
    volatile uint32_t PERCR;
    volatile uint32_t GCMAR;
    volatile uint32_t GCMBR;
    volatile uint32_t GCMCR;
    volatile uint32_t GCMDR;
    volatile uint32_t GCMER;
    volatile uint32_t GCMFR;
    volatile uint32_t SCMAR;
    volatile uint32_t SCMBR;
    volatile uint32_t SCMCR;
    volatile uint32_t SCMDR;
    volatile uint32_t SCMER;
    volatile uint32_t SCMFR;
    volatile uint32_t DTUAR;
    volatile uint32_t DTDAR;
    volatile uint32_t DTUBR;
    volatile uint32_t DTDBR;
    volatile uint32_t GCONR;
    volatile uint32_t ICONR;
    volatile uint32_t PCONR;
    volatile uint32_t BCONR;
    volatile uint32_t DCONR;
    uint8_t RESERVED0[4];
    volatile uint32_t FCONR;
    volatile uint32_t VPERR;
    volatile uint32_t STFLR;
    volatile uint32_t HSTAR;
    volatile uint32_t HSTPR;
    volatile uint32_t HCLRR;
    volatile uint32_t HCPAR;
    volatile uint32_t HCPBR;
    volatile uint32_t HCUPR;
    volatile uint32_t HCDOR;
} CM_TMR6_TypeDef;



 
typedef struct {
    uint8_t RESERVED0[244];
    volatile uint32_t SSTAR;
    volatile uint32_t SSTPR;
    volatile uint32_t SCLRR;
} CM_TMR6_COMMON_TypeDef;



 
typedef struct {
    volatile uint16_t CNTER;
    uint8_t RESERVED0[2];
    volatile uint16_t PERAR;
    uint8_t RESERVED1[58];
    volatile uint16_t CMPAR1;
    uint8_t RESERVED2[2];
    volatile uint16_t CMPAR2;
    uint8_t RESERVED3[2];
    volatile uint16_t CMPAR3;
    uint8_t RESERVED4[2];
    volatile uint16_t CMPAR4;
    uint8_t RESERVED5[2];
    volatile uint16_t CMPAR5;
    uint8_t RESERVED6[2];
    volatile uint16_t CMPAR6;
    uint8_t RESERVED7[2];
    volatile uint16_t CMPAR7;
    uint8_t RESERVED8[2];
    volatile uint16_t CMPAR8;
    uint8_t RESERVED9[34];
    volatile uint8_t  BCSTRL;
    volatile uint8_t  BCSTRH;
    uint8_t RESERVED10[2];
    volatile uint16_t HCONR;
    uint8_t RESERVED11[2];
    volatile uint16_t HCUPR;
    uint8_t RESERVED12[2];
    volatile uint16_t HCDOR;
    uint8_t RESERVED13[2];
    volatile uint16_t ICONR;
    uint8_t RESERVED14[2];
    volatile uint16_t ECONR;
    uint8_t RESERVED15[2];
    volatile uint16_t FCONR;
    uint8_t RESERVED16[2];
    volatile uint16_t STFLR;
    uint8_t RESERVED17[34];
    volatile uint16_t BCONR1;
    uint8_t RESERVED18[6];
    volatile uint16_t BCONR2;
    uint8_t RESERVED19[6];
    volatile uint16_t BCONR3;
    uint8_t RESERVED20[6];
    volatile uint16_t BCONR4;
    uint8_t RESERVED21[38];
    volatile uint16_t CCONR1;
    uint8_t RESERVED22[2];
    volatile uint16_t CCONR2;
    uint8_t RESERVED23[2];
    volatile uint16_t CCONR3;
    uint8_t RESERVED24[2];
    volatile uint16_t CCONR4;
    uint8_t RESERVED25[2];
    volatile uint16_t CCONR5;
    uint8_t RESERVED26[2];
    volatile uint16_t CCONR6;
    uint8_t RESERVED27[2];
    volatile uint16_t CCONR7;
    uint8_t RESERVED28[2];
    volatile uint16_t CCONR8;
    uint8_t RESERVED29[34];
    volatile uint16_t PCONR1;
    uint8_t RESERVED30[2];
    volatile uint16_t PCONR2;
    uint8_t RESERVED31[2];
    volatile uint16_t PCONR3;
    uint8_t RESERVED32[2];
    volatile uint16_t PCONR4;
    uint8_t RESERVED33[2];
    volatile uint16_t PCONR5;
    uint8_t RESERVED34[2];
    volatile uint16_t PCONR6;
    uint8_t RESERVED35[2];
    volatile uint16_t PCONR7;
    uint8_t RESERVED36[2];
    volatile uint16_t PCONR8;
} CM_TMRA_TypeDef;



 
typedef struct {
    volatile uint32_t CR;
    volatile uint32_t MR;
    uint8_t RESERVED0[4];
    volatile const  uint32_t DR0;
    volatile const  uint32_t DR1;
} CM_TRNG_TypeDef;



 
typedef struct {
    volatile const  uint32_t SR;
    volatile uint16_t TDR;
    volatile const  uint16_t RDR;
    volatile uint32_t BRR;
    volatile uint32_t CR1;
    volatile uint32_t CR2;
    volatile uint32_t CR3;
    volatile uint32_t PR;
} CM_USART_TypeDef;



 
typedef struct {
    volatile uint32_t GVBUSCFG;
    uint8_t RESERVED0[4];
    volatile uint32_t GAHBCFG;
    volatile uint32_t GUSBCFG;
    volatile uint32_t GRSTCTL;
    volatile uint32_t GINTSTS;
    volatile uint32_t GINTMSK;
    volatile const  uint32_t GRXSTSR;
    volatile const  uint32_t GRXSTSP;
    volatile uint32_t GRXFSIZ;
    volatile uint32_t HNPTXFSIZ;
    volatile const  uint32_t HNPTXSTS;
    uint8_t RESERVED1[12];
    volatile uint32_t CID;
    uint8_t RESERVED2[192];
    volatile uint32_t HPTXFSIZ;
    volatile uint32_t DIEPTXF1;
    volatile uint32_t DIEPTXF2;
    volatile uint32_t DIEPTXF3;
    volatile uint32_t DIEPTXF4;
    volatile uint32_t DIEPTXF5;
    uint8_t RESERVED3[744];
    volatile uint32_t HCFG;
    volatile uint32_t HFIR;
    volatile const  uint32_t HFNUM;
    uint8_t RESERVED4[4];
    volatile const  uint32_t HPTXSTS;
    volatile const  uint32_t HAINT;
    volatile uint32_t HAINTMSK;
    uint8_t RESERVED5[36];
    volatile uint32_t HPRT;
    uint8_t RESERVED6[188];
    volatile uint32_t HCCHAR0;
    uint8_t RESERVED7[4];
    volatile uint32_t HCINT0;
    volatile uint32_t HCINTMSK0;
    volatile uint32_t HCTSIZ0;
    volatile uint32_t HCDMA0;
    uint8_t RESERVED8[8];
    volatile uint32_t HCCHAR1;
    uint8_t RESERVED9[4];
    volatile uint32_t HCINT1;
    volatile uint32_t HCINTMSK1;
    volatile uint32_t HCTSIZ1;
    volatile uint32_t HCDMA1;
    uint8_t RESERVED10[8];
    volatile uint32_t HCCHAR2;
    uint8_t RESERVED11[4];
    volatile uint32_t HCINT2;
    volatile uint32_t HCINTMSK2;
    volatile uint32_t HCTSIZ2;
    volatile uint32_t HCDMA2;
    uint8_t RESERVED12[8];
    volatile uint32_t HCCHAR3;
    uint8_t RESERVED13[4];
    volatile uint32_t HCINT3;
    volatile uint32_t HCINTMSK3;
    volatile uint32_t HCTSIZ3;
    volatile uint32_t HCDMA3;
    uint8_t RESERVED14[8];
    volatile uint32_t HCCHAR4;
    uint8_t RESERVED15[4];
    volatile uint32_t HCINT4;
    volatile uint32_t HCINTMSK4;
    volatile uint32_t HCTSIZ4;
    volatile uint32_t HCDMA4;
    uint8_t RESERVED16[8];
    volatile uint32_t HCCHAR5;
    uint8_t RESERVED17[4];
    volatile uint32_t HCINT5;
    volatile uint32_t HCINTMSK5;
    volatile uint32_t HCTSIZ5;
    volatile uint32_t HCDMA5;
    uint8_t RESERVED18[8];
    volatile uint32_t HCCHAR6;
    uint8_t RESERVED19[4];
    volatile uint32_t HCINT6;
    volatile uint32_t HCINTMSK6;
    volatile uint32_t HCTSIZ6;
    volatile uint32_t HCDMA6;
    uint8_t RESERVED20[8];
    volatile uint32_t HCCHAR7;
    uint8_t RESERVED21[4];
    volatile uint32_t HCINT7;
    volatile uint32_t HCINTMSK7;
    volatile uint32_t HCTSIZ7;
    volatile uint32_t HCDMA7;
    uint8_t RESERVED22[8];
    volatile uint32_t HCCHAR8;
    uint8_t RESERVED23[4];
    volatile uint32_t HCINT8;
    volatile uint32_t HCINTMSK8;
    volatile uint32_t HCTSIZ8;
    volatile uint32_t HCDMA8;
    uint8_t RESERVED24[8];
    volatile uint32_t HCCHAR9;
    uint8_t RESERVED25[4];
    volatile uint32_t HCINT9;
    volatile uint32_t HCINTMSK9;
    volatile uint32_t HCTSIZ9;
    volatile uint32_t HCDMA9;
    uint8_t RESERVED26[8];
    volatile uint32_t HCCHAR10;
    uint8_t RESERVED27[4];
    volatile uint32_t HCINT10;
    volatile uint32_t HCINTMSK10;
    volatile uint32_t HCTSIZ10;
    volatile uint32_t HCDMA10;
    uint8_t RESERVED28[8];
    volatile uint32_t HCCHAR11;
    uint8_t RESERVED29[4];
    volatile uint32_t HCINT11;
    volatile uint32_t HCINTMSK11;
    volatile uint32_t HCTSIZ11;
    volatile uint32_t HCDMA11;
    uint8_t RESERVED30[392];
    volatile uint32_t DCFG;
    volatile uint32_t DCTL;
    volatile const  uint32_t DSTS;
    uint8_t RESERVED31[4];
    volatile uint32_t DIEPMSK;
    volatile uint32_t DOEPMSK;
    volatile uint32_t DAINT;
    volatile uint32_t DAINTMSK;
    uint8_t RESERVED32[20];
    volatile uint32_t DIEPEMPMSK;
    uint8_t RESERVED33[200];
    volatile uint32_t DIEPCTL0;
    uint8_t RESERVED34[4];
    volatile uint32_t DIEPINT0;
    uint8_t RESERVED35[4];
    volatile uint32_t DIEPTSIZ0;
    volatile uint32_t DIEPDMA0;
    volatile const  uint32_t DTXFSTS0;
    uint8_t RESERVED36[4];
    volatile uint32_t DIEPCTL1;
    uint8_t RESERVED37[4];
    volatile uint32_t DIEPINT1;
    uint8_t RESERVED38[4];
    volatile uint32_t DIEPTSIZ1;
    volatile uint32_t DIEPDMA1;
    volatile const  uint32_t DTXFSTS1;
    uint8_t RESERVED39[4];
    volatile uint32_t DIEPCTL2;
    uint8_t RESERVED40[4];
    volatile uint32_t DIEPINT2;
    uint8_t RESERVED41[4];
    volatile uint32_t DIEPTSIZ2;
    volatile uint32_t DIEPDMA2;
    volatile const  uint32_t DTXFSTS2;
    uint8_t RESERVED42[4];
    volatile uint32_t DIEPCTL3;
    uint8_t RESERVED43[4];
    volatile uint32_t DIEPINT3;
    uint8_t RESERVED44[4];
    volatile uint32_t DIEPTSIZ3;
    volatile uint32_t DIEPDMA3;
    volatile const  uint32_t DTXFSTS3;
    uint8_t RESERVED45[4];
    volatile uint32_t DIEPCTL4;
    uint8_t RESERVED46[4];
    volatile uint32_t DIEPINT4;
    uint8_t RESERVED47[4];
    volatile uint32_t DIEPTSIZ4;
    volatile uint32_t DIEPDMA4;
    volatile const  uint32_t DTXFSTS4;
    uint8_t RESERVED48[4];
    volatile uint32_t DIEPCTL5;
    uint8_t RESERVED49[4];
    volatile uint32_t DIEPINT5;
    uint8_t RESERVED50[4];
    volatile uint32_t DIEPTSIZ5;
    volatile uint32_t DIEPDMA5;
    volatile const  uint32_t DTXFSTS5;
    uint8_t RESERVED51[324];
    volatile uint32_t DOEPCTL0;
    uint8_t RESERVED52[4];
    volatile uint32_t DOEPINT0;
    uint8_t RESERVED53[4];
    volatile uint32_t DOEPTSIZ0;
    volatile uint32_t DOEPDMA0;
    uint8_t RESERVED54[8];
    volatile uint32_t DOEPCTL1;
    uint8_t RESERVED55[4];
    volatile uint32_t DOEPINT1;
    uint8_t RESERVED56[4];
    volatile uint32_t DOEPTSIZ1;
    volatile uint32_t DOEPDMA1;
    uint8_t RESERVED57[8];
    volatile uint32_t DOEPCTL2;
    uint8_t RESERVED58[4];
    volatile uint32_t DOEPINT2;
    uint8_t RESERVED59[4];
    volatile uint32_t DOEPTSIZ2;
    volatile uint32_t DOEPDMA2;
    uint8_t RESERVED60[8];
    volatile uint32_t DOEPCTL3;
    uint8_t RESERVED61[4];
    volatile uint32_t DOEPINT3;
    uint8_t RESERVED62[4];
    volatile uint32_t DOEPTSIZ3;
    volatile uint32_t DOEPDMA3;
    uint8_t RESERVED63[8];
    volatile uint32_t DOEPCTL4;
    uint8_t RESERVED64[4];
    volatile uint32_t DOEPINT4;
    uint8_t RESERVED65[4];
    volatile uint32_t DOEPTSIZ4;
    volatile uint32_t DOEPDMA4;
    uint8_t RESERVED66[8];
    volatile uint32_t DOEPCTL5;
    uint8_t RESERVED67[4];
    volatile uint32_t DOEPINT5;
    uint8_t RESERVED68[4];
    volatile uint32_t DOEPTSIZ5;
    volatile uint32_t DOEPDMA5;
    uint8_t RESERVED69[584];
    volatile uint32_t GCCTL;
} CM_USBFS_TypeDef;



 
typedef struct {
    volatile uint32_t CR;
    volatile uint32_t SR;
    volatile uint32_t RR;
} CM_WDT_TypeDef;

 
 
 




 
 
 
#line 2631 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
 
 
#line 2709 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
 
 



 
 


 
#line 2735 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 



 
#line 2753 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 
#line 2823 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 2833 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 2843 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 2853 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 





 
#line 2873 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 
#line 2936 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 


 


 


 
#line 2966 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 




 
 





 


 


 


 


 


 


 


 




 
 


 
#line 3016 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3024 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3032 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3040 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3048 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3056 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3064 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3072 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3080 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3088 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3096 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 


 


 


 


 


 


 
#line 3141 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 


 


 
#line 3168 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3184 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3196 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3212 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3230 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3248 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3266 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
#line 3282 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 


 


 





 
#line 3318 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3326 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3334 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3352 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
#line 3369 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 




 
 
#line 3398 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3417 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 


 




 
 


 


 





 
#line 3454 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 


 
#line 3470 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3486 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 



 


 


 


 


 


 


 
#line 3518 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3526 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3534 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3544 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 






 
#line 3574 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3586 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3596 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 





 




 


 




 
 
#line 3629 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 




 
 





 
#line 3779 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3787 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 
#line 3802 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3818 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 
#line 3843 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3863 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 


 
#line 3883 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3897 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3911 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3925 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3939 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3953 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 






 
#line 3970 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 3982 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4006 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4024 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 





 





 





 





 





 





 





 



 
#line 4104 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 





 





 





 







 
 


 


 
#line 4155 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4163 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4179 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4193 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4201 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 


 


 


 


 
#line 4230 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 
#line 4257 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4265 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 
#line 4282 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4292 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4302 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 


 


 


 


 
#line 4325 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4345 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4357 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4365 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4373 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 
#line 4410 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4444 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4478 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4512 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4546 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4580 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4588 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4596 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4604 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4612 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4620 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4628 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4636 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4648 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4657 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4671 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4695 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4707 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 





 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 




 
 
#line 4815 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4845 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4855 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 



 
#line 4867 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4875 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
#line 4919 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4949 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 
#line 4963 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 4973 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 
#line 5012 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5026 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
#line 5046 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 




 
 
#line 5088 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5112 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 


 


 




 
 
#line 5143 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5163 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5183 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5203 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5215 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5253 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5287 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5321 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5333 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5399 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5465 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5531 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5597 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 
#line 5614 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 




 
 





 
#line 5649 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5681 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5689 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5697 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
#line 5763 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 
#line 5776 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 




 
 





 







 
 
#line 5839 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5881 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5913 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5923 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
#line 5941 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5949 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 5969 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 





 
#line 5988 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6000 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6016 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6026 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6038 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 



 
#line 6060 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6078 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6092 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6108 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6124 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6132 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 



 


 
#line 6147 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6161 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6175 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6187 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
 
#line 6222 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6230 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6248 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6262 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 



 





 
 
#line 6316 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 


 
#line 6336 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6350 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 





 





 
#line 6380 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 





 


 





 





 
#line 6412 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6422 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 




 
 


 


 


 


 
#line 6458 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6476 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 


 


 


 


 


 


 


 
#line 6538 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6550 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 
#line 6563 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6579 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 
#line 6590 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6610 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6628 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6646 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6664 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6682 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6700 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6714 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6728 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6746 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 


 
#line 6784 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6806 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6822 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 6845 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 
#line 6866 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
#line 6882 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
#line 6900 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 
#line 6911 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 




 
 


 


 


 


 
#line 6975 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 







 
 


 


 


 


 


 


 
#line 7020 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7050 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7084 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7150 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 
#line 7178 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7188 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 


 


 


 


 


 


 
#line 7227 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7259 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 


 


 


 


 
#line 7299 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7307 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
 




 
 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 
#line 7398 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7426 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7472 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7502 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7512 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7538 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7550 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7582 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7606 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7630 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7654 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7676 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7698 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7728 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7758 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 
#line 7769 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7777 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7785 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 


 


 


 
#line 7809 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7821 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7849 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7877 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7905 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7923 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7941 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7955 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7973 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 7981 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8001 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8025 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"



 
 





 





 


 




 
 
#line 8067 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 


 





 
#line 8126 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8136 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8144 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 






 
 





 
#line 8170 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8182 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8200 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8252 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8302 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8312 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8322 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 





 
#line 8339 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 





 





 





 


 





 
#line 8377 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 


 
#line 8405 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8425 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8445 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8465 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8473 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 
#line 8486 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8506 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8516 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8530 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8540 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 





 


 
#line 8577 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8591 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 


 


 
#line 8631 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 
#line 8659 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8671 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8679 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 
#line 8710 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 





 







 
 
#line 8739 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 
#line 8747 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"

 


 
 
 

typedef struct {
    volatile uint32_t STRT;
    uint32_t RESERVED0[7];
} stc_adc_str_bit_t;

typedef struct {
    uint32_t RESERVED0[6];
    volatile uint32_t CLREN;
    volatile uint32_t DFMT;
    uint32_t RESERVED1[8];
} stc_adc_cr0_bit_t;

typedef struct {
    uint32_t RESERVED0[2];
    volatile uint32_t RSCHSEL;
    uint32_t RESERVED1[13];
} stc_adc_cr1_bit_t;

typedef struct {
    uint32_t RESERVED0[7];
    volatile uint32_t TRGENA;
    uint32_t RESERVED1[7];
    volatile uint32_t TRGENB;
} stc_adc_trgsr_bit_t;

typedef struct {
    volatile uint32_t EOCAF;
    volatile uint32_t EOCBF;
    uint32_t RESERVED0[6];
} stc_adc_isr_bit_t;

typedef struct {
    volatile uint32_t EOCAIEN;
    volatile uint32_t EOCBIEN;
    uint32_t RESERVED0[6];
} stc_adc_icr_bit_t;

typedef struct {
    volatile uint32_t SYNCEN;
    uint32_t RESERVED0[15];
} stc_adc_synccr_bit_t;

typedef struct {
    volatile uint32_t AWDEN;
    uint32_t RESERVED0[3];
    volatile uint32_t AWDMD;
    uint32_t RESERVED1[3];
    volatile uint32_t AWDIEN;
    uint32_t RESERVED2[7];
} stc_adc_awdcr_bit_t;

typedef struct {
    volatile uint32_t PGAVSSEN;
    uint32_t RESERVED0[15];
} stc_adc_pgainsr1_bit_t;

typedef struct {
    volatile uint32_t START;
    volatile uint32_t MODE;
    uint32_t RESERVED0[30];
} stc_aes_cr_bit_t;

typedef struct {
    volatile  uint32_t STRG;
    uint32_t RESERVED0[31];
} stc_aos_intsfttrg_bit_t;

typedef struct {
    volatile uint32_t NFEN1;
    uint32_t RESERVED0[7];
    volatile uint32_t NFEN2;
    uint32_t RESERVED1[7];
    volatile uint32_t NFEN3;
    uint32_t RESERVED2[7];
    volatile uint32_t NFEN4;
    uint32_t RESERVED3[7];
} stc_aos_pevntnfcr_bit_t;

typedef struct {
    volatile uint32_t BUSOFF;
    volatile const  uint32_t TACTIVE;
    volatile const  uint32_t RACTIVE;
    volatile uint32_t TSSS;
    volatile uint32_t TPSS;
    volatile uint32_t LBMI;
    volatile uint32_t LBME;
    volatile uint32_t RESET;
} stc_can_cfg_stat_bit_t;

typedef struct {
    volatile uint32_t TSA;
    volatile uint32_t TSALL;
    volatile uint32_t TSONE;
    volatile uint32_t TPA;
    volatile uint32_t TPE;
    uint32_t RESERVED0[1];
    volatile uint32_t LOM;
    volatile uint32_t TBSEL;
} stc_can_tcmd_bit_t;

typedef struct {
    uint32_t RESERVED0[4];
    volatile uint32_t TTTBM;
    volatile uint32_t TSMODE;
    volatile uint32_t TSNEXT;
    uint32_t RESERVED1[1];
} stc_can_tctrl_bit_t;

typedef struct {
    uint32_t RESERVED0[3];
    volatile uint32_t RBALL;
    volatile uint32_t RREL;
    volatile const  uint32_t ROV;
    volatile uint32_t ROM;
    volatile uint32_t SACK;
} stc_can_rctrl_bit_t;

typedef struct {
    volatile const  uint32_t TSFF;
    volatile uint32_t EIE;
    volatile uint32_t TSIE;
    volatile uint32_t TPIE;
    volatile uint32_t RAFIE;
    volatile uint32_t RFIE;
    volatile uint32_t ROIE;
    volatile uint32_t RIE;
} stc_can_rtie_bit_t;

typedef struct {
    volatile uint32_t AIF;
    volatile uint32_t EIF;
    volatile uint32_t TSIF;
    volatile uint32_t TPIF;
    volatile uint32_t RAFIF;
    volatile uint32_t RFIF;
    volatile uint32_t ROIF;
    volatile uint32_t RIF;
} stc_can_rtif_bit_t;

typedef struct {
    volatile uint32_t BEIF;
    volatile uint32_t BEIE;
    volatile uint32_t ALIF;
    volatile uint32_t ALIE;
    volatile uint32_t EPIF;
    volatile uint32_t EPIE;
    volatile const  uint32_t EPASS;
    volatile const  uint32_t EWARN;
} stc_can_errint_bit_t;

typedef struct {
    uint32_t RESERVED0[5];
    volatile uint32_t SELMASK;
    uint32_t RESERVED1[2];
} stc_can_acfctrl_bit_t;

typedef struct {
    volatile uint32_t AE_1;
    volatile uint32_t AE_2;
    volatile uint32_t AE_3;
    volatile uint32_t AE_4;
    volatile uint32_t AE_5;
    volatile uint32_t AE_6;
    volatile uint32_t AE_7;
    volatile uint32_t AE_8;
} stc_can_acfen_bit_t;

typedef struct {
    uint32_t RESERVED0[29];
    volatile uint32_t AIDE;
    volatile uint32_t AIDEE;
    uint32_t RESERVED1[1];
} stc_can_acf_bit_t;

typedef struct {
    uint32_t RESERVED0[6];
    volatile uint32_t TBF;
    volatile uint32_t TBE;
} stc_can_tbslot_bit_t;

typedef struct {
    volatile uint32_t TTEN;
    uint32_t RESERVED0[2];
    volatile uint32_t TTIF;
    volatile uint32_t TTIE;
    volatile uint32_t TEIF;
    volatile uint32_t WTIF;
    volatile uint32_t WTIE;
} stc_can_ttcfg_bit_t;

typedef struct {
    uint32_t RESERVED0[31];
    volatile uint32_t REF_IDE;
} stc_can_ref_msg_bit_t;

typedef struct {
    uint32_t RESERVED0[7];
    volatile uint32_t IEN;
    volatile uint32_t CVSEN;
    uint32_t RESERVED1[3];
    volatile uint32_t OUTEN;
    volatile uint32_t INV;
    volatile uint32_t CMPOE;
    volatile uint32_t CMPON;
} stc_cmp_ctrl_bit_t;

typedef struct {
    volatile uint32_t RVSL0;
    volatile uint32_t RVSL1;
    volatile uint32_t RVSL2;
    volatile uint32_t RVSL3;
    uint32_t RESERVED0[4];
    volatile uint32_t CVSL0;
    volatile uint32_t CVSL1;
    volatile uint32_t CVSL2;
    volatile uint32_t CVSL3;
    volatile uint32_t C4SL0;
    volatile uint32_t C4SL1;
    volatile uint32_t C4SL2;
    uint32_t RESERVED1[1];
} stc_cmp_vltsel_bit_t;

typedef struct {
    volatile const  uint32_t OMON;
    uint32_t RESERVED0[15];
} stc_cmp_outmon_bit_t;

typedef struct {
    volatile uint32_t DA1EN;
    volatile uint32_t DA2EN;
    uint32_t RESERVED0[14];
} stc_cmp_common_dacr_bit_t;

typedef struct {
    volatile uint32_t DA1SW;
    volatile uint32_t DA2SW;
    uint32_t RESERVED0[2];
    volatile uint32_t VREFSW;
    uint32_t RESERVED1[11];
} stc_cmp_common_rvadc_bit_t;

typedef struct {
    uint32_t RESERVED0[1];
    volatile uint32_t CR;
    volatile uint32_t REFIN;
    volatile uint32_t REFOUT;
    volatile uint32_t XOROUT;
    uint32_t RESERVED1[27];
} stc_crc_cr_bit_t;

typedef struct {
    uint32_t RESERVED0[16];
    volatile const  uint32_t CRCFLAG_16;
    uint32_t RESERVED1[15];
} stc_crc_reslt_bit_t;

typedef struct {
    volatile const  uint32_t CRCFLAG_32;
    uint32_t RESERVED0[31];
} stc_crc_flg_bit_t;

typedef struct {
    volatile uint32_t CDBGPWRUPREQ;
    volatile uint32_t CDBGPWRUPACK;
    uint32_t RESERVED0[30];
} stc_dbgc_mcudbgstat_bit_t;

typedef struct {
    volatile uint32_t SWDTSTP;
    volatile uint32_t WDTSTP;
    volatile uint32_t RTCSTP;
    uint32_t RESERVED0[11];
    volatile uint32_t TMR01STP;
    volatile uint32_t TMR02STP;
    uint32_t RESERVED1[4];
    volatile uint32_t TMR41STP;
    volatile uint32_t TMR42STP;
    volatile uint32_t TMR43STP;
    volatile uint32_t TM61STP;
    volatile uint32_t TM62STP;
    volatile uint32_t TMR63STP;
    volatile uint32_t TMRA1STP;
    volatile uint32_t TMRA2STP;
    volatile uint32_t TMRA3STP;
    volatile uint32_t TMRA4STP;
    volatile uint32_t TMRA5STP;
    volatile uint32_t TMRA6STP;
} stc_dbgc_mcustpctl_bit_t;

typedef struct {
    uint32_t RESERVED0[2];
    volatile uint32_t TRACEIOEN;
    uint32_t RESERVED1[29];
} stc_dbgc_mcutracectl_bit_t;

typedef struct {
    uint32_t RESERVED0[8];
    volatile uint32_t COMPTRG;
    uint32_t RESERVED1[22];
    volatile uint32_t INTEN;
} stc_dcu_ctl_bit_t;

typedef struct {
    volatile  uint32_t FLAG_OP;
    volatile  uint32_t FLAG_LS2;
    volatile  uint32_t FLAG_EQ2;
    volatile  uint32_t FLAG_GT2;
    volatile  uint32_t FLAG_LS1;
    volatile  uint32_t FLAG_EQ1;
    volatile  uint32_t FLAG_GT1;
    uint32_t RESERVED0[25];
} stc_dcu_flag_bit_t;

typedef struct {
    volatile  uint32_t CLR_OP;
    volatile  uint32_t CLR_LS2;
    volatile  uint32_t CLR_EQ2;
    volatile  uint32_t CLR_GT2;
    volatile  uint32_t CLR_LS1;
    volatile  uint32_t CLR_EQ1;
    volatile  uint32_t CLR_GT1;
    uint32_t RESERVED0[25];
} stc_dcu_flagclr_bit_t;

typedef struct {
    volatile uint32_t SEL_OP;
    volatile uint32_t SEL_LS2;
    volatile uint32_t SEL_EQ2;
    volatile uint32_t SEL_GT2;
    volatile uint32_t SEL_LS1;
    volatile uint32_t SEL_EQ1;
    volatile uint32_t SEL_GT1;
    uint32_t RESERVED0[25];
} stc_dcu_intevtsel_bit_t;

typedef struct {
    volatile uint32_t EN;
    uint32_t RESERVED0[31];
} stc_dma_en_bit_t;

typedef struct {
    volatile const  uint32_t TRNERR0;
    volatile const  uint32_t TRNERR1;
    volatile const  uint32_t TRNERR2;
    volatile const  uint32_t TRNERR3;
    uint32_t RESERVED0[12];
    volatile const  uint32_t REQERR0;
    volatile const  uint32_t REQERR1;
    volatile const  uint32_t REQERR2;
    volatile const  uint32_t REQERR3;
    uint32_t RESERVED1[12];
} stc_dma_intstat0_bit_t;

typedef struct {
    volatile const  uint32_t TC0;
    volatile const  uint32_t TC1;
    volatile const  uint32_t TC2;
    volatile const  uint32_t TC3;
    uint32_t RESERVED0[12];
    volatile const  uint32_t BTC0;
    volatile const  uint32_t BTC1;
    volatile const  uint32_t BTC2;
    volatile const  uint32_t BTC3;
    uint32_t RESERVED1[12];
} stc_dma_intstat1_bit_t;

typedef struct {
    volatile uint32_t MSKTRNERR0;
    volatile uint32_t MSKTRNERR1;
    volatile uint32_t MSKTRNERR2;
    volatile uint32_t MSKTRNERR3;
    uint32_t RESERVED0[12];
    volatile uint32_t MSKREQERR0;
    volatile uint32_t MSKREQERR1;
    volatile uint32_t MSKREQERR2;
    volatile uint32_t MSKREQERR3;
    uint32_t RESERVED1[12];
} stc_dma_intmask0_bit_t;

typedef struct {
    volatile uint32_t MSKTC0;
    volatile uint32_t MSKTC1;
    volatile uint32_t MSKTC2;
    volatile uint32_t MSKTC3;
    uint32_t RESERVED0[12];
    volatile uint32_t MSKBTC0;
    volatile uint32_t MSKBTC1;
    volatile uint32_t MSKBTC2;
    volatile uint32_t MSKBTC3;
    uint32_t RESERVED1[12];
} stc_dma_intmask1_bit_t;

typedef struct {
    volatile  uint32_t CLRTRNERR0;
    volatile  uint32_t CLRTRNERR1;
    volatile  uint32_t CLRTRNERR2;
    volatile  uint32_t CLRTRNERR3;
    uint32_t RESERVED0[12];
    volatile  uint32_t CLRREQERR0;
    volatile  uint32_t CLRREQERR1;
    volatile  uint32_t CLRREQERR2;
    volatile  uint32_t CLRREQERR3;
    uint32_t RESERVED1[12];
} stc_dma_intclr0_bit_t;

typedef struct {
    volatile  uint32_t CLRTC0;
    volatile  uint32_t CLRTC1;
    volatile  uint32_t CLRTC2;
    volatile  uint32_t CLRTC3;
    uint32_t RESERVED0[12];
    volatile  uint32_t CLRBTC0;
    volatile  uint32_t CLRBTC1;
    volatile  uint32_t CLRBTC2;
    volatile  uint32_t CLRBTC3;
    uint32_t RESERVED1[12];
} stc_dma_intclr1_bit_t;

typedef struct {
    uint32_t RESERVED0[15];
    volatile const  uint32_t RCFGREQ;
    uint32_t RESERVED1[16];
} stc_dma_reqstat_bit_t;

typedef struct {
    volatile const  uint32_t DMAACT;
    volatile const  uint32_t RCFGACT;
    uint32_t RESERVED0[30];
} stc_dma_chstat_bit_t;

typedef struct {
    volatile uint32_t RCFGEN;
    volatile uint32_t RCFGLLP;
    uint32_t RESERVED0[30];
} stc_dma_rcfgctl_bit_t;

typedef struct {
    volatile  uint32_t SWREQ0;
    volatile  uint32_t SWREQ1;
    volatile  uint32_t SWREQ2;
    volatile  uint32_t SWREQ3;
    volatile  uint32_t SWREQ4;
    volatile  uint32_t SWREQ5;
    volatile  uint32_t SWREQ6;
    volatile  uint32_t SWREQ7;
    uint32_t RESERVED0[7];
    volatile  uint32_t SWRCFGREQ;
    uint32_t RESERVED1[16];
} stc_dma_swreq_bit_t;

typedef struct {
    uint32_t RESERVED0[4];
    volatile uint32_t SRPTEN;
    volatile uint32_t DRPTEN;
    volatile uint32_t SNSEQEN;
    volatile uint32_t DNSEQEN;
    uint32_t RESERVED1[2];
    volatile uint32_t LLPEN;
    volatile uint32_t LLPRUN;
    volatile uint32_t IE;
    uint32_t RESERVED2[19];
} stc_dma_chctl_bit_t;

typedef struct {
    volatile uint32_t FSTP;
    uint32_t RESERVED0[31];
} stc_efm_fstp_bit_t;

typedef struct {
    volatile uint32_t SLPMD;
    uint32_t RESERVED0[7];
    volatile uint32_t LVM;
    uint32_t RESERVED1[7];
    volatile uint32_t CACHE;
    uint32_t RESERVED2[7];
    volatile uint32_t CRST;
    uint32_t RESERVED3[7];
} stc_efm_frmc_bit_t;

typedef struct {
    volatile uint32_t PEMODE;
    uint32_t RESERVED0[7];
    volatile uint32_t BUSHLDCTL;
    uint32_t RESERVED1[23];
} stc_efm_fwmc_bit_t;

typedef struct {
    volatile const  uint32_t PEWERR;
    volatile const  uint32_t PEPRTERR;
    volatile const  uint32_t PGSZERR;
    volatile const  uint32_t PGMISMTCH;
    volatile const  uint32_t OPTEND;
    volatile const  uint32_t COLERR;
    uint32_t RESERVED0[2];
    volatile const  uint32_t RDY;
    uint32_t RESERVED1[23];
} stc_efm_fsr_bit_t;

typedef struct {
    volatile uint32_t PEWERRCLR;
    volatile uint32_t PEPRTERRCLR;
    volatile uint32_t PGSZERRCLR;
    volatile uint32_t PGMISMTCHCLR;
    volatile uint32_t OPTENDCLR;
    volatile uint32_t COLERRCLR;
    uint32_t RESERVED0[26];
} stc_efm_fsclr_bit_t;

typedef struct {
    volatile uint32_t PEERRITE;
    volatile uint32_t OPTENDITE;
    volatile uint32_t COLERRITE;
    uint32_t RESERVED0[29];
} stc_efm_fite_bit_t;

typedef struct {
    volatile const  uint32_t FSWP;
    uint32_t RESERVED0[31];
} stc_efm_fswp_bit_t;

typedef struct {
    uint32_t RESERVED0[31];
    volatile uint32_t EN;
} stc_efm_mmf_remcr_bit_t;

typedef struct {
    volatile uint32_t PORTINEN;
    volatile uint32_t CMPEN1;
    volatile uint32_t CMPEN2;
    volatile uint32_t CMPEN3;
    uint32_t RESERVED0[1];
    volatile uint32_t OSCSTPEN;
    volatile uint32_t PWMSEN0;
    volatile uint32_t PWMSEN1;
    volatile uint32_t PWMSEN2;
    uint32_t RESERVED1[21];
    volatile uint32_t NFEN;
    volatile uint32_t INVSEL;
} stc_emb_ctl_bit_t;

typedef struct {
    volatile uint32_t PWMLV0;
    volatile uint32_t PWMLV1;
    volatile uint32_t PWMLV2;
    uint32_t RESERVED0[29];
} stc_emb_pwmlv_bit_t;

typedef struct {
    volatile uint32_t SOE;
    uint32_t RESERVED0[31];
} stc_emb_soe_bit_t;

typedef struct {
    volatile const  uint32_t PORTINF;
    volatile const  uint32_t PWMSF;
    volatile const  uint32_t CMPF;
    volatile const  uint32_t OSF;
    volatile const  uint32_t PORTINST;
    volatile const  uint32_t PWMST;
    uint32_t RESERVED0[26];
} stc_emb_stat_bit_t;

typedef struct {
    volatile  uint32_t PORTINFCLR;
    volatile  uint32_t PWMSFCLR;
    volatile  uint32_t CMPFCLR;
    volatile  uint32_t OSFCLR;
    uint32_t RESERVED0[28];
} stc_emb_statclr_bit_t;

typedef struct {
    volatile uint32_t PORTININTEN;
    volatile uint32_t PWMSINTEN;
    volatile uint32_t CMPINTEN;
    volatile uint32_t OSINTEN;
    uint32_t RESERVED0[28];
} stc_emb_inten_bit_t;

typedef struct {
    volatile uint32_t START;
    uint32_t RESERVED0[31];
} stc_fcm_str_bit_t;

typedef struct {
    uint32_t RESERVED0[7];
    volatile uint32_t INEXS;
    uint32_t RESERVED1[7];
    volatile uint32_t EXREFE;
    uint32_t RESERVED2[16];
} stc_fcm_rccr_bit_t;

typedef struct {
    volatile uint32_t ERRIE;
    volatile uint32_t MENDIE;
    volatile uint32_t OVFIE;
    uint32_t RESERVED0[1];
    volatile uint32_t ERRINTRS;
    uint32_t RESERVED1[2];
    volatile uint32_t ERRE;
    uint32_t RESERVED2[24];
} stc_fcm_rier_bit_t;

typedef struct {
    volatile const  uint32_t ERRF;
    volatile const  uint32_t MENDF;
    volatile const  uint32_t OVF;
    uint32_t RESERVED0[29];
} stc_fcm_sr_bit_t;

typedef struct {
    volatile  uint32_t ERRFCLR;
    volatile  uint32_t MENDFCLR;
    volatile  uint32_t OVFCLR;
    uint32_t RESERVED0[29];
} stc_fcm_clr_bit_t;

typedef struct {
    volatile const  uint32_t PIN00;
    volatile const  uint32_t PIN01;
    volatile const  uint32_t PIN02;
    volatile const  uint32_t PIN03;
    volatile const  uint32_t PIN04;
    volatile const  uint32_t PIN05;
    volatile const  uint32_t PIN06;
    volatile const  uint32_t PIN07;
    volatile const  uint32_t PIN08;
    volatile const  uint32_t PIN09;
    volatile const  uint32_t PIN10;
    volatile const  uint32_t PIN11;
    volatile const  uint32_t PIN12;
    volatile const  uint32_t PIN13;
    volatile const  uint32_t PIN14;
    volatile const  uint32_t PIN15;
} stc_gpio_pidr_bit_t;

typedef struct {
    volatile uint32_t POUT00;
    volatile uint32_t POUT01;
    volatile uint32_t POUT02;
    volatile uint32_t POUT03;
    volatile uint32_t POUT04;
    volatile uint32_t POUT05;
    volatile uint32_t POUT06;
    volatile uint32_t POUT07;
    volatile uint32_t POUT08;
    volatile uint32_t POUT09;
    volatile uint32_t POUT10;
    volatile uint32_t POUT11;
    volatile uint32_t POUT12;
    volatile uint32_t POUT13;
    volatile uint32_t POUT14;
    volatile uint32_t POUT15;
} stc_gpio_podr_bit_t;

typedef struct {
    volatile uint32_t POUTE00;
    volatile uint32_t POUTE01;
    volatile uint32_t POUTE02;
    volatile uint32_t POUTE03;
    volatile uint32_t POUTE04;
    volatile uint32_t POUTE05;
    volatile uint32_t POUTE06;
    volatile uint32_t POUTE07;
    volatile uint32_t POUTE08;
    volatile uint32_t POUTE09;
    volatile uint32_t POUTE10;
    volatile uint32_t POUTE11;
    volatile uint32_t POUTE12;
    volatile uint32_t POUTE13;
    volatile uint32_t POUTE14;
    volatile uint32_t POUTE15;
} stc_gpio_poer_bit_t;

typedef struct {
    volatile uint32_t POS00;
    volatile uint32_t POS01;
    volatile uint32_t POS02;
    volatile uint32_t POS03;
    volatile uint32_t POS04;
    volatile uint32_t POS05;
    volatile uint32_t POS06;
    volatile uint32_t POS07;
    volatile uint32_t POS08;
    volatile uint32_t POS09;
    volatile uint32_t POS10;
    volatile uint32_t POS11;
    volatile uint32_t POS12;
    volatile uint32_t POS13;
    volatile uint32_t POS14;
    volatile uint32_t POS15;
} stc_gpio_posr_bit_t;

typedef struct {
    volatile uint32_t POR00;
    volatile uint32_t POR01;
    volatile uint32_t POR02;
    volatile uint32_t POR03;
    volatile uint32_t POR04;
    volatile uint32_t POR05;
    volatile uint32_t POR06;
    volatile uint32_t POR07;
    volatile uint32_t POR08;
    volatile uint32_t POR09;
    volatile uint32_t POR10;
    volatile uint32_t POR11;
    volatile uint32_t POR12;
    volatile uint32_t POR13;
    volatile uint32_t POR14;
    volatile uint32_t POR15;
} stc_gpio_porr_bit_t;

typedef struct {
    volatile uint32_t POT00;
    volatile uint32_t POT01;
    volatile uint32_t POT02;
    volatile uint32_t POT03;
    volatile uint32_t POT04;
    volatile uint32_t POT05;
    volatile uint32_t POT06;
    volatile uint32_t POT07;
    volatile uint32_t POT08;
    volatile uint32_t POT09;
    volatile uint32_t POT10;
    volatile uint32_t POT11;
    volatile uint32_t POT12;
    volatile uint32_t POT13;
    volatile uint32_t POT14;
    volatile uint32_t POT15;
} stc_gpio_potr_bit_t;

typedef struct {
    volatile const  uint32_t PIN00;
    volatile const  uint32_t PIN01;
    volatile const  uint32_t PIN02;
    uint32_t RESERVED0[13];
} stc_gpio_pidrh_bit_t;

typedef struct {
    volatile uint32_t POUT00;
    volatile uint32_t POUT01;
    volatile uint32_t POUT02;
    uint32_t RESERVED0[13];
} stc_gpio_podrh_bit_t;

typedef struct {
    volatile uint32_t POUTE00;
    volatile uint32_t POUTE01;
    volatile uint32_t POUTE02;
    uint32_t RESERVED0[13];
} stc_gpio_poerh_bit_t;

typedef struct {
    volatile uint32_t POS00;
    volatile uint32_t POS01;
    volatile uint32_t POS02;
    uint32_t RESERVED0[13];
} stc_gpio_posrh_bit_t;

typedef struct {
    volatile uint32_t POR00;
    volatile uint32_t POR01;
    volatile uint32_t POR02;
    uint32_t RESERVED0[13];
} stc_gpio_porrh_bit_t;

typedef struct {
    volatile uint32_t POT00;
    volatile uint32_t POT01;
    volatile uint32_t POT02;
    uint32_t RESERVED0[13];
} stc_gpio_potrh_bit_t;

typedef struct {
    volatile uint32_t WE;
    uint32_t RESERVED0[15];
} stc_gpio_pwpr_bit_t;

typedef struct {
    volatile uint32_t POUT;
    volatile uint32_t POUTE;
    volatile uint32_t NOD;
    uint32_t RESERVED0[3];
    volatile uint32_t PUU;
    uint32_t RESERVED1[1];
    volatile const  uint32_t PIN;
    volatile uint32_t INVE;
    uint32_t RESERVED2[2];
    volatile uint32_t INTE;
    uint32_t RESERVED3[1];
    volatile uint32_t LTE;
    volatile uint32_t DDIS;
} stc_gpio_pcr_bit_t;

typedef struct {
    uint32_t RESERVED0[8];
    volatile uint32_t BFE;
    uint32_t RESERVED1[7];
} stc_gpio_pfsr_bit_t;

typedef struct {
    volatile uint32_t START;
    volatile uint32_t FST_GRP;
    uint32_t RESERVED0[30];
} stc_hash_cr_bit_t;

typedef struct {
    volatile uint32_t PE;
    volatile uint32_t SMBUS;
    volatile uint32_t SMBALRTEN;
    volatile uint32_t SMBDEFAULTEN;
    volatile uint32_t SMBHOSTEN;
    uint32_t RESERVED0[1];
    volatile uint32_t GCEN;
    volatile uint32_t RESTART;
    volatile uint32_t START;
    volatile uint32_t STOP;
    volatile uint32_t ACK;
    uint32_t RESERVED1[4];
    volatile uint32_t SWRST;
    uint32_t RESERVED2[16];
} stc_i2c_cr1_bit_t;

typedef struct {
    volatile uint32_t STARTIE;
    volatile uint32_t SLADDR0IE;
    volatile uint32_t SLADDR1IE;
    volatile uint32_t TENDIE;
    volatile uint32_t STOPIE;
    uint32_t RESERVED0[1];
    volatile uint32_t RFULLIE;
    volatile uint32_t TEMPTYIE;
    uint32_t RESERVED1[1];
    volatile uint32_t ARLOIE;
    uint32_t RESERVED2[2];
    volatile uint32_t NACKIE;
    uint32_t RESERVED3[1];
    volatile uint32_t TMOUTIE;
    uint32_t RESERVED4[5];
    volatile uint32_t GENCALLIE;
    volatile uint32_t SMBDEFAULTIE;
    volatile uint32_t SMBHOSTIE;
    volatile uint32_t SMBALRTIE;
    uint32_t RESERVED5[8];
} stc_i2c_cr2_bit_t;

typedef struct {
    volatile uint32_t TMOUTEN;
    volatile uint32_t LTMOUT;
    volatile uint32_t HTMOUT;
    uint32_t RESERVED0[4];
    volatile uint32_t FACKEN;
    uint32_t RESERVED1[24];
} stc_i2c_cr3_bit_t;

typedef struct {
    uint32_t RESERVED0[10];
    volatile uint32_t BUSWAIT;
    uint32_t RESERVED1[21];
} stc_i2c_cr4_bit_t;

typedef struct {
    uint32_t RESERVED0[12];
    volatile uint32_t SLADDR0EN;
    uint32_t RESERVED1[2];
    volatile uint32_t ADDRMOD0;
    uint32_t RESERVED2[16];
} stc_i2c_slr0_bit_t;

typedef struct {
    uint32_t RESERVED0[12];
    volatile uint32_t SLADDR1EN;
    uint32_t RESERVED1[2];
    volatile uint32_t ADDRMOD1;
    uint32_t RESERVED2[16];
} stc_i2c_slr1_bit_t;

typedef struct {
    volatile uint32_t STARTF;
    volatile uint32_t SLADDR0F;
    volatile uint32_t SLADDR1F;
    volatile uint32_t TENDF;
    volatile uint32_t STOPF;
    uint32_t RESERVED0[1];
    volatile uint32_t RFULLF;
    volatile uint32_t TEMPTYF;
    uint32_t RESERVED1[1];
    volatile uint32_t ARLOF;
    volatile uint32_t ACKRF;
    uint32_t RESERVED2[1];
    volatile uint32_t NACKF;
    uint32_t RESERVED3[1];
    volatile uint32_t TMOUTF;
    uint32_t RESERVED4[1];
    volatile uint32_t MSL;
    volatile uint32_t BUSY;
    volatile uint32_t TRA;
    uint32_t RESERVED5[1];
    volatile uint32_t GENCALLF;
    volatile uint32_t SMBDEFAULTF;
    volatile uint32_t SMBHOSTF;
    volatile uint32_t SMBALRTF;
    uint32_t RESERVED6[8];
} stc_i2c_sr_bit_t;

typedef struct {
    volatile  uint32_t STARTFCLR;
    volatile  uint32_t SLADDR0FCLR;
    volatile  uint32_t SLADDR1FCLR;
    volatile  uint32_t TENDFCLR;
    volatile  uint32_t STOPFCLR;
    uint32_t RESERVED0[1];
    volatile  uint32_t RFULLFCLR;
    volatile  uint32_t TEMPTYFCLR;
    uint32_t RESERVED1[1];
    volatile  uint32_t ARLOFCLR;
    uint32_t RESERVED2[2];
    volatile  uint32_t NACKFCLR;
    uint32_t RESERVED3[1];
    volatile  uint32_t TMOUTFCLR;
    uint32_t RESERVED4[5];
    volatile  uint32_t GENCALLFCLR;
    volatile  uint32_t SMBDEFAULTFCLR;
    volatile  uint32_t SMBHOSTFCLR;
    volatile  uint32_t SMBALRTFCLR;
    uint32_t RESERVED5[8];
} stc_i2c_clr_bit_t;

typedef struct {
    uint32_t RESERVED0[4];
    volatile uint32_t DNFEN;
    volatile uint32_t ANFEN;
    uint32_t RESERVED1[26];
} stc_i2c_fltr_bit_t;

typedef struct {
    volatile uint32_t TXE;
    volatile uint32_t TXIE;
    volatile uint32_t RXE;
    volatile uint32_t RXIE;
    volatile uint32_t EIE;
    volatile uint32_t WMS;
    volatile uint32_t ODD;
    volatile uint32_t MCKOE;
    uint32_t RESERVED0[8];
    volatile uint32_t FIFOR;
    uint32_t RESERVED1[1];
    volatile uint32_t I2SPLLSEL;
    volatile uint32_t SDOE;
    volatile uint32_t LRCKOE;
    volatile uint32_t CKOE;
    volatile uint32_t DUPLEX;
    volatile uint32_t CLKSEL;
    uint32_t RESERVED2[8];
} stc_i2s_ctrl_bit_t;

typedef struct {
    volatile const  uint32_t TXBA;
    volatile const  uint32_t RXBA;
    volatile const  uint32_t TXBE;
    volatile const  uint32_t TXBF;
    volatile const  uint32_t RXBE;
    volatile const  uint32_t RXBF;
    uint32_t RESERVED0[26];
} stc_i2s_sr_bit_t;

typedef struct {
    volatile uint32_t TXERR;
    volatile uint32_t RXERR;
    uint32_t RESERVED0[30];
} stc_i2s_er_bit_t;

typedef struct {
    uint32_t RESERVED0[4];
    volatile uint32_t CHLEN;
    volatile uint32_t PCMSYNC;
    uint32_t RESERVED1[26];
} stc_i2s_cfgr_bit_t;

typedef struct {
    volatile const  uint32_t SWDTAUTS;
    volatile const  uint32_t SWDTITS;
    uint32_t RESERVED0[10];
    volatile const  uint32_t SWDTSLPOFF;
    uint32_t RESERVED1[3];
    volatile const  uint32_t WDTAUTS;
    volatile const  uint32_t WDTITS;
    uint32_t RESERVED2[10];
    volatile const  uint32_t WDTSLPOFF;
    uint32_t RESERVED3[3];
} stc_icg_icg0_bit_t;

typedef struct {
    volatile const  uint32_t HRCFREQSEL;
    uint32_t RESERVED0[7];
    volatile const  uint32_t HRCSTOP;
    uint32_t RESERVED1[9];
    volatile const  uint32_t BORDIS;
    uint32_t RESERVED2[9];
    volatile const  uint32_t NMITRG;
    volatile const  uint32_t NMIEN;
    volatile const  uint32_t NFEN;
    volatile const  uint32_t NMIICGEN;
} stc_icg_icg1_bit_t;

typedef struct {
    volatile uint32_t NMITRG;
    uint32_t RESERVED0[6];
    volatile uint32_t NFEN;
    uint32_t RESERVED1[24];
} stc_intc_nmicr_bit_t;

typedef struct {
    volatile uint32_t NMIENR;
    volatile uint32_t SWDTENR;
    volatile uint32_t PVD1ENR;
    volatile uint32_t PVD2ENR;
    uint32_t RESERVED0[1];
    volatile uint32_t XTALSTPENR;
    uint32_t RESERVED1[2];
    volatile uint32_t REPENR;
    volatile uint32_t RECCENR;
    volatile uint32_t BUSMENR;
    volatile uint32_t WDTENR;
    uint32_t RESERVED2[20];
} stc_intc_nmienr_bit_t;

typedef struct {
    volatile uint32_t NMIFR;
    volatile uint32_t SWDTFR;
    volatile uint32_t PVD1FR;
    volatile uint32_t PVD2FR;
    uint32_t RESERVED0[1];
    volatile uint32_t XTALSTPFR;
    uint32_t RESERVED1[2];
    volatile uint32_t REPFR;
    volatile uint32_t RECCFR;
    volatile uint32_t BUSMFR;
    volatile uint32_t WDTFR;
    uint32_t RESERVED2[20];
} stc_intc_nmifr_bit_t;

typedef struct {
    volatile uint32_t NMICFR;
    volatile uint32_t SWDTCFR;
    volatile uint32_t PVD1CFR;
    volatile uint32_t PVD2CFR;
    uint32_t RESERVED0[1];
    volatile uint32_t XTALSTPCFR;
    uint32_t RESERVED1[2];
    volatile uint32_t REPCFR;
    volatile uint32_t RECCCFR;
    volatile uint32_t BUSMCFR;
    volatile uint32_t WDTCFR;
    uint32_t RESERVED2[20];
} stc_intc_nmicfr_bit_t;

typedef struct {
    uint32_t RESERVED0[7];
    volatile uint32_t EFEN;
    uint32_t RESERVED1[24];
} stc_intc_eirqcr_bit_t;

typedef struct {
    volatile uint32_t EIRQWUEN0;
    volatile uint32_t EIRQWUEN1;
    volatile uint32_t EIRQWUEN2;
    volatile uint32_t EIRQWUEN3;
    volatile uint32_t EIRQWUEN4;
    volatile uint32_t EIRQWUEN5;
    volatile uint32_t EIRQWUEN6;
    volatile uint32_t EIRQWUEN7;
    volatile uint32_t EIRQWUEN8;
    volatile uint32_t EIRQWUEN9;
    volatile uint32_t EIRQWUEN10;
    volatile uint32_t EIRQWUEN11;
    volatile uint32_t EIRQWUEN12;
    volatile uint32_t EIRQWUEN13;
    volatile uint32_t EIRQWUEN14;
    volatile uint32_t EIRQWUEN15;
    volatile uint32_t SWDTWUEN;
    volatile uint32_t PVD1WUEN;
    volatile uint32_t PVD2WUEN;
    volatile uint32_t CMPI0WUEN;
    volatile uint32_t WKTMWUEN;
    volatile uint32_t RTCALMWUEN;
    volatile uint32_t RTCPRDWUEN;
    volatile uint32_t TMR0WUEN;
    uint32_t RESERVED0[1];
    volatile uint32_t RXWUEN;
    uint32_t RESERVED1[6];
} stc_intc_wupen_bit_t;

typedef struct {
    volatile uint32_t EIFR0;
    volatile uint32_t EIFR1;
    volatile uint32_t EIFR2;
    volatile uint32_t EIFR3;
    volatile uint32_t EIFR4;
    volatile uint32_t EIFR5;
    volatile uint32_t EIFR6;
    volatile uint32_t EIFR7;
    volatile uint32_t EIFR8;
    volatile uint32_t EIFR9;
    volatile uint32_t EIFR10;
    volatile uint32_t EIFR11;
    volatile uint32_t EIFR12;
    volatile uint32_t EIFR13;
    volatile uint32_t EIFR14;
    volatile uint32_t EIFR15;
    uint32_t RESERVED0[16];
} stc_intc_eifr_bit_t;

typedef struct {
    volatile uint32_t EIFCR0;
    volatile uint32_t EIFCR1;
    volatile uint32_t EIFCR2;
    volatile uint32_t EIFCR3;
    volatile uint32_t EIFCR4;
    volatile uint32_t EIFCR5;
    volatile uint32_t EIFCR6;
    volatile uint32_t EIFCR7;
    volatile uint32_t EIFCR8;
    volatile uint32_t EIFCR9;
    volatile uint32_t EIFCR10;
    volatile uint32_t EIFCR11;
    volatile uint32_t EIFCR12;
    volatile uint32_t EIFCR13;
    volatile uint32_t EIFCR14;
    volatile uint32_t EIFCR15;
    uint32_t RESERVED0[16];
} stc_intc_eifcr_bit_t;

typedef struct {
    volatile uint32_t VSEL0;
    volatile uint32_t VSEL1;
    volatile uint32_t VSEL2;
    volatile uint32_t VSEL3;
    volatile uint32_t VSEL4;
    volatile uint32_t VSEL5;
    volatile uint32_t VSEL6;
    volatile uint32_t VSEL7;
    volatile uint32_t VSEL8;
    volatile uint32_t VSEL9;
    volatile uint32_t VSEL10;
    volatile uint32_t VSEL11;
    volatile uint32_t VSEL12;
    volatile uint32_t VSEL13;
    volatile uint32_t VSEL14;
    volatile uint32_t VSEL15;
    volatile uint32_t VSEL16;
    volatile uint32_t VSEL17;
    volatile uint32_t VSEL18;
    volatile uint32_t VSEL19;
    volatile uint32_t VSEL20;
    volatile uint32_t VSEL21;
    volatile uint32_t VSEL22;
    volatile uint32_t VSEL23;
    volatile uint32_t VSEL24;
    volatile uint32_t VSEL25;
    volatile uint32_t VSEL26;
    volatile uint32_t VSEL27;
    volatile uint32_t VSEL28;
    volatile uint32_t VSEL29;
    volatile uint32_t VSEL30;
    volatile uint32_t VSEL31;
} stc_intc_vssel_bit_t;

typedef struct {
    volatile uint32_t SWIE0;
    volatile uint32_t SWIE1;
    volatile uint32_t SWIE2;
    volatile uint32_t SWIE3;
    volatile uint32_t SWIE4;
    volatile uint32_t SWIE5;
    volatile uint32_t SWIE6;
    volatile uint32_t SWIE7;
    volatile uint32_t SWIE8;
    volatile uint32_t SWIE9;
    volatile uint32_t SWIE10;
    volatile uint32_t SWIE11;
    volatile uint32_t SWIE12;
    volatile uint32_t SWIE13;
    volatile uint32_t SWIE14;
    volatile uint32_t SWIE15;
    volatile uint32_t SWIE16;
    volatile uint32_t SWIE17;
    volatile uint32_t SWIE18;
    volatile uint32_t SWIE19;
    volatile uint32_t SWIE20;
    volatile uint32_t SWIE21;
    volatile uint32_t SWIE22;
    volatile uint32_t SWIE23;
    volatile uint32_t SWIE24;
    volatile uint32_t SWIE25;
    volatile uint32_t SWIE26;
    volatile uint32_t SWIE27;
    volatile uint32_t SWIE28;
    volatile uint32_t SWIE29;
    volatile uint32_t SWIE30;
    volatile uint32_t SWIE31;
} stc_intc_swier_bit_t;

typedef struct {
    volatile uint32_t EVTE0;
    volatile uint32_t EVTE1;
    volatile uint32_t EVTE2;
    volatile uint32_t EVTE3;
    volatile uint32_t EVTE4;
    volatile uint32_t EVTE5;
    volatile uint32_t EVTE6;
    volatile uint32_t EVTE7;
    volatile uint32_t EVTE8;
    volatile uint32_t EVTE9;
    volatile uint32_t EVTE10;
    volatile uint32_t EVTE11;
    volatile uint32_t EVTE12;
    volatile uint32_t EVTE13;
    volatile uint32_t EVTE14;
    volatile uint32_t EVTE15;
    volatile uint32_t EVTE16;
    volatile uint32_t EVTE17;
    volatile uint32_t EVTE18;
    volatile uint32_t EVTE19;
    volatile uint32_t EVTE20;
    volatile uint32_t EVTE21;
    volatile uint32_t EVTE22;
    volatile uint32_t EVTE23;
    volatile uint32_t EVTE24;
    volatile uint32_t EVTE25;
    volatile uint32_t EVTE26;
    volatile uint32_t EVTE27;
    volatile uint32_t EVTE28;
    volatile uint32_t EVTE29;
    volatile uint32_t EVTE30;
    volatile uint32_t EVTE31;
} stc_intc_evter_bit_t;

typedef struct {
    volatile uint32_t IER0;
    volatile uint32_t IER1;
    volatile uint32_t IER2;
    volatile uint32_t IER3;
    volatile uint32_t IER4;
    volatile uint32_t IER5;
    volatile uint32_t IER6;
    volatile uint32_t IER7;
    volatile uint32_t IER8;
    volatile uint32_t IER9;
    volatile uint32_t IER10;
    volatile uint32_t IER11;
    volatile uint32_t IER12;
    volatile uint32_t IER13;
    volatile uint32_t IER14;
    volatile uint32_t IER15;
    volatile uint32_t IER16;
    volatile uint32_t IER17;
    volatile uint32_t IER18;
    volatile uint32_t IER19;
    volatile uint32_t IER20;
    volatile uint32_t IER21;
    volatile uint32_t IER22;
    volatile uint32_t IER23;
    volatile uint32_t IER24;
    volatile uint32_t IER25;
    volatile uint32_t IER26;
    volatile uint32_t IER27;
    volatile uint32_t IER28;
    volatile uint32_t IER29;
    volatile uint32_t IER30;
    volatile uint32_t IER31;
} stc_intc_ier_bit_t;

typedef struct {
    volatile uint32_t SEN;
    uint32_t RESERVED0[31];
} stc_keyscan_ser_bit_t;

typedef struct {
    volatile uint32_t S2RGRP;
    volatile uint32_t S2RGWP;
    uint32_t RESERVED0[5];
    volatile uint32_t S2RGE;
    volatile uint32_t S1RGRP;
    volatile uint32_t S1RGWP;
    uint32_t RESERVED1[5];
    volatile uint32_t S1RGE;
    volatile uint32_t FRGRP;
    volatile uint32_t FRGWP;
    uint32_t RESERVED2[5];
    volatile uint32_t FRGE;
    uint32_t RESERVED3[8];
} stc_mpu_rgcr_bit_t;

typedef struct {
    volatile uint32_t SMPU2BRP;
    volatile uint32_t SMPU2BWP;
    uint32_t RESERVED0[5];
    volatile uint32_t SMPU2E;
    volatile uint32_t SMPU1BRP;
    volatile uint32_t SMPU1BWP;
    uint32_t RESERVED1[5];
    volatile uint32_t SMPU1E;
    volatile uint32_t FMPUBRP;
    volatile uint32_t FMPUBWP;
    uint32_t RESERVED2[5];
    volatile uint32_t FMPUE;
    uint32_t RESERVED3[8];
} stc_mpu_cr_bit_t;

typedef struct {
    volatile const  uint32_t SMPU2EAF;
    uint32_t RESERVED0[7];
    volatile const  uint32_t SMPU1EAF;
    uint32_t RESERVED1[7];
    volatile const  uint32_t FMPUEAF;
    uint32_t RESERVED2[15];
} stc_mpu_sr_bit_t;

typedef struct {
    volatile  uint32_t SMPU2ECLR;
    uint32_t RESERVED0[7];
    volatile  uint32_t SMPU1ECLR;
    uint32_t RESERVED1[7];
    volatile  uint32_t FMPUECLR;
    uint32_t RESERVED2[15];
} stc_mpu_eclr_bit_t;

typedef struct {
    volatile uint32_t MPUWE;
    uint32_t RESERVED0[31];
} stc_mpu_wp_bit_t;

typedef struct {
    volatile uint32_t AESRDP;
    volatile uint32_t AESWRP;
    volatile uint32_t HASHRDP;
    volatile uint32_t HASHWRP;
    volatile uint32_t TRNGRDP;
    volatile uint32_t TRNGWRP;
    volatile uint32_t CRCRDP;
    volatile uint32_t CRCWRP;
    volatile uint32_t EFMRDP;
    volatile uint32_t EFMWRP;
    uint32_t RESERVED0[2];
    volatile uint32_t WDTRDP;
    volatile uint32_t WDTWRP;
    volatile uint32_t SWDTRDP;
    volatile uint32_t SWDTWRP;
    volatile uint32_t BKSRAMRDP;
    volatile uint32_t BKSRAMWRP;
    volatile uint32_t RTCRDP;
    volatile uint32_t RTCWRP;
    volatile uint32_t DMPURDP;
    volatile uint32_t DMPUWRP;
    volatile uint32_t SRAMCRDP;
    volatile uint32_t SRAMCWRP;
    volatile uint32_t INTCRDP;
    volatile uint32_t INTCWRP;
    volatile uint32_t SYSCRDP;
    volatile uint32_t SYSCWRP;
    volatile uint32_t MSTPRDP;
    volatile uint32_t MSTPWRP;
    uint32_t RESERVED1[1];
    volatile uint32_t BUSERRE;
} stc_mpu_ippr_bit_t;

typedef struct {
    volatile uint32_t OTSST;
    volatile uint32_t OTSCK;
    volatile uint32_t OTSIE;
    volatile uint32_t TSSTP;
    uint32_t RESERVED0[12];
} stc_ots_ctl_bit_t;

typedef struct {
    volatile uint32_t DFB;
    volatile uint32_t SOFEN;
    uint32_t RESERVED0[30];
} stc_peric_usbfs_syctlreg_bit_t;

typedef struct {
    uint32_t RESERVED0[1];
    volatile uint32_t SELMMC1;
    uint32_t RESERVED1[1];
    volatile uint32_t SELMMC2;
    uint32_t RESERVED2[28];
} stc_peric_sdioc_syctlreg_bit_t;

typedef struct {
    uint32_t RESERVED0[3];
    volatile uint32_t PFE;
    volatile uint32_t PFSAE;
    volatile uint32_t DCOME;
    volatile uint32_t XIPE;
    volatile uint32_t SPIMD3;
    uint32_t RESERVED1[24];
} stc_qspi_cr_bit_t;

typedef struct {
    uint32_t RESERVED0[2];
    volatile uint32_t FOUR_BIC;
    uint32_t RESERVED1[1];
    volatile uint32_t SSNHD;
    volatile uint32_t SSNLD;
    volatile uint32_t WPOL;
    uint32_t RESERVED2[8];
    volatile uint32_t DUTY;
    uint32_t RESERVED3[16];
} stc_qspi_fcr_bit_t;

typedef struct {
    volatile uint32_t BUSY;
    uint32_t RESERVED0[5];
    volatile uint32_t XIPF;
    volatile uint32_t RAER;
    uint32_t RESERVED1[6];
    volatile uint32_t PFFUL;
    volatile uint32_t PFAN;
    uint32_t RESERVED2[16];
} stc_qspi_sr_bit_t;

typedef struct {
    uint32_t RESERVED0[7];
    volatile  uint32_t RAERCLR;
    uint32_t RESERVED1[24];
} stc_qspi_clr_bit_t;

typedef struct {
    volatile uint32_t PORF;
    volatile uint32_t PINRF;
    volatile uint32_t BORF;
    volatile uint32_t PVD1RF;
    volatile uint32_t PVD2RF;
    volatile uint32_t WDRF;
    volatile uint32_t SWDRF;
    volatile uint32_t PDRF;
    volatile uint32_t SWRF;
    volatile uint32_t MPUERF;
    volatile uint32_t RAPERF;
    volatile uint32_t RAECRF;
    volatile uint32_t CKFERF;
    volatile uint32_t XTALERF;
    volatile uint32_t MULTIRF;
    volatile uint32_t CLRF;
} stc_rmu_rstf0_bit_t;

typedef struct {
    volatile uint32_t RESET;
    uint32_t RESERVED0[7];
} stc_rtc_cr0_bit_t;

typedef struct {
    uint32_t RESERVED0[3];
    volatile uint32_t AMPM;
    volatile uint32_t ALMFCLR;
    volatile uint32_t ONEHZOE;
    volatile uint32_t ONEHZSEL;
    volatile uint32_t START;
} stc_rtc_cr1_bit_t;

typedef struct {
    volatile uint32_t RWREQ;
    volatile uint32_t RWEN;
    uint32_t RESERVED0[1];
    volatile uint32_t ALMF;
    uint32_t RESERVED1[1];
    volatile uint32_t PRDIE;
    volatile uint32_t ALMIE;
    volatile uint32_t ALME;
} stc_rtc_cr2_bit_t;

typedef struct {
    uint32_t RESERVED0[4];
    volatile uint32_t LRCEN;
    uint32_t RESERVED1[2];
    volatile uint32_t RCKSEL;
} stc_rtc_cr3_bit_t;

typedef struct {
    volatile uint32_t COMP8;
    uint32_t RESERVED0[6];
    volatile uint32_t COMPEN;
} stc_rtc_errcrh_bit_t;

typedef struct {
    uint32_t RESERVED0[1];
    volatile uint32_t BCE;
    uint32_t RESERVED1[2];
    volatile uint32_t DDIR;
    volatile uint32_t MULB;
    uint32_t RESERVED2[10];
} stc_sdioc_transmode_bit_t;

typedef struct {
    uint32_t RESERVED0[3];
    volatile uint32_t CCE;
    volatile uint32_t ICE;
    volatile uint32_t DAT;
    uint32_t RESERVED1[10];
} stc_sdioc_cmd_bit_t;

typedef struct {
    volatile const  uint32_t CIC;
    volatile const  uint32_t CID;
    volatile const  uint32_t DA;
    uint32_t RESERVED0[5];
    volatile const  uint32_t WTA;
    volatile const  uint32_t RTA;
    volatile const  uint32_t BWE;
    volatile const  uint32_t BRE;
    uint32_t RESERVED1[4];
    volatile const  uint32_t CIN;
    volatile const  uint32_t CSS;
    volatile const  uint32_t CDL;
    volatile const  uint32_t WPL;
    uint32_t RESERVED2[4];
    volatile const  uint32_t CMDL;
    uint32_t RESERVED3[7];
} stc_sdioc_pstat_bit_t;

typedef struct {
    uint32_t RESERVED0[1];
    volatile uint32_t DW;
    volatile uint32_t HSEN;
    uint32_t RESERVED1[2];
    volatile uint32_t EXDW;
    volatile uint32_t CDTL;
    volatile uint32_t CDSS;
} stc_sdioc_hostcon_bit_t;

typedef struct {
    volatile uint32_t PWON;
    uint32_t RESERVED0[7];
} stc_sdioc_pwrcon_bit_t;

typedef struct {
    volatile uint32_t SABGR;
    volatile uint32_t CR;
    volatile uint32_t RWC;
    volatile uint32_t IABG;
    uint32_t RESERVED0[4];
} stc_sdioc_blkgpcon_bit_t;

typedef struct {
    volatile uint32_t ICE;
    uint32_t RESERVED0[1];
    volatile uint32_t CE;
    uint32_t RESERVED1[13];
} stc_sdioc_clkcon_bit_t;

typedef struct {
    volatile uint32_t RSTA;
    volatile uint32_t RSTC;
    volatile uint32_t RSTD;
    uint32_t RESERVED0[5];
} stc_sdioc_sftrst_bit_t;

typedef struct {
    volatile uint32_t CC;
    volatile uint32_t TC;
    volatile uint32_t BGE;
    uint32_t RESERVED0[1];
    volatile uint32_t BWR;
    volatile uint32_t BRR;
    volatile uint32_t CIST;
    volatile uint32_t CRM;
    volatile const  uint32_t CINT;
    uint32_t RESERVED1[6];
    volatile const  uint32_t EI;
} stc_sdioc_norintst_bit_t;

typedef struct {
    volatile uint32_t CTOE;
    volatile uint32_t CCE;
    volatile uint32_t CEBE;
    volatile uint32_t CIE;
    volatile uint32_t DTOE;
    volatile uint32_t DCE;
    volatile uint32_t DEBE;
    uint32_t RESERVED0[1];
    volatile uint32_t ACE;
    uint32_t RESERVED1[7];
} stc_sdioc_errintst_bit_t;

typedef struct {
    volatile uint32_t CCEN;
    volatile uint32_t TCEN;
    volatile uint32_t BGEEN;
    uint32_t RESERVED0[1];
    volatile uint32_t BWREN;
    volatile uint32_t BRREN;
    volatile uint32_t CISTEN;
    volatile uint32_t CRMEN;
    volatile uint32_t CINTEN;
    uint32_t RESERVED1[7];
} stc_sdioc_norintsten_bit_t;

typedef struct {
    volatile uint32_t CTOEEN;
    volatile uint32_t CCEEN;
    volatile uint32_t CEBEEN;
    volatile uint32_t CIEEN;
    volatile uint32_t DTOEEN;
    volatile uint32_t DCEEN;
    volatile uint32_t DEBEEN;
    uint32_t RESERVED0[1];
    volatile uint32_t ACEEN;
    uint32_t RESERVED1[7];
} stc_sdioc_errintsten_bit_t;

typedef struct {
    volatile uint32_t CCSEN;
    volatile uint32_t TCSEN;
    volatile uint32_t BGESEN;
    uint32_t RESERVED0[1];
    volatile uint32_t BWRSEN;
    volatile uint32_t BRRSEN;
    volatile uint32_t CISTSEN;
    volatile uint32_t CRMSEN;
    volatile uint32_t CINTSEN;
    uint32_t RESERVED1[7];
} stc_sdioc_norintsgen_bit_t;

typedef struct {
    volatile uint32_t CTOESEN;
    volatile uint32_t CCESEN;
    volatile uint32_t CEBESEN;
    volatile uint32_t CIESEN;
    volatile uint32_t DTOESEN;
    volatile uint32_t DCESEN;
    volatile uint32_t DEBESEN;
    uint32_t RESERVED0[1];
    volatile uint32_t ACESEN;
    uint32_t RESERVED1[7];
} stc_sdioc_errintsgen_bit_t;

typedef struct {
    volatile const  uint32_t NE;
    volatile const  uint32_t TOE;
    volatile const  uint32_t CE;
    volatile const  uint32_t EBE;
    volatile const  uint32_t IE;
    uint32_t RESERVED0[2];
    volatile const  uint32_t CMDE;
    uint32_t RESERVED1[8];
} stc_sdioc_atcerrst_bit_t;

typedef struct {
    volatile  uint32_t FNE;
    volatile  uint32_t FTOE;
    volatile  uint32_t FCE;
    volatile  uint32_t FEBE;
    volatile  uint32_t FIE;
    uint32_t RESERVED0[2];
    volatile  uint32_t FCMDE;
    uint32_t RESERVED1[8];
} stc_sdioc_fea_bit_t;

typedef struct {
    volatile  uint32_t FCTOE;
    volatile  uint32_t FCCE;
    volatile  uint32_t FCEBE;
    volatile  uint32_t FCIE;
    volatile  uint32_t FDTOE;
    volatile  uint32_t FDCE;
    volatile  uint32_t FDEBE;
    uint32_t RESERVED0[1];
    volatile  uint32_t FACE;
    uint32_t RESERVED1[7];
} stc_sdioc_fee_bit_t;

typedef struct {
    volatile uint32_t SPIMDS;
    volatile uint32_t TXMDS;
    uint32_t RESERVED0[1];
    volatile uint32_t MSTR;
    volatile uint32_t SPLPBK;
    volatile uint32_t SPLPBK2;
    volatile uint32_t SPE;
    volatile uint32_t CSUSPE;
    volatile uint32_t EIE;
    volatile uint32_t TXIE;
    volatile uint32_t RXIE;
    volatile uint32_t IDIE;
    volatile uint32_t MODFE;
    volatile uint32_t PATE;
    volatile uint32_t PAOE;
    volatile uint32_t PAE;
    uint32_t RESERVED1[16];
} stc_spi_cr1_bit_t;

typedef struct {
    uint32_t RESERVED0[6];
    volatile uint32_t SPRDTD;
    uint32_t RESERVED1[1];
    volatile uint32_t SS0PV;
    volatile uint32_t SS1PV;
    volatile uint32_t SS2PV;
    volatile uint32_t SS3PV;
    uint32_t RESERVED2[20];
} stc_spi_cfg1_bit_t;

typedef struct {
    volatile uint32_t OVRERF;
    volatile const  uint32_t IDLNF;
    volatile uint32_t MODFERF;
    volatile uint32_t PERF;
    volatile uint32_t UDRERF;
    volatile uint32_t TDEF;
    uint32_t RESERVED0[1];
    volatile uint32_t RDFF;
    uint32_t RESERVED1[24];
} stc_spi_sr_bit_t;

typedef struct {
    volatile uint32_t CPHA;
    volatile uint32_t CPOL;
    uint32_t RESERVED0[10];
    volatile uint32_t LSBF;
    volatile uint32_t MIDIE;
    volatile uint32_t MSSDLE;
    volatile uint32_t MSSIE;
    uint32_t RESERVED1[16];
} stc_spi_cfg2_bit_t;

typedef struct {
    volatile uint32_t WTPRC;
    uint32_t RESERVED0[31];
} stc_sramc_wtpr_bit_t;

typedef struct {
    volatile uint32_t PYOAD;
    uint32_t RESERVED0[15];
    volatile uint32_t ECCOAD;
    uint32_t RESERVED1[15];
} stc_sramc_ckcr_bit_t;

typedef struct {
    volatile uint32_t CKPRC;
    uint32_t RESERVED0[31];
} stc_sramc_ckpr_bit_t;

typedef struct {
    volatile uint32_t SRAM3_1ERR;
    volatile uint32_t SRAM3_2ERR;
    volatile uint32_t SRAM12_PYERR;
    volatile uint32_t SRAMH_PYERR;
    volatile uint32_t SRAMR_PYERR;
    uint32_t RESERVED0[27];
} stc_sramc_cksr_bit_t;

typedef struct {
    uint32_t RESERVED0[16];
    volatile uint32_t UDF;
    volatile uint32_t REF;
    uint32_t RESERVED1[14];
} stc_swdt_sr_bit_t;

typedef struct {
    volatile uint32_t CSTA;
    volatile uint32_t CAPMDA;
    volatile uint32_t INTENA;
    uint32_t RESERVED0[5];
    volatile uint32_t SYNSA;
    volatile uint32_t SYNCLKA;
    volatile uint32_t ASYNCLKA;
    uint32_t RESERVED1[1];
    volatile uint32_t HSTAA;
    volatile uint32_t HSTPA;
    volatile uint32_t HCLEA;
    volatile uint32_t HICPA;
    volatile uint32_t CSTB;
    volatile uint32_t CAPMDB;
    volatile uint32_t INTENB;
    uint32_t RESERVED2[5];
    volatile uint32_t SYNSB;
    volatile uint32_t SYNCLKB;
    volatile uint32_t ASYNCLKB;
    uint32_t RESERVED3[1];
    volatile uint32_t HSTAB;
    volatile uint32_t HSTPB;
    volatile uint32_t HCLEB;
    volatile uint32_t HICPB;
} stc_tmr0_bconr_bit_t;

typedef struct {
    volatile uint32_t CMFA;
    uint32_t RESERVED0[15];
    volatile uint32_t CMFB;
    uint32_t RESERVED1[15];
} stc_tmr0_stflr_bit_t;

typedef struct {
    volatile uint32_t OCEH;
    volatile uint32_t OCEL;
    volatile uint32_t OCPH;
    volatile uint32_t OCPL;
    volatile uint32_t OCIEH;
    volatile uint32_t OCIEL;
    volatile uint32_t OCFH;
    volatile uint32_t OCFL;
    uint32_t RESERVED0[8];
} stc_tmr4_ocsr_bit_t;

typedef struct {
    uint32_t RESERVED0[8];
    volatile uint32_t LMCH;
    volatile uint32_t LMCL;
    volatile uint32_t LMMH;
    volatile uint32_t LMML;
    volatile uint32_t MCECH;
    volatile uint32_t MCECL;
    uint32_t RESERVED1[2];
} stc_tmr4_ocer_bit_t;

typedef struct {
    volatile uint32_t OCFDCH;
    volatile uint32_t OCFPKH;
    volatile uint32_t OCFUCH;
    volatile uint32_t OCFZRH;
    uint32_t RESERVED0[12];
} stc_tmr4_ocmrh_bit_t;

typedef struct {
    volatile uint32_t OCFDCL;
    volatile uint32_t OCFPKL;
    volatile uint32_t OCFUCL;
    volatile uint32_t OCFZRL;
    uint32_t RESERVED0[28];
} stc_tmr4_ocmrl_bit_t;

typedef struct {
    uint32_t RESERVED0[4];
    volatile uint32_t CLEAR;
    volatile uint32_t MODE;
    volatile uint32_t STOP;
    volatile uint32_t BUFEN;
    volatile uint32_t IRQPEN;
    volatile uint32_t IRQPF;
    uint32_t RESERVED1[3];
    volatile uint32_t IRQZEN;
    volatile uint32_t IRQZF;
    volatile uint32_t ECKEN;
} stc_tmr4_ccsr_bit_t;

typedef struct {
    volatile uint32_t RTIDU;
    volatile uint32_t RTIDV;
    volatile uint32_t RTIDW;
    uint32_t RESERVED0[1];
    volatile const  uint32_t RTIFU;
    volatile uint32_t RTICU;
    volatile uint32_t RTEU;
    volatile uint32_t RTSU;
    volatile const  uint32_t RTIFV;
    volatile uint32_t RTICV;
    volatile uint32_t RTEV;
    volatile uint32_t RTSV;
    volatile const  uint32_t RTIFW;
    volatile uint32_t RTICW;
    volatile uint32_t RTEW;
    volatile uint32_t RTSW;
} stc_tmr4_rcsr_bit_t;

typedef struct {
    uint32_t RESERVED0[5];
    volatile uint32_t LMC;
    uint32_t RESERVED1[2];
    volatile uint32_t EVTMS;
    volatile uint32_t EVTDS;
    uint32_t RESERVED2[2];
    volatile uint32_t DEN;
    volatile uint32_t PEN;
    volatile uint32_t UEN;
    volatile uint32_t ZEN;
} stc_tmr4_scsr_bit_t;

typedef struct {
    uint32_t RESERVED0[6];
    volatile uint32_t MZCE;
    volatile uint32_t MPCE;
    uint32_t RESERVED1[8];
} stc_tmr4_scmr_bit_t;

typedef struct {
    uint32_t RESERVED0[7];
    volatile uint32_t HOLD;
    uint32_t RESERVED1[8];
} stc_tmr4_ecsr_bit_t;

typedef struct {
    volatile uint32_t START;
    uint32_t RESERVED0[7];
    volatile uint32_t DIR;
    uint32_t RESERVED1[7];
    volatile uint32_t ZMSKREV;
    volatile uint32_t ZMSKPOS;
    uint32_t RESERVED2[14];
} stc_tmr6_gconr_bit_t;

typedef struct {
    volatile uint32_t INTENA;
    volatile uint32_t INTENB;
    volatile uint32_t INTENC;
    volatile uint32_t INTEND;
    volatile uint32_t INTENE;
    volatile uint32_t INTENF;
    volatile uint32_t INTENOVF;
    volatile uint32_t INTENUDF;
    volatile uint32_t INTENDTE;
    uint32_t RESERVED0[7];
    volatile uint32_t INTENSAU;
    volatile uint32_t INTENSAD;
    volatile uint32_t INTENSBU;
    volatile uint32_t INTENSBD;
    uint32_t RESERVED1[12];
} stc_tmr6_iconr_bit_t;

typedef struct {
    volatile uint32_t CAPMDA;
    volatile uint32_t STACA;
    volatile uint32_t STPCA;
    volatile uint32_t STASTPSA;
    uint32_t RESERVED0[4];
    volatile uint32_t OUTENA;
    uint32_t RESERVED1[7];
    volatile uint32_t CAPMDB;
    volatile uint32_t STACB;
    volatile uint32_t STPCB;
    volatile uint32_t STASTPSB;
    uint32_t RESERVED2[4];
    volatile uint32_t OUTENB;
    uint32_t RESERVED3[7];
} stc_tmr6_pconr_bit_t;

typedef struct {
    volatile uint32_t BENA;
    volatile uint32_t BSEA;
    volatile uint32_t BENB;
    volatile uint32_t BSEB;
    uint32_t RESERVED0[4];
    volatile uint32_t BENP;
    volatile uint32_t BSEP;
    uint32_t RESERVED1[6];
    volatile uint32_t BENSPA;
    volatile uint32_t BSESPA;
    uint32_t RESERVED2[2];
    volatile uint32_t BTRUSPA;
    volatile uint32_t BTRDSPA;
    uint32_t RESERVED3[2];
    volatile uint32_t BENSPB;
    volatile uint32_t BSESPB;
    uint32_t RESERVED4[2];
    volatile uint32_t BTRUSPB;
    volatile uint32_t BTRDSPB;
    uint32_t RESERVED5[2];
} stc_tmr6_bconr_bit_t;

typedef struct {
    volatile uint32_t DTCEN;
    uint32_t RESERVED0[3];
    volatile uint32_t DTBENU;
    volatile uint32_t DTBEND;
    uint32_t RESERVED1[2];
    volatile uint32_t SEPA;
    uint32_t RESERVED2[23];
} stc_tmr6_dconr_bit_t;

typedef struct {
    volatile uint32_t NOFIENGA;
    uint32_t RESERVED0[3];
    volatile uint32_t NOFIENGB;
    uint32_t RESERVED1[11];
    volatile uint32_t NOFIENTA;
    uint32_t RESERVED2[3];
    volatile uint32_t NOFIENTB;
    uint32_t RESERVED3[11];
} stc_tmr6_fconr_bit_t;

typedef struct {
    uint32_t RESERVED0[8];
    volatile uint32_t SPPERIA;
    volatile uint32_t SPPERIB;
    uint32_t RESERVED1[22];
} stc_tmr6_vperr_bit_t;

typedef struct {
    volatile uint32_t CMAF;
    volatile uint32_t CMBF;
    volatile uint32_t CMCF;
    volatile uint32_t CMDF;
    volatile uint32_t CMEF;
    volatile uint32_t CMFF;
    volatile uint32_t OVFF;
    volatile uint32_t UDFF;
    volatile const  uint32_t DTEF;
    volatile uint32_t CMSAUF;
    volatile uint32_t CMSADF;
    volatile uint32_t CMSBUF;
    volatile uint32_t CMSBDF;
    uint32_t RESERVED0[18];
    volatile const  uint32_t DIRF;
} stc_tmr6_stflr_bit_t;

typedef struct {
    volatile uint32_t HSTA0;
    volatile uint32_t HSTA1;
    uint32_t RESERVED0[2];
    volatile uint32_t HSTA4;
    volatile uint32_t HSTA5;
    volatile uint32_t HSTA6;
    volatile uint32_t HSTA7;
    volatile uint32_t HSTA8;
    volatile uint32_t HSTA9;
    volatile uint32_t HSTA10;
    volatile uint32_t HSTA11;
    uint32_t RESERVED1[19];
    volatile uint32_t STAS;
} stc_tmr6_hstar_bit_t;

typedef struct {
    volatile uint32_t HSTP0;
    volatile uint32_t HSTP1;
    uint32_t RESERVED0[2];
    volatile uint32_t HSTP4;
    volatile uint32_t HSTP5;
    volatile uint32_t HSTP6;
    volatile uint32_t HSTP7;
    volatile uint32_t HSTP8;
    volatile uint32_t HSTP9;
    volatile uint32_t HSTP10;
    volatile uint32_t HSTP11;
    uint32_t RESERVED1[19];
    volatile uint32_t STPS;
} stc_tmr6_hstpr_bit_t;

typedef struct {
    volatile uint32_t HCLE0;
    volatile uint32_t HCLE1;
    uint32_t RESERVED0[2];
    volatile uint32_t HCLE4;
    volatile uint32_t HCLE5;
    volatile uint32_t HCLE6;
    volatile uint32_t HCLE7;
    volatile uint32_t HCLE8;
    volatile uint32_t HCLE9;
    volatile uint32_t HCLE10;
    volatile uint32_t HCLE11;
    uint32_t RESERVED1[19];
    volatile uint32_t CLES;
} stc_tmr6_hclrr_bit_t;

typedef struct {
    volatile uint32_t HCPA0;
    volatile uint32_t HCPA1;
    uint32_t RESERVED0[2];
    volatile uint32_t HCPA4;
    volatile uint32_t HCPA5;
    volatile uint32_t HCPA6;
    volatile uint32_t HCPA7;
    volatile uint32_t HCPA8;
    volatile uint32_t HCPA9;
    volatile uint32_t HCPA10;
    volatile uint32_t HCPA11;
    uint32_t RESERVED1[20];
} stc_tmr6_hcpar_bit_t;

typedef struct {
    volatile uint32_t HCPB0;
    volatile uint32_t HCPB1;
    uint32_t RESERVED0[2];
    volatile uint32_t HCPB4;
    volatile uint32_t HCPB5;
    volatile uint32_t HCPB6;
    volatile uint32_t HCPB7;
    volatile uint32_t HCPB8;
    volatile uint32_t HCPB9;
    volatile uint32_t HCPB10;
    volatile uint32_t HCPB11;
    uint32_t RESERVED1[20];
} stc_tmr6_hcpbr_bit_t;

typedef struct {
    volatile uint32_t HCUP0;
    volatile uint32_t HCUP1;
    volatile uint32_t HCUP2;
    volatile uint32_t HCUP3;
    volatile uint32_t HCUP4;
    volatile uint32_t HCUP5;
    volatile uint32_t HCUP6;
    volatile uint32_t HCUP7;
    volatile uint32_t HCUP8;
    volatile uint32_t HCUP9;
    volatile uint32_t HCUP10;
    volatile uint32_t HCUP11;
    uint32_t RESERVED0[4];
    volatile uint32_t HCUP16;
    volatile uint32_t HCUP17;
    uint32_t RESERVED1[14];
} stc_tmr6_hcupr_bit_t;

typedef struct {
    volatile uint32_t HCDO0;
    volatile uint32_t HCDO1;
    volatile uint32_t HCDO2;
    volatile uint32_t HCDO3;
    volatile uint32_t HCDO4;
    volatile uint32_t HCDO5;
    volatile uint32_t HCDO6;
    volatile uint32_t HCDO7;
    volatile uint32_t HCDO8;
    volatile uint32_t HCDO9;
    volatile uint32_t HCDO10;
    volatile uint32_t HCDO11;
    uint32_t RESERVED0[4];
    volatile uint32_t HCDO16;
    volatile uint32_t HCDO17;
    uint32_t RESERVED1[14];
} stc_tmr6_hcdor_bit_t;

typedef struct {
    volatile uint32_t SSTA1;
    volatile uint32_t SSTA2;
    volatile uint32_t SSTA3;
    uint32_t RESERVED0[29];
} stc_tmr6_common_sstar_bit_t;

typedef struct {
    volatile uint32_t SSTP1;
    volatile uint32_t SSTP2;
    volatile uint32_t SSTP3;
    uint32_t RESERVED0[29];
} stc_tmr6_common_sstpr_bit_t;

typedef struct {
    volatile uint32_t SCLE1;
    volatile uint32_t SCLE2;
    volatile uint32_t SCLE3;
    uint32_t RESERVED0[29];
} stc_tmr6_common_sclrr_bit_t;

typedef struct {
    volatile uint32_t START;
    volatile uint32_t DIR;
    volatile uint32_t MODE;
    volatile uint32_t SYNST;
    uint32_t RESERVED0[4];
} stc_tmra_bcstrl_bit_t;

typedef struct {
    volatile uint32_t OVSTP;
    uint32_t RESERVED0[3];
    volatile uint32_t ITENOVF;
    volatile uint32_t ITENUDF;
    volatile uint32_t OVFF;
    volatile uint32_t UDFF;
} stc_tmra_bcstrh_bit_t;

typedef struct {
    volatile uint32_t HSTA0;
    volatile uint32_t HSTA1;
    volatile uint32_t HSTA2;
    uint32_t RESERVED0[1];
    volatile uint32_t HSTP0;
    volatile uint32_t HSTP1;
    volatile uint32_t HSTP2;
    uint32_t RESERVED1[1];
    volatile uint32_t HCLE0;
    volatile uint32_t HCLE1;
    volatile uint32_t HCLE2;
    uint32_t RESERVED2[1];
    volatile uint32_t HCLE3;
    volatile uint32_t HCLE4;
    volatile uint32_t HCLE5;
    volatile uint32_t HCLE6;
} stc_tmra_hconr_bit_t;

typedef struct {
    volatile uint32_t HCUP0;
    volatile uint32_t HCUP1;
    volatile uint32_t HCUP2;
    volatile uint32_t HCUP3;
    volatile uint32_t HCUP4;
    volatile uint32_t HCUP5;
    volatile uint32_t HCUP6;
    volatile uint32_t HCUP7;
    volatile uint32_t HCUP8;
    volatile uint32_t HCUP9;
    volatile uint32_t HCUP10;
    volatile uint32_t HCUP11;
    volatile uint32_t HCUP12;
    uint32_t RESERVED0[3];
} stc_tmra_hcupr_bit_t;

typedef struct {
    volatile uint32_t HCDO0;
    volatile uint32_t HCDO1;
    volatile uint32_t HCDO2;
    volatile uint32_t HCDO3;
    volatile uint32_t HCDO4;
    volatile uint32_t HCDO5;
    volatile uint32_t HCDO6;
    volatile uint32_t HCDO7;
    volatile uint32_t HCDO8;
    volatile uint32_t HCDO9;
    volatile uint32_t HCDO10;
    volatile uint32_t HCDO11;
    volatile uint32_t HCDO12;
    uint32_t RESERVED0[3];
} stc_tmra_hcdor_bit_t;

typedef struct {
    volatile uint32_t ITEN1;
    volatile uint32_t ITEN2;
    volatile uint32_t ITEN3;
    volatile uint32_t ITEN4;
    volatile uint32_t ITEN5;
    volatile uint32_t ITEN6;
    volatile uint32_t ITEN7;
    volatile uint32_t ITEN8;
    uint32_t RESERVED0[8];
} stc_tmra_iconr_bit_t;

typedef struct {
    volatile uint32_t ETEN1;
    volatile uint32_t ETEN2;
    volatile uint32_t ETEN3;
    volatile uint32_t ETEN4;
    volatile uint32_t ETEN5;
    volatile uint32_t ETEN6;
    volatile uint32_t ETEN7;
    volatile uint32_t ETEN8;
    uint32_t RESERVED0[8];
} stc_tmra_econr_bit_t;

typedef struct {
    volatile uint32_t NOFIENTG;
    uint32_t RESERVED0[7];
    volatile uint32_t NOFIENCA;
    uint32_t RESERVED1[3];
    volatile uint32_t NOFIENCB;
    uint32_t RESERVED2[3];
} stc_tmra_fconr_bit_t;

typedef struct {
    volatile uint32_t CMPF1;
    volatile uint32_t CMPF2;
    volatile uint32_t CMPF3;
    volatile uint32_t CMPF4;
    volatile uint32_t CMPF5;
    volatile uint32_t CMPF6;
    volatile uint32_t CMPF7;
    volatile uint32_t CMPF8;
    uint32_t RESERVED0[8];
} stc_tmra_stflr_bit_t;

typedef struct {
    volatile uint32_t BEN;
    volatile uint32_t BSE0;
    volatile uint32_t BSE1;
    uint32_t RESERVED0[13];
} stc_tmra_bconr_bit_t;

typedef struct {
    volatile uint32_t CAPMD;
    uint32_t RESERVED0[3];
    volatile uint32_t HICP0;
    volatile uint32_t HICP1;
    volatile uint32_t HICP2;
    uint32_t RESERVED1[1];
    volatile uint32_t HICP3;
    volatile uint32_t HICP4;
    uint32_t RESERVED2[2];
    volatile uint32_t NOFIENCP;
    uint32_t RESERVED3[3];
} stc_tmra_cconr_bit_t;

typedef struct {
    uint32_t RESERVED0[12];
    volatile uint32_t OUTEN;
    uint32_t RESERVED1[3];
} stc_tmra_pconr_bit_t;

typedef struct {
    volatile uint32_t EN;
    volatile uint32_t RUN;
    uint32_t RESERVED0[30];
} stc_trng_cr_bit_t;

typedef struct {
    volatile uint32_t LOAD;
    uint32_t RESERVED0[31];
} stc_trng_mr_bit_t;

typedef struct {
    volatile const  uint32_t PE;
    volatile const  uint32_t FE;
    uint32_t RESERVED0[1];
    volatile const  uint32_t ORE;
    uint32_t RESERVED1[1];
    volatile const  uint32_t RXNE;
    volatile const  uint32_t TC;
    volatile const  uint32_t TXE;
    volatile const  uint32_t RTOF;
    uint32_t RESERVED2[7];
    volatile const  uint32_t MPB;
    uint32_t RESERVED3[15];
} stc_usart_sr_bit_t;

typedef struct {
    uint32_t RESERVED0[9];
    volatile uint32_t MPID;
    uint32_t RESERVED1[6];
} stc_usart_tdr_bit_t;

typedef struct {
    volatile uint32_t RTOE;
    volatile uint32_t RTOIE;
    volatile uint32_t RE;
    volatile uint32_t TE;
    volatile uint32_t SLME;
    volatile uint32_t RIE;
    volatile uint32_t TCIE;
    volatile uint32_t TXEIE;
    uint32_t RESERVED0[1];
    volatile uint32_t PS;
    volatile uint32_t PCE;
    uint32_t RESERVED1[1];
    volatile uint32_t M;
    uint32_t RESERVED2[2];
    volatile uint32_t OVER8;
    volatile  uint32_t CPE;
    volatile  uint32_t CFE;
    uint32_t RESERVED3[1];
    volatile  uint32_t CORE;
    volatile  uint32_t CRTOF;
    uint32_t RESERVED4[3];
    volatile uint32_t MS;
    uint32_t RESERVED5[3];
    volatile uint32_t ML;
    volatile uint32_t FBME;
    volatile uint32_t NFE;
    volatile uint32_t SBS;
} stc_usart_cr1_bit_t;

typedef struct {
    volatile uint32_t MPE;
    uint32_t RESERVED0[12];
    volatile uint32_t STOP;
    uint32_t RESERVED1[18];
} stc_usart_cr2_bit_t;

typedef struct {
    uint32_t RESERVED0[5];
    volatile uint32_t SCEN;
    uint32_t RESERVED1[3];
    volatile uint32_t CTSE;
    uint32_t RESERVED2[22];
} stc_usart_cr3_bit_t;

typedef struct {
    uint32_t RESERVED0[6];
    volatile uint32_t VBUSOVEN;
    volatile uint32_t VBUSVAL;
    uint32_t RESERVED1[24];
} stc_usbfs_gvbuscfg_bit_t;

typedef struct {
    volatile uint32_t GINTMSK;
    uint32_t RESERVED0[4];
    volatile uint32_t DMAEN;
    uint32_t RESERVED1[1];
    volatile uint32_t TXFELVL;
    volatile uint32_t PTXFELVL;
    uint32_t RESERVED2[23];
} stc_usbfs_gahbcfg_bit_t;

typedef struct {
    uint32_t RESERVED0[6];
    volatile uint32_t PHYSEL;
    uint32_t RESERVED1[22];
    volatile uint32_t FHMOD;
    volatile uint32_t FDMOD;
    uint32_t RESERVED2[1];
} stc_usbfs_gusbcfg_bit_t;

typedef struct {
    volatile uint32_t CSRST;
    volatile uint32_t HSRST;
    volatile uint32_t FCRST;
    uint32_t RESERVED0[1];
    volatile uint32_t RXFFLSH;
    volatile uint32_t TXFFLSH;
    uint32_t RESERVED1[24];
    volatile const  uint32_t DMAREQ;
    volatile const  uint32_t AHBIDL;
} stc_usbfs_grstctl_bit_t;

typedef struct {
    volatile const  uint32_t CMOD;
    volatile uint32_t MMIS;
    uint32_t RESERVED0[1];
    volatile uint32_t SOF;
    volatile const  uint32_t RXFNE;
    volatile const  uint32_t NPTXFE;
    volatile const  uint32_t GINAKEFF;
    volatile const  uint32_t GONAKEFF;
    uint32_t RESERVED1[2];
    volatile uint32_t ESUSP;
    volatile uint32_t USBSUSP;
    volatile uint32_t USBRST;
    volatile uint32_t ENUMDNE;
    volatile uint32_t ISOODRP;
    volatile uint32_t EOPF;
    uint32_t RESERVED2[2];
    volatile const  uint32_t IEPINT;
    volatile const  uint32_t OEPINT;
    volatile uint32_t IISOIXFR;
    volatile uint32_t IPXFR_INCOMPISOOUT;
    volatile uint32_t DATAFSUSP;
    uint32_t RESERVED3[1];
    volatile const  uint32_t HPRTINT;
    volatile const  uint32_t HCINT;
    volatile const  uint32_t PTXFE;
    uint32_t RESERVED4[1];
    volatile uint32_t CIDSCHG;
    volatile uint32_t DISCINT;
    volatile uint32_t VBUSVINT;
    volatile uint32_t WKUINT;
} stc_usbfs_gintsts_bit_t;

typedef struct {
    uint32_t RESERVED0[1];
    volatile uint32_t MMISM;
    uint32_t RESERVED1[1];
    volatile uint32_t SOFM;
    volatile uint32_t RXFNEM;
    volatile uint32_t NPTXFEM;
    volatile uint32_t GINAKEFFM;
    volatile uint32_t GONAKEFFM;
    uint32_t RESERVED2[2];
    volatile uint32_t ESUSPM;
    volatile uint32_t USBSUSPM;
    volatile uint32_t USBRSTM;
    volatile uint32_t ENUMDNEM;
    volatile uint32_t ISOODRPM;
    volatile uint32_t EOPFM;
    uint32_t RESERVED3[2];
    volatile uint32_t IEPIM;
    volatile uint32_t OEPIM;
    volatile uint32_t IISOIXFRM;
    volatile uint32_t IPXFRM_INCOMPISOOUTM;
    volatile uint32_t DATAFSUSPM;
    uint32_t RESERVED4[1];
    volatile uint32_t HPRTIM;
    volatile uint32_t HCIM;
    volatile uint32_t PTXFEM;
    uint32_t RESERVED5[1];
    volatile uint32_t CIDSCHGM;
    volatile uint32_t DISCIM;
    volatile uint32_t VBUSVIM;
    volatile uint32_t WKUIM;
} stc_usbfs_gintmsk_bit_t;

typedef struct {
    uint32_t RESERVED0[2];
    volatile uint32_t FSLSS;
    uint32_t RESERVED1[29];
} stc_usbfs_hcfg_bit_t;

typedef struct {
    volatile const  uint32_t PCSTS;
    volatile uint32_t PCDET;
    volatile uint32_t PENA;
    volatile uint32_t PENCHNG;
    uint32_t RESERVED0[2];
    volatile uint32_t PRES;
    volatile uint32_t PSUSP;
    volatile uint32_t PRST;
    uint32_t RESERVED1[3];
    volatile uint32_t PWPR;
    uint32_t RESERVED2[19];
} stc_usbfs_hprt_bit_t;

typedef struct {
    uint32_t RESERVED0[15];
    volatile uint32_t EPDIR;
    uint32_t RESERVED1[1];
    volatile uint32_t LSDEV;
    uint32_t RESERVED2[11];
    volatile uint32_t ODDFRM;
    volatile uint32_t CHDIS;
    volatile uint32_t CHENA;
} stc_usbfs_hcchar_bit_t;

typedef struct {
    volatile uint32_t XFRC;
    volatile uint32_t CHH;
    uint32_t RESERVED0[1];
    volatile uint32_t STALL;
    volatile uint32_t NAK;
    volatile uint32_t ACK;
    uint32_t RESERVED1[1];
    volatile uint32_t TXERR;
    volatile uint32_t BBERR;
    volatile uint32_t FRMOR;
    volatile uint32_t DTERR;
    uint32_t RESERVED2[21];
} stc_usbfs_hcint_bit_t;

typedef struct {
    volatile uint32_t XFRCM;
    volatile uint32_t CHHM;
    uint32_t RESERVED0[1];
    volatile uint32_t STALLM;
    volatile uint32_t NAKM;
    volatile uint32_t ACKM;
    uint32_t RESERVED1[1];
    volatile uint32_t TXERRM;
    volatile uint32_t BBERRM;
    volatile uint32_t FRMORM;
    volatile uint32_t DTERRM;
    uint32_t RESERVED2[21];
} stc_usbfs_hcintmsk_bit_t;

typedef struct {
    uint32_t RESERVED0[2];
    volatile uint32_t NZLSOHSK;
    uint32_t RESERVED1[29];
} stc_usbfs_dcfg_bit_t;

typedef struct {
    volatile uint32_t RWUSIG;
    volatile uint32_t SDIS;
    volatile const  uint32_t GINSTS;
    volatile const  uint32_t GONSTS;
    uint32_t RESERVED0[3];
    volatile  uint32_t SGINAK;
    volatile  uint32_t CGINAK;
    volatile  uint32_t SGONAK;
    volatile  uint32_t CGONAK;
    volatile uint32_t POPRGDNE;
    uint32_t RESERVED1[20];
} stc_usbfs_dctl_bit_t;

typedef struct {
    volatile const  uint32_t SUSPSTS;
    uint32_t RESERVED0[2];
    volatile const  uint32_t EERR;
    uint32_t RESERVED1[28];
} stc_usbfs_dsts_bit_t;

typedef struct {
    volatile uint32_t XFRCM;
    volatile uint32_t EPDM;
    uint32_t RESERVED0[1];
    volatile uint32_t TOM;
    volatile uint32_t TTXFEMSK;
    volatile uint32_t INEPNMM;
    volatile uint32_t INEPNEM;
    uint32_t RESERVED1[25];
} stc_usbfs_diepmsk_bit_t;

typedef struct {
    volatile uint32_t XFRCM;
    volatile uint32_t EPDM;
    uint32_t RESERVED0[1];
    volatile uint32_t STUPM;
    volatile uint32_t OTEPDM;
    uint32_t RESERVED1[27];
} stc_usbfs_doepmsk_bit_t;

typedef struct {
    uint32_t RESERVED0[15];
    volatile const  uint32_t USBAEP;
    uint32_t RESERVED1[1];
    volatile const  uint32_t NAKSTS;
    uint32_t RESERVED2[3];
    volatile uint32_t STALL;
    uint32_t RESERVED3[4];
    volatile uint32_t CNAK;
    volatile uint32_t SNAK;
    uint32_t RESERVED4[2];
    volatile uint32_t EPDIS;
    volatile uint32_t EPENA;
} stc_usbfs_diepctl0_bit_t;

typedef struct {
    volatile uint32_t XFRC;
    volatile uint32_t EPDISD;
    uint32_t RESERVED0[1];
    volatile uint32_t TOC;
    volatile uint32_t TTXFE;
    uint32_t RESERVED1[1];
    volatile uint32_t INEPNE;
    volatile const  uint32_t TXFE;
    uint32_t RESERVED2[24];
} stc_usbfs_diepint_bit_t;

typedef struct {
    uint32_t RESERVED0[15];
    volatile uint32_t USBAEP;
    volatile const  uint32_t EONUM_DPID;
    volatile const  uint32_t NAKSTS;
    uint32_t RESERVED1[3];
    volatile uint32_t STALL;
    uint32_t RESERVED2[4];
    volatile uint32_t CNAK;
    volatile uint32_t SNAK;
    volatile uint32_t SD0PID_SEVNFRM;
    volatile uint32_t SODDFRM;
    volatile uint32_t EPDIS;
    volatile uint32_t EPENA;
} stc_usbfs_diepctl_bit_t;

typedef struct {
    uint32_t RESERVED0[15];
    volatile const  uint32_t USBAEP;
    uint32_t RESERVED1[1];
    volatile const  uint32_t NAKSTS;
    uint32_t RESERVED2[2];
    volatile uint32_t SNPM;
    volatile uint32_t STALL;
    uint32_t RESERVED3[4];
    volatile uint32_t CNAK;
    volatile uint32_t SNAK;
    uint32_t RESERVED4[2];
    volatile const  uint32_t EPDIS;
    volatile uint32_t EPENA;
} stc_usbfs_doepctl0_bit_t;

typedef struct {
    volatile uint32_t XFRC;
    volatile uint32_t EPDISD;
    uint32_t RESERVED0[1];
    volatile uint32_t STUP;
    volatile uint32_t OTEPDIS;
    uint32_t RESERVED1[1];
    volatile uint32_t B2BSTUP;
    uint32_t RESERVED2[25];
} stc_usbfs_doepint_bit_t;

typedef struct {
    uint32_t RESERVED0[19];
    volatile uint32_t PKTCNT;
    uint32_t RESERVED1[12];
} stc_usbfs_doeptsiz0_bit_t;

typedef struct {
    uint32_t RESERVED0[15];
    volatile uint32_t USBAEP;
    volatile const  uint32_t DPID;
    volatile const  uint32_t NAKSTS;
    uint32_t RESERVED1[2];
    volatile uint32_t SNPM;
    volatile uint32_t STALL;
    uint32_t RESERVED2[4];
    volatile uint32_t CNAK;
    volatile uint32_t SNAK;
    volatile uint32_t SD0PID;
    volatile uint32_t SD1PID;
    volatile uint32_t EPDIS;
    volatile uint32_t EPENA;
} stc_usbfs_doepctl_bit_t;

typedef struct {
    volatile uint32_t STPPCLK;
    volatile uint32_t GATEHCLK;
    uint32_t RESERVED0[30];
} stc_usbfs_gcctl_bit_t;

typedef struct {
    uint32_t RESERVED0[16];
    volatile uint32_t SLPOFF;
    uint32_t RESERVED1[14];
    volatile uint32_t ITS;
} stc_wdt_cr_bit_t;

typedef struct {
    uint32_t RESERVED0[16];
    volatile uint32_t UDF;
    volatile uint32_t REF;
    uint32_t RESERVED1[14];
} stc_wdt_sr_bit_t;


typedef struct {
    stc_adc_str_bit_t                        STR_b;
    uint32_t                                 RESERVED0[8];
    stc_adc_cr0_bit_t                        CR0_b;
    stc_adc_cr1_bit_t                        CR1_b;
    uint32_t                                 RESERVED1[32];
    stc_adc_trgsr_bit_t                      TRGSR_b;
    uint32_t                                 RESERVED2[464];
    stc_adc_isr_bit_t                        ISR_b;
    stc_adc_icr_bit_t                        ICR_b;
    uint32_t                                 RESERVED3[32];
    stc_adc_synccr_bit_t                     SYNCCR_b;
    uint32_t                                 RESERVED4[656];
    stc_adc_awdcr_bit_t                      AWDCR_b;
    uint32_t                                 RESERVED5[352];
    stc_adc_pgainsr1_bit_t                   PGAINSR1_b;
} bCM_ADC_TypeDef;

typedef struct {
    stc_aes_cr_bit_t                         CR_b;
} bCM_AES_TypeDef;

typedef struct {
    stc_aos_intsfttrg_bit_t                  INTSFTTRG_b;
    uint32_t                                 RESERVED0[2912];
    stc_aos_pevntnfcr_bit_t                  PEVNTNFCR_b;
} bCM_AOS_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[1280];
    stc_can_cfg_stat_bit_t                   CFG_STAT_b;
    stc_can_tcmd_bit_t                       TCMD_b;
    stc_can_tctrl_bit_t                      TCTRL_b;
    stc_can_rctrl_bit_t                      RCTRL_b;
    stc_can_rtie_bit_t                       RTIE_b;
    stc_can_rtif_bit_t                       RTIF_b;
    stc_can_errint_bit_t                     ERRINT_b;
    uint32_t                                 RESERVED1[104];
    stc_can_acfctrl_bit_t                    ACFCTRL_b;
    uint32_t                                 RESERVED2[8];
    stc_can_acfen_bit_t                      ACFEN_b;
    uint32_t                                 RESERVED3[8];
    stc_can_acf_bit_t                        ACF_b;
    uint32_t                                 RESERVED4[16];
    stc_can_tbslot_bit_t                     TBSLOT_b;
    stc_can_ttcfg_bit_t                      TTCFG_b;
    stc_can_ref_msg_bit_t                    REF_MSG_b;
} bCM_CAN_TypeDef;

typedef struct {
    stc_cmp_ctrl_bit_t                       CTRL_b;
    stc_cmp_vltsel_bit_t                     VLTSEL_b;
    stc_cmp_outmon_bit_t                     OUTMON_b;
} bCM_CMP_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[2112];
    stc_cmp_common_dacr_bit_t                DACR_b;
    uint32_t                                 RESERVED1[16];
    stc_cmp_common_rvadc_bit_t               RVADC_b;
} bCM_CMP_COMMON_TypeDef;

typedef struct {
    stc_crc_cr_bit_t                         CR_b;
    stc_crc_reslt_bit_t                      RESLT_b;
    uint32_t                                 RESERVED0[32];
    stc_crc_flg_bit_t                        FLG_b;
} bCM_CRC_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[224];
    stc_dbgc_mcudbgstat_bit_t                MCUDBGSTAT_b;
    stc_dbgc_mcustpctl_bit_t                 MCUSTPCTL_b;
    stc_dbgc_mcutracectl_bit_t               MCUTRACECTL_b;
} bCM_DBGC_TypeDef;

typedef struct {
    stc_dcu_ctl_bit_t                        CTL_b;
    stc_dcu_flag_bit_t                       FLAG_b;
    uint32_t                                 RESERVED0[96];
    stc_dcu_flagclr_bit_t                    FLAGCLR_b;
    stc_dcu_intevtsel_bit_t                  INTEVTSEL_b;
} bCM_DCU_TypeDef;

typedef struct {
    stc_dma_en_bit_t                         EN_b;
    stc_dma_intstat0_bit_t                   INTSTAT0_b;
    stc_dma_intstat1_bit_t                   INTSTAT1_b;
    stc_dma_intmask0_bit_t                   INTMASK0_b;
    stc_dma_intmask1_bit_t                   INTMASK1_b;
    stc_dma_intclr0_bit_t                    INTCLR0_b;
    stc_dma_intclr1_bit_t                    INTCLR1_b;
    uint32_t                                 RESERVED0[32];
    stc_dma_reqstat_bit_t                    REQSTAT_b;
    stc_dma_chstat_bit_t                     CHSTAT_b;
    uint32_t                                 RESERVED1[32];
    stc_dma_rcfgctl_bit_t                    RCFGCTL_b;
    stc_dma_swreq_bit_t                      SWREQ_b;
    uint32_t                                 RESERVED2[320];
    stc_dma_chctl_bit_t                      CHCTL0_b;
    uint32_t                                 RESERVED3[480];
    stc_dma_chctl_bit_t                      CHCTL1_b;
    uint32_t                                 RESERVED4[480];
    stc_dma_chctl_bit_t                      CHCTL2_b;
    uint32_t                                 RESERVED5[480];
    stc_dma_chctl_bit_t                      CHCTL3_b;
} bCM_DMA_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[32];
    stc_efm_fstp_bit_t                       FSTP_b;
    stc_efm_frmc_bit_t                       FRMC_b;
    stc_efm_fwmc_bit_t                       FWMC_b;
    stc_efm_fsr_bit_t                        FSR_b;
    stc_efm_fsclr_bit_t                      FSCLR_b;
    stc_efm_fite_bit_t                       FITE_b;
    stc_efm_fswp_bit_t                       FSWP_b;
    uint32_t                                 RESERVED1[1824];
    stc_efm_mmf_remcr_bit_t                  MMF_REMCR0_b;
    stc_efm_mmf_remcr_bit_t                  MMF_REMCR1_b;
} bCM_EFM_TypeDef;

typedef struct {
    stc_emb_ctl_bit_t                        CTL_b;
    stc_emb_pwmlv_bit_t                      PWMLV_b;
    stc_emb_soe_bit_t                        SOE_b;
    stc_emb_stat_bit_t                       STAT_b;
    stc_emb_statclr_bit_t                    STATCLR_b;
    stc_emb_inten_bit_t                      INTEN_b;
} bCM_EMB_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[96];
    stc_fcm_str_bit_t                        STR_b;
    uint32_t                                 RESERVED1[32];
    stc_fcm_rccr_bit_t                       RCCR_b;
    stc_fcm_rier_bit_t                       RIER_b;
    stc_fcm_sr_bit_t                         SR_b;
    stc_fcm_clr_bit_t                        CLR_b;
} bCM_FCM_TypeDef;

typedef struct {
    stc_gpio_pidr_bit_t                      PIDRA_b;
    uint32_t                                 RESERVED0[16];
    stc_gpio_podr_bit_t                      PODRA_b;
    stc_gpio_poer_bit_t                      POERA_b;
    stc_gpio_posr_bit_t                      POSRA_b;
    stc_gpio_porr_bit_t                      PORRA_b;
    stc_gpio_potr_bit_t                      POTRA_b;
    uint32_t                                 RESERVED1[16];
    stc_gpio_pidr_bit_t                      PIDRB_b;
    uint32_t                                 RESERVED2[16];
    stc_gpio_podr_bit_t                      PODRB_b;
    stc_gpio_poer_bit_t                      POERB_b;
    stc_gpio_posr_bit_t                      POSRB_b;
    stc_gpio_porr_bit_t                      PORRB_b;
    stc_gpio_potr_bit_t                      POTRB_b;
    uint32_t                                 RESERVED3[16];
    stc_gpio_pidr_bit_t                      PIDRC_b;
    uint32_t                                 RESERVED4[16];
    stc_gpio_podr_bit_t                      PODRC_b;
    stc_gpio_poer_bit_t                      POERC_b;
    stc_gpio_posr_bit_t                      POSRC_b;
    stc_gpio_porr_bit_t                      PORRC_b;
    stc_gpio_potr_bit_t                      POTRC_b;
    uint32_t                                 RESERVED5[16];
    stc_gpio_pidr_bit_t                      PIDRD_b;
    uint32_t                                 RESERVED6[16];
    stc_gpio_podr_bit_t                      PODRD_b;
    stc_gpio_poer_bit_t                      POERD_b;
    stc_gpio_posr_bit_t                      POSRD_b;
    stc_gpio_porr_bit_t                      PORRD_b;
    stc_gpio_potr_bit_t                      POTRD_b;
    uint32_t                                 RESERVED7[16];
    stc_gpio_pidr_bit_t                      PIDRE_b;
    uint32_t                                 RESERVED8[16];
    stc_gpio_podr_bit_t                      PODRE_b;
    stc_gpio_poer_bit_t                      POERE_b;
    stc_gpio_posr_bit_t                      POSRE_b;
    stc_gpio_porr_bit_t                      PORRE_b;
    stc_gpio_potr_bit_t                      POTRE_b;
    uint32_t                                 RESERVED9[16];
    stc_gpio_pidrh_bit_t                     PIDRH_b;
    uint32_t                                 RESERVED10[16];
    stc_gpio_podrh_bit_t                     PODRH_b;
    stc_gpio_poerh_bit_t                     POERH_b;
    stc_gpio_posrh_bit_t                     POSRH_b;
    stc_gpio_porrh_bit_t                     PORRH_b;
    stc_gpio_potrh_bit_t                     POTRH_b;
    uint32_t                                 RESERVED11[7408];
    stc_gpio_pwpr_bit_t                      PWPR_b;
    uint32_t                                 RESERVED12[16];
    stc_gpio_pcr_bit_t                       PCRA0_b;
    stc_gpio_pfsr_bit_t                      PFSRA0_b;
    stc_gpio_pcr_bit_t                       PCRA1_b;
    stc_gpio_pfsr_bit_t                      PFSRA1_b;
    stc_gpio_pcr_bit_t                       PCRA2_b;
    stc_gpio_pfsr_bit_t                      PFSRA2_b;
    stc_gpio_pcr_bit_t                       PCRA3_b;
    stc_gpio_pfsr_bit_t                      PFSRA3_b;
    stc_gpio_pcr_bit_t                       PCRA4_b;
    stc_gpio_pfsr_bit_t                      PFSRA4_b;
    stc_gpio_pcr_bit_t                       PCRA5_b;
    stc_gpio_pfsr_bit_t                      PFSRA5_b;
    stc_gpio_pcr_bit_t                       PCRA6_b;
    stc_gpio_pfsr_bit_t                      PFSRA6_b;
    stc_gpio_pcr_bit_t                       PCRA7_b;
    stc_gpio_pfsr_bit_t                      PFSRA7_b;
    stc_gpio_pcr_bit_t                       PCRA8_b;
    stc_gpio_pfsr_bit_t                      PFSRA8_b;
    stc_gpio_pcr_bit_t                       PCRA9_b;
    stc_gpio_pfsr_bit_t                      PFSRA9_b;
    stc_gpio_pcr_bit_t                       PCRA10_b;
    stc_gpio_pfsr_bit_t                      PFSRA10_b;
    stc_gpio_pcr_bit_t                       PCRA11_b;
    stc_gpio_pfsr_bit_t                      PFSRA11_b;
    stc_gpio_pcr_bit_t                       PCRA12_b;
    stc_gpio_pfsr_bit_t                      PFSRA12_b;
    stc_gpio_pcr_bit_t                       PCRA13_b;
    stc_gpio_pfsr_bit_t                      PFSRA13_b;
    stc_gpio_pcr_bit_t                       PCRA14_b;
    stc_gpio_pfsr_bit_t                      PFSRA14_b;
    stc_gpio_pcr_bit_t                       PCRA15_b;
    stc_gpio_pfsr_bit_t                      PFSRA15_b;
    stc_gpio_pcr_bit_t                       PCRB0_b;
    stc_gpio_pfsr_bit_t                      PFSRB0_b;
    stc_gpio_pcr_bit_t                       PCRB1_b;
    stc_gpio_pfsr_bit_t                      PFSRB1_b;
    stc_gpio_pcr_bit_t                       PCRB2_b;
    stc_gpio_pfsr_bit_t                      PFSRB2_b;
    stc_gpio_pcr_bit_t                       PCRB3_b;
    stc_gpio_pfsr_bit_t                      PFSRB3_b;
    stc_gpio_pcr_bit_t                       PCRB4_b;
    stc_gpio_pfsr_bit_t                      PFSRB4_b;
    stc_gpio_pcr_bit_t                       PCRB5_b;
    stc_gpio_pfsr_bit_t                      PFSRB5_b;
    stc_gpio_pcr_bit_t                       PCRB6_b;
    stc_gpio_pfsr_bit_t                      PFSRB6_b;
    stc_gpio_pcr_bit_t                       PCRB7_b;
    stc_gpio_pfsr_bit_t                      PFSRB7_b;
    stc_gpio_pcr_bit_t                       PCRB8_b;
    stc_gpio_pfsr_bit_t                      PFSRB8_b;
    stc_gpio_pcr_bit_t                       PCRB9_b;
    stc_gpio_pfsr_bit_t                      PFSRB9_b;
    stc_gpio_pcr_bit_t                       PCRB10_b;
    stc_gpio_pfsr_bit_t                      PFSRB10_b;
    stc_gpio_pcr_bit_t                       PCRB11_b;
    stc_gpio_pfsr_bit_t                      PFSRB11_b;
    stc_gpio_pcr_bit_t                       PCRB12_b;
    stc_gpio_pfsr_bit_t                      PFSRB12_b;
    stc_gpio_pcr_bit_t                       PCRB13_b;
    stc_gpio_pfsr_bit_t                      PFSRB13_b;
    stc_gpio_pcr_bit_t                       PCRB14_b;
    stc_gpio_pfsr_bit_t                      PFSRB14_b;
    stc_gpio_pcr_bit_t                       PCRB15_b;
    stc_gpio_pfsr_bit_t                      PFSRB15_b;
    stc_gpio_pcr_bit_t                       PCRC0_b;
    stc_gpio_pfsr_bit_t                      PFSRC0_b;
    stc_gpio_pcr_bit_t                       PCRC1_b;
    stc_gpio_pfsr_bit_t                      PFSRC1_b;
    stc_gpio_pcr_bit_t                       PCRC2_b;
    stc_gpio_pfsr_bit_t                      PFSRC2_b;
    stc_gpio_pcr_bit_t                       PCRC3_b;
    stc_gpio_pfsr_bit_t                      PFSRC3_b;
    stc_gpio_pcr_bit_t                       PCRC4_b;
    stc_gpio_pfsr_bit_t                      PFSRC4_b;
    stc_gpio_pcr_bit_t                       PCRC5_b;
    stc_gpio_pfsr_bit_t                      PFSRC5_b;
    stc_gpio_pcr_bit_t                       PCRC6_b;
    stc_gpio_pfsr_bit_t                      PFSRC6_b;
    stc_gpio_pcr_bit_t                       PCRC7_b;
    stc_gpio_pfsr_bit_t                      PFSRC7_b;
    stc_gpio_pcr_bit_t                       PCRC8_b;
    stc_gpio_pfsr_bit_t                      PFSRC8_b;
    stc_gpio_pcr_bit_t                       PCRC9_b;
    stc_gpio_pfsr_bit_t                      PFSRC9_b;
    stc_gpio_pcr_bit_t                       PCRC10_b;
    stc_gpio_pfsr_bit_t                      PFSRC10_b;
    stc_gpio_pcr_bit_t                       PCRC11_b;
    stc_gpio_pfsr_bit_t                      PFSRC11_b;
    stc_gpio_pcr_bit_t                       PCRC12_b;
    stc_gpio_pfsr_bit_t                      PFSRC12_b;
    stc_gpio_pcr_bit_t                       PCRC13_b;
    stc_gpio_pfsr_bit_t                      PFSRC13_b;
    stc_gpio_pcr_bit_t                       PCRC14_b;
    stc_gpio_pfsr_bit_t                      PFSRC14_b;
    stc_gpio_pcr_bit_t                       PCRC15_b;
    stc_gpio_pfsr_bit_t                      PFSRC15_b;
    stc_gpio_pcr_bit_t                       PCRD0_b;
    stc_gpio_pfsr_bit_t                      PFSRD0_b;
    stc_gpio_pcr_bit_t                       PCRD1_b;
    stc_gpio_pfsr_bit_t                      PFSRD1_b;
    stc_gpio_pcr_bit_t                       PCRD2_b;
    stc_gpio_pfsr_bit_t                      PFSRD2_b;
    stc_gpio_pcr_bit_t                       PCRD3_b;
    stc_gpio_pfsr_bit_t                      PFSRD3_b;
    stc_gpio_pcr_bit_t                       PCRD4_b;
    stc_gpio_pfsr_bit_t                      PFSRD4_b;
    stc_gpio_pcr_bit_t                       PCRD5_b;
    stc_gpio_pfsr_bit_t                      PFSRD5_b;
    stc_gpio_pcr_bit_t                       PCRD6_b;
    stc_gpio_pfsr_bit_t                      PFSRD6_b;
    stc_gpio_pcr_bit_t                       PCRD7_b;
    stc_gpio_pfsr_bit_t                      PFSRD7_b;
    stc_gpio_pcr_bit_t                       PCRD8_b;
    stc_gpio_pfsr_bit_t                      PFSRD8_b;
    stc_gpio_pcr_bit_t                       PCRD9_b;
    stc_gpio_pfsr_bit_t                      PFSRD9_b;
    stc_gpio_pcr_bit_t                       PCRD10_b;
    stc_gpio_pfsr_bit_t                      PFSRD10_b;
    stc_gpio_pcr_bit_t                       PCRD11_b;
    stc_gpio_pfsr_bit_t                      PFSRD11_b;
    stc_gpio_pcr_bit_t                       PCRD12_b;
    stc_gpio_pfsr_bit_t                      PFSRD12_b;
    stc_gpio_pcr_bit_t                       PCRD13_b;
    stc_gpio_pfsr_bit_t                      PFSRD13_b;
    stc_gpio_pcr_bit_t                       PCRD14_b;
    stc_gpio_pfsr_bit_t                      PFSRD14_b;
    stc_gpio_pcr_bit_t                       PCRD15_b;
    stc_gpio_pfsr_bit_t                      PFSRD15_b;
    stc_gpio_pcr_bit_t                       PCRE0_b;
    stc_gpio_pfsr_bit_t                      PFSRE0_b;
    stc_gpio_pcr_bit_t                       PCRE1_b;
    stc_gpio_pfsr_bit_t                      PFSRE1_b;
    stc_gpio_pcr_bit_t                       PCRE2_b;
    stc_gpio_pfsr_bit_t                      PFSRE2_b;
    stc_gpio_pcr_bit_t                       PCRE3_b;
    stc_gpio_pfsr_bit_t                      PFSRE3_b;
    stc_gpio_pcr_bit_t                       PCRE4_b;
    stc_gpio_pfsr_bit_t                      PFSRE4_b;
    stc_gpio_pcr_bit_t                       PCRE5_b;
    stc_gpio_pfsr_bit_t                      PFSRE5_b;
    stc_gpio_pcr_bit_t                       PCRE6_b;
    stc_gpio_pfsr_bit_t                      PFSRE6_b;
    stc_gpio_pcr_bit_t                       PCRE7_b;
    stc_gpio_pfsr_bit_t                      PFSRE7_b;
    stc_gpio_pcr_bit_t                       PCRE8_b;
    stc_gpio_pfsr_bit_t                      PFSRE8_b;
    stc_gpio_pcr_bit_t                       PCRE9_b;
    stc_gpio_pfsr_bit_t                      PFSRE9_b;
    stc_gpio_pcr_bit_t                       PCRE10_b;
    stc_gpio_pfsr_bit_t                      PFSRE10_b;
    stc_gpio_pcr_bit_t                       PCRE11_b;
    stc_gpio_pfsr_bit_t                      PFSRE11_b;
    stc_gpio_pcr_bit_t                       PCRE12_b;
    stc_gpio_pfsr_bit_t                      PFSRE12_b;
    stc_gpio_pcr_bit_t                       PCRE13_b;
    stc_gpio_pfsr_bit_t                      PFSRE13_b;
    stc_gpio_pcr_bit_t                       PCRE14_b;
    stc_gpio_pfsr_bit_t                      PFSRE14_b;
    stc_gpio_pcr_bit_t                       PCRE15_b;
    stc_gpio_pfsr_bit_t                      PFSRE15_b;
    stc_gpio_pcr_bit_t                       PCRH0_b;
    stc_gpio_pfsr_bit_t                      PFSRH0_b;
    stc_gpio_pcr_bit_t                       PCRH1_b;
    stc_gpio_pfsr_bit_t                      PFSRH1_b;
    stc_gpio_pcr_bit_t                       PCRH2_b;
    stc_gpio_pfsr_bit_t                      PFSRH2_b;
} bCM_GPIO_TypeDef;

typedef struct {
    stc_hash_cr_bit_t                        CR_b;
} bCM_HASH_TypeDef;

typedef struct {
    stc_i2c_cr1_bit_t                        CR1_b;
    stc_i2c_cr2_bit_t                        CR2_b;
    stc_i2c_cr3_bit_t                        CR3_b;
    stc_i2c_cr4_bit_t                        CR4_b;
    stc_i2c_slr0_bit_t                       SLR0_b;
    stc_i2c_slr1_bit_t                       SLR1_b;
    uint32_t                                 RESERVED0[32];
    stc_i2c_sr_bit_t                         SR_b;
    stc_i2c_clr_bit_t                        CLR_b;
    uint32_t                                 RESERVED1[96];
    stc_i2c_fltr_bit_t                       FLTR_b;
} bCM_I2C_TypeDef;

typedef struct {
    stc_i2s_ctrl_bit_t                       CTRL_b;
    stc_i2s_sr_bit_t                         SR_b;
    stc_i2s_er_bit_t                         ER_b;
    stc_i2s_cfgr_bit_t                       CFGR_b;
} bCM_I2S_TypeDef;

typedef struct {
    stc_icg_icg0_bit_t                       ICG0_b;
    stc_icg_icg1_bit_t                       ICG1_b;
} bCM_ICG_TypeDef;

typedef struct {
    stc_intc_nmicr_bit_t                     NMICR_b;
    stc_intc_nmienr_bit_t                    NMIENR_b;
    stc_intc_nmifr_bit_t                     NMIFR_b;
    stc_intc_nmicfr_bit_t                    NMICFR_b;
    stc_intc_eirqcr_bit_t                    EIRQCR0_b;
    stc_intc_eirqcr_bit_t                    EIRQCR1_b;
    stc_intc_eirqcr_bit_t                    EIRQCR2_b;
    stc_intc_eirqcr_bit_t                    EIRQCR3_b;
    stc_intc_eirqcr_bit_t                    EIRQCR4_b;
    stc_intc_eirqcr_bit_t                    EIRQCR5_b;
    stc_intc_eirqcr_bit_t                    EIRQCR6_b;
    stc_intc_eirqcr_bit_t                    EIRQCR7_b;
    stc_intc_eirqcr_bit_t                    EIRQCR8_b;
    stc_intc_eirqcr_bit_t                    EIRQCR9_b;
    stc_intc_eirqcr_bit_t                    EIRQCR10_b;
    stc_intc_eirqcr_bit_t                    EIRQCR11_b;
    stc_intc_eirqcr_bit_t                    EIRQCR12_b;
    stc_intc_eirqcr_bit_t                    EIRQCR13_b;
    stc_intc_eirqcr_bit_t                    EIRQCR14_b;
    stc_intc_eirqcr_bit_t                    EIRQCR15_b;
    stc_intc_wupen_bit_t                     WUPEN_b;
    stc_intc_eifr_bit_t                      EIFR_b;
    stc_intc_eifcr_bit_t                     EIFCR_b;
    uint32_t                                 RESERVED0[4096];
    stc_intc_vssel_bit_t                     VSSEL128_b;
    stc_intc_vssel_bit_t                     VSSEL129_b;
    stc_intc_vssel_bit_t                     VSSEL130_b;
    stc_intc_vssel_bit_t                     VSSEL131_b;
    stc_intc_vssel_bit_t                     VSSEL132_b;
    stc_intc_vssel_bit_t                     VSSEL133_b;
    stc_intc_vssel_bit_t                     VSSEL134_b;
    stc_intc_vssel_bit_t                     VSSEL135_b;
    stc_intc_vssel_bit_t                     VSSEL136_b;
    stc_intc_vssel_bit_t                     VSSEL137_b;
    stc_intc_vssel_bit_t                     VSSEL138_b;
    stc_intc_vssel_bit_t                     VSSEL139_b;
    stc_intc_vssel_bit_t                     VSSEL140_b;
    stc_intc_vssel_bit_t                     VSSEL141_b;
    stc_intc_vssel_bit_t                     VSSEL142_b;
    stc_intc_vssel_bit_t                     VSSEL143_b;
    stc_intc_swier_bit_t                     SWIER_b;
    stc_intc_evter_bit_t                     EVTER_b;
    stc_intc_ier_bit_t                       IER_b;
} bCM_INTC_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[32];
    stc_keyscan_ser_bit_t                    SER_b;
} bCM_KEYSCAN_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[512];
    stc_mpu_rgcr_bit_t                       RGCR0_b;
    stc_mpu_rgcr_bit_t                       RGCR1_b;
    stc_mpu_rgcr_bit_t                       RGCR2_b;
    stc_mpu_rgcr_bit_t                       RGCR3_b;
    stc_mpu_rgcr_bit_t                       RGCR4_b;
    stc_mpu_rgcr_bit_t                       RGCR5_b;
    stc_mpu_rgcr_bit_t                       RGCR6_b;
    stc_mpu_rgcr_bit_t                       RGCR7_b;
    stc_mpu_rgcr_bit_t                       RGCR8_b;
    stc_mpu_rgcr_bit_t                       RGCR9_b;
    stc_mpu_rgcr_bit_t                       RGCR10_b;
    stc_mpu_rgcr_bit_t                       RGCR11_b;
    stc_mpu_rgcr_bit_t                       RGCR12_b;
    stc_mpu_rgcr_bit_t                       RGCR13_b;
    stc_mpu_rgcr_bit_t                       RGCR14_b;
    stc_mpu_rgcr_bit_t                       RGCR15_b;
    stc_mpu_cr_bit_t                         CR_b;
    stc_mpu_sr_bit_t                         SR_b;
    stc_mpu_eclr_bit_t                       ECLR_b;
    stc_mpu_wp_bit_t                         WP_b;
    uint32_t                                 RESERVED1[130144];
    stc_mpu_ippr_bit_t                       IPPR_b;
} bCM_MPU_TypeDef;

typedef struct {
    stc_ots_ctl_bit_t                        CTL_b;
} bCM_OTS_TypeDef;

typedef struct {
    stc_peric_usbfs_syctlreg_bit_t           USBFS_SYCTLREG_b;
    stc_peric_sdioc_syctlreg_bit_t           SDIOC_SYCTLREG_b;
} bCM_PERIC_TypeDef;

typedef struct {
    stc_qspi_cr_bit_t                        CR_b;
    uint32_t                                 RESERVED0[32];
    stc_qspi_fcr_bit_t                       FCR_b;
    stc_qspi_sr_bit_t                        SR_b;
    uint32_t                                 RESERVED1[160];
    stc_qspi_clr_bit_t                       CLR_b;
} bCM_QSPI_TypeDef;

typedef struct {
    stc_rmu_rstf0_bit_t                      RSTF0_b;
} bCM_RMU_TypeDef;

typedef struct {
    stc_rtc_cr0_bit_t                        CR0_b;
    uint32_t                                 RESERVED0[24];
    stc_rtc_cr1_bit_t                        CR1_b;
    uint32_t                                 RESERVED1[24];
    stc_rtc_cr2_bit_t                        CR2_b;
    uint32_t                                 RESERVED2[24];
    stc_rtc_cr3_bit_t                        CR3_b;
    uint32_t                                 RESERVED3[344];
    stc_rtc_errcrh_bit_t                     ERRCRH_b;
} bCM_RTC_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[96];
    stc_sdioc_transmode_bit_t                TRANSMODE_b;
    stc_sdioc_cmd_bit_t                      CMD_b;
    uint32_t                                 RESERVED1[160];
    stc_sdioc_pstat_bit_t                    PSTAT_b;
    stc_sdioc_hostcon_bit_t                  HOSTCON_b;
    stc_sdioc_pwrcon_bit_t                   PWRCON_b;
    stc_sdioc_blkgpcon_bit_t                 BLKGPCON_b;
    uint32_t                                 RESERVED2[8];
    stc_sdioc_clkcon_bit_t                   CLKCON_b;
    uint32_t                                 RESERVED3[8];
    stc_sdioc_sftrst_bit_t                   SFTRST_b;
    stc_sdioc_norintst_bit_t                 NORINTST_b;
    stc_sdioc_errintst_bit_t                 ERRINTST_b;
    stc_sdioc_norintsten_bit_t               NORINTSTEN_b;
    stc_sdioc_errintsten_bit_t               ERRINTSTEN_b;
    stc_sdioc_norintsgen_bit_t               NORINTSGEN_b;
    stc_sdioc_errintsgen_bit_t               ERRINTSGEN_b;
    stc_sdioc_atcerrst_bit_t                 ATCERRST_b;
    uint32_t                                 RESERVED4[144];
    stc_sdioc_fea_bit_t                      FEA_b;
    stc_sdioc_fee_bit_t                      FEE_b;
} bCM_SDIOC_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[32];
    stc_spi_cr1_bit_t                        CR1_b;
    uint32_t                                 RESERVED1[32];
    stc_spi_cfg1_bit_t                       CFG1_b;
    uint32_t                                 RESERVED2[32];
    stc_spi_sr_bit_t                         SR_b;
    stc_spi_cfg2_bit_t                       CFG2_b;
} bCM_SPI_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[32];
    stc_sramc_wtpr_bit_t                     WTPR_b;
    stc_sramc_ckcr_bit_t                     CKCR_b;
    stc_sramc_ckpr_bit_t                     CKPR_b;
    stc_sramc_cksr_bit_t                     CKSR_b;
} bCM_SRAMC_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[32];
    stc_swdt_sr_bit_t                        SR_b;
} bCM_SWDT_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[128];
    stc_tmr0_bconr_bit_t                     BCONR_b;
    stc_tmr0_stflr_bit_t                     STFLR_b;
} bCM_TMR0_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[192];
    stc_tmr4_ocsr_bit_t                      OCSRU_b;
    stc_tmr4_ocer_bit_t                      OCERU_b;
    stc_tmr4_ocsr_bit_t                      OCSRV_b;
    stc_tmr4_ocer_bit_t                      OCERV_b;
    stc_tmr4_ocsr_bit_t                      OCSRW_b;
    stc_tmr4_ocer_bit_t                      OCERW_b;
    stc_tmr4_ocmrh_bit_t                     OCMRUH_b;
    uint32_t                                 RESERVED1[16];
    stc_tmr4_ocmrl_bit_t                     OCMRUL_b;
    stc_tmr4_ocmrh_bit_t                     OCMRVH_b;
    uint32_t                                 RESERVED2[16];
    stc_tmr4_ocmrl_bit_t                     OCMRVL_b;
    stc_tmr4_ocmrh_bit_t                     OCMRWH_b;
    uint32_t                                 RESERVED3[16];
    stc_tmr4_ocmrl_bit_t                     OCMRWL_b;
    uint32_t                                 RESERVED4[96];
    stc_tmr4_ccsr_bit_t                      CCSR_b;
    uint32_t                                 RESERVED5[720];
    stc_tmr4_rcsr_bit_t                      RCSR_b;
    uint32_t                                 RESERVED6[272];
    stc_tmr4_scsr_bit_t                      SCSRUH_b;
    stc_tmr4_scmr_bit_t                      SCMRUH_b;
    stc_tmr4_scsr_bit_t                      SCSRUL_b;
    stc_tmr4_scmr_bit_t                      SCMRUL_b;
    stc_tmr4_scsr_bit_t                      SCSRVH_b;
    stc_tmr4_scmr_bit_t                      SCMRVH_b;
    stc_tmr4_scsr_bit_t                      SCSRVL_b;
    stc_tmr4_scmr_bit_t                      SCMRVL_b;
    stc_tmr4_scsr_bit_t                      SCSRWH_b;
    stc_tmr4_scmr_bit_t                      SCMRWH_b;
    stc_tmr4_scsr_bit_t                      SCSRWL_b;
    stc_tmr4_scmr_bit_t                      SCMRWL_b;
    uint32_t                                 RESERVED7[128];
    stc_tmr4_ecsr_bit_t                      ECSR_b;
} bCM_TMR4_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[640];
    stc_tmr6_gconr_bit_t                     GCONR_b;
    stc_tmr6_iconr_bit_t                     ICONR_b;
    stc_tmr6_pconr_bit_t                     PCONR_b;
    stc_tmr6_bconr_bit_t                     BCONR_b;
    stc_tmr6_dconr_bit_t                     DCONR_b;
    uint32_t                                 RESERVED1[32];
    stc_tmr6_fconr_bit_t                     FCONR_b;
    stc_tmr6_vperr_bit_t                     VPERR_b;
    stc_tmr6_stflr_bit_t                     STFLR_b;
    stc_tmr6_hstar_bit_t                     HSTAR_b;
    stc_tmr6_hstpr_bit_t                     HSTPR_b;
    stc_tmr6_hclrr_bit_t                     HCLRR_b;
    stc_tmr6_hcpar_bit_t                     HCPAR_b;
    stc_tmr6_hcpbr_bit_t                     HCPBR_b;
    stc_tmr6_hcupr_bit_t                     HCUPR_b;
    stc_tmr6_hcdor_bit_t                     HCDOR_b;
} bCM_TMR6_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[1952];
    stc_tmr6_common_sstar_bit_t              SSTAR_b;
    stc_tmr6_common_sstpr_bit_t              SSTPR_b;
    stc_tmr6_common_sclrr_bit_t              SCLRR_b;
} bCM_TMR6_COMMON_TypeDef;

typedef struct {
    uint32_t                                 RESERVED0[1024];
    stc_tmra_bcstrl_bit_t                    BCSTRL_b;
    stc_tmra_bcstrh_bit_t                    BCSTRH_b;
    uint32_t                                 RESERVED1[16];
    stc_tmra_hconr_bit_t                     HCONR_b;
    uint32_t                                 RESERVED2[16];
    stc_tmra_hcupr_bit_t                     HCUPR_b;
    uint32_t                                 RESERVED3[16];
    stc_tmra_hcdor_bit_t                     HCDOR_b;
    uint32_t                                 RESERVED4[16];
    stc_tmra_iconr_bit_t                     ICONR_b;
    uint32_t                                 RESERVED5[16];
    stc_tmra_econr_bit_t                     ECONR_b;
    uint32_t                                 RESERVED6[16];
    stc_tmra_fconr_bit_t                     FCONR_b;
    uint32_t                                 RESERVED7[16];
    stc_tmra_stflr_bit_t                     STFLR_b;
    uint32_t                                 RESERVED8[272];
    stc_tmra_bconr_bit_t                     BCONR1_b;
    uint32_t                                 RESERVED9[48];
    stc_tmra_bconr_bit_t                     BCONR2_b;
    uint32_t                                 RESERVED10[48];
    stc_tmra_bconr_bit_t                     BCONR3_b;
    uint32_t                                 RESERVED11[48];
    stc_tmra_bconr_bit_t                     BCONR4_b;
    uint32_t                                 RESERVED12[304];
    stc_tmra_cconr_bit_t                     CCONR1_b;
    uint32_t                                 RESERVED13[16];
    stc_tmra_cconr_bit_t                     CCONR2_b;
    uint32_t                                 RESERVED14[16];
    stc_tmra_cconr_bit_t                     CCONR3_b;
    uint32_t                                 RESERVED15[16];
    stc_tmra_cconr_bit_t                     CCONR4_b;
    uint32_t                                 RESERVED16[16];
    stc_tmra_cconr_bit_t                     CCONR5_b;
    uint32_t                                 RESERVED17[16];
    stc_tmra_cconr_bit_t                     CCONR6_b;
    uint32_t                                 RESERVED18[16];
    stc_tmra_cconr_bit_t                     CCONR7_b;
    uint32_t                                 RESERVED19[16];
    stc_tmra_cconr_bit_t                     CCONR8_b;
    uint32_t                                 RESERVED20[272];
    stc_tmra_pconr_bit_t                     PCONR1_b;
    uint32_t                                 RESERVED21[16];
    stc_tmra_pconr_bit_t                     PCONR2_b;
    uint32_t                                 RESERVED22[16];
    stc_tmra_pconr_bit_t                     PCONR3_b;
    uint32_t                                 RESERVED23[16];
    stc_tmra_pconr_bit_t                     PCONR4_b;
    uint32_t                                 RESERVED24[16];
    stc_tmra_pconr_bit_t                     PCONR5_b;
    uint32_t                                 RESERVED25[16];
    stc_tmra_pconr_bit_t                     PCONR6_b;
    uint32_t                                 RESERVED26[16];
    stc_tmra_pconr_bit_t                     PCONR7_b;
    uint32_t                                 RESERVED27[16];
    stc_tmra_pconr_bit_t                     PCONR8_b;
} bCM_TMRA_TypeDef;

typedef struct {
    stc_trng_cr_bit_t                        CR_b;
    stc_trng_mr_bit_t                        MR_b;
} bCM_TRNG_TypeDef;

typedef struct {
    stc_usart_sr_bit_t                       SR_b;
    stc_usart_tdr_bit_t                      TDR_b;
    uint32_t                                 RESERVED0[48];
    stc_usart_cr1_bit_t                      CR1_b;
    stc_usart_cr2_bit_t                      CR2_b;
    stc_usart_cr3_bit_t                      CR3_b;
} bCM_USART_TypeDef;

typedef struct {
    stc_usbfs_gvbuscfg_bit_t                 GVBUSCFG_b;
    uint32_t                                 RESERVED0[32];
    stc_usbfs_gahbcfg_bit_t                  GAHBCFG_b;
    stc_usbfs_gusbcfg_bit_t                  GUSBCFG_b;
    stc_usbfs_grstctl_bit_t                  GRSTCTL_b;
    stc_usbfs_gintsts_bit_t                  GINTSTS_b;
    stc_usbfs_gintmsk_bit_t                  GINTMSK_b;
    uint32_t                                 RESERVED1[7968];
    stc_usbfs_hcfg_bit_t                     HCFG_b;
    uint32_t                                 RESERVED2[480];
    stc_usbfs_hprt_bit_t                     HPRT_b;
    uint32_t                                 RESERVED3[1504];
    stc_usbfs_hcchar_bit_t                   HCCHAR0_b;
    uint32_t                                 RESERVED4[32];
    stc_usbfs_hcint_bit_t                    HCINT0_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK0_b;
    uint32_t                                 RESERVED5[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR1_b;
    uint32_t                                 RESERVED6[32];
    stc_usbfs_hcint_bit_t                    HCINT1_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK1_b;
    uint32_t                                 RESERVED7[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR2_b;
    uint32_t                                 RESERVED8[32];
    stc_usbfs_hcint_bit_t                    HCINT2_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK2_b;
    uint32_t                                 RESERVED9[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR3_b;
    uint32_t                                 RESERVED10[32];
    stc_usbfs_hcint_bit_t                    HCINT3_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK3_b;
    uint32_t                                 RESERVED11[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR4_b;
    uint32_t                                 RESERVED12[32];
    stc_usbfs_hcint_bit_t                    HCINT4_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK4_b;
    uint32_t                                 RESERVED13[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR5_b;
    uint32_t                                 RESERVED14[32];
    stc_usbfs_hcint_bit_t                    HCINT5_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK5_b;
    uint32_t                                 RESERVED15[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR6_b;
    uint32_t                                 RESERVED16[32];
    stc_usbfs_hcint_bit_t                    HCINT6_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK6_b;
    uint32_t                                 RESERVED17[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR7_b;
    uint32_t                                 RESERVED18[32];
    stc_usbfs_hcint_bit_t                    HCINT7_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK7_b;
    uint32_t                                 RESERVED19[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR8_b;
    uint32_t                                 RESERVED20[32];
    stc_usbfs_hcint_bit_t                    HCINT8_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK8_b;
    uint32_t                                 RESERVED21[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR9_b;
    uint32_t                                 RESERVED22[32];
    stc_usbfs_hcint_bit_t                    HCINT9_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK9_b;
    uint32_t                                 RESERVED23[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR10_b;
    uint32_t                                 RESERVED24[32];
    stc_usbfs_hcint_bit_t                    HCINT10_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK10_b;
    uint32_t                                 RESERVED25[128];
    stc_usbfs_hcchar_bit_t                   HCCHAR11_b;
    uint32_t                                 RESERVED26[32];
    stc_usbfs_hcint_bit_t                    HCINT11_b;
    stc_usbfs_hcintmsk_bit_t                 HCINTMSK11_b;
    uint32_t                                 RESERVED27[3200];
    stc_usbfs_dcfg_bit_t                     DCFG_b;
    stc_usbfs_dctl_bit_t                     DCTL_b;
    stc_usbfs_dsts_bit_t                     DSTS_b;
    uint32_t                                 RESERVED28[32];
    stc_usbfs_diepmsk_bit_t                  DIEPMSK_b;
    stc_usbfs_doepmsk_bit_t                  DOEPMSK_b;
    uint32_t                                 RESERVED29[1856];
    stc_usbfs_diepctl0_bit_t                 DIEPCTL0_b;
    uint32_t                                 RESERVED30[32];
    stc_usbfs_diepint_bit_t                  DIEPINT0_b;
    uint32_t                                 RESERVED31[160];
    stc_usbfs_diepctl_bit_t                  DIEPCTL1_b;
    uint32_t                                 RESERVED32[32];
    stc_usbfs_diepint_bit_t                  DIEPINT1_b;
    uint32_t                                 RESERVED33[160];
    stc_usbfs_diepctl_bit_t                  DIEPCTL2_b;
    uint32_t                                 RESERVED34[32];
    stc_usbfs_diepint_bit_t                  DIEPINT2_b;
    uint32_t                                 RESERVED35[160];
    stc_usbfs_diepctl_bit_t                  DIEPCTL3_b;
    uint32_t                                 RESERVED36[32];
    stc_usbfs_diepint_bit_t                  DIEPINT3_b;
    uint32_t                                 RESERVED37[160];
    stc_usbfs_diepctl_bit_t                  DIEPCTL4_b;
    uint32_t                                 RESERVED38[32];
    stc_usbfs_diepint_bit_t                  DIEPINT4_b;
    uint32_t                                 RESERVED39[160];
    stc_usbfs_diepctl_bit_t                  DIEPCTL5_b;
    uint32_t                                 RESERVED40[32];
    stc_usbfs_diepint_bit_t                  DIEPINT5_b;
    uint32_t                                 RESERVED41[2720];
    stc_usbfs_doepctl0_bit_t                 DOEPCTL0_b;
    uint32_t                                 RESERVED42[32];
    stc_usbfs_doepint_bit_t                  DOEPINT0_b;
    uint32_t                                 RESERVED43[32];
    stc_usbfs_doeptsiz0_bit_t                DOEPTSIZ0_b;
    uint32_t                                 RESERVED44[96];
    stc_usbfs_doepctl_bit_t                  DOEPCTL1_b;
    uint32_t                                 RESERVED45[32];
    stc_usbfs_doepint_bit_t                  DOEPINT1_b;
    uint32_t                                 RESERVED46[160];
    stc_usbfs_doepctl_bit_t                  DOEPCTL2_b;
    uint32_t                                 RESERVED47[32];
    stc_usbfs_doepint_bit_t                  DOEPINT2_b;
    uint32_t                                 RESERVED48[160];
    stc_usbfs_doepctl_bit_t                  DOEPCTL3_b;
    uint32_t                                 RESERVED49[32];
    stc_usbfs_doepint_bit_t                  DOEPINT3_b;
    uint32_t                                 RESERVED50[160];
    stc_usbfs_doepctl_bit_t                  DOEPCTL4_b;
    uint32_t                                 RESERVED51[32];
    stc_usbfs_doepint_bit_t                  DOEPINT4_b;
    uint32_t                                 RESERVED52[160];
    stc_usbfs_doepctl_bit_t                  DOEPCTL5_b;
    uint32_t                                 RESERVED53[32];
    stc_usbfs_doepint_bit_t                  DOEPINT5_b;
    uint32_t                                 RESERVED54[4768];
    stc_usbfs_gcctl_bit_t                    GCCTL_b;
} bCM_USBFS_TypeDef;

typedef struct {
    stc_wdt_cr_bit_t                         CR_b;
    stc_wdt_sr_bit_t                         SR_b;
} bCM_WDT_TypeDef;


 
 
 
#line 12345 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f460.h"






#line 38 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f4xx.h"
#line 1 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/system_hc32f460.h"


















 



 







 
#line 33 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/system_hc32f460.h"
#line 1 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f4xx.h"


















 
#line 64 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f4xx.h"



 
#line 34 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/system_hc32f460.h"
#line 1 "../source/hc32f4xx_conf.h"


















 





 

 







 



 









 




#line 94 "../source/hc32f4xx_conf.h"



 








 





 






 



 









 
#line 35 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/system_hc32f460.h"




 




 



 



 




 


























 



 



 



 

extern uint32_t SystemCoreClock;         
extern uint32_t HRC_VALUE;               



 



 



 

extern void SystemInit(void);              
extern void SystemCoreClockUpdate(void);   







 



 



 









 
#line 39 "../../../../drivers/cmsis/Device/HDSC/hc32f4xx/Include/hc32f4xx.h"






 



 



 



 









 
#line 39 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"
#line 40 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"




 




 



 



 



 




 
#line 77 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


 

 
#line 90 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"




 
#line 101 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


 



 

 




 
#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"

























 



 







 
#line 40 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"

#line 42 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"
#line 43 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"




 




 





 



 


 
typedef struct {
    uint16_t u16WatchdogMode;           
 
    uint16_t u16LowThreshold;            
    uint16_t u16HighThreshold;           
} stc_adc_awd_config_t;



 
typedef struct {
    uint16_t u16ScanMode;               
 
    uint16_t u16Resolution;             
 
    uint16_t u16DataAlign;              
 
} stc_adc_init_t;



 



 



 




 




 




 
#line 128 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"







 




 
#line 158 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"





 




 






 




 





 




 




 




 
#line 210 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"


 





 




 




 
#line 236 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"


 




 





 




 





 




 



 




 
#line 287 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"


 




 



 




 





 




 




 




 
#line 344 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"


 




 



 




 
#line 376 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"


 




 




 




 
#line 403 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"


 




 
#line 427 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"

#line 436 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_adc.h"


 



 



 



 



 


 
int32_t ADC_Init(CM_ADC_TypeDef *ADCx, const stc_adc_init_t *pstcAdcInit);
int32_t ADC_DeInit(CM_ADC_TypeDef *ADCx);
int32_t ADC_StructInit(stc_adc_init_t *pstcAdcInit);
void ADC_ChCmd(CM_ADC_TypeDef *ADCx, uint8_t u8Seq, uint8_t u8Ch, en_functional_state_t enNewState);
void ADC_MxChCmd(CM_ADC_TypeDef *ADCx, uint8_t u8Seq, uint32_t u32MxCh, en_functional_state_t enNewState);
void ADC_SetSampleTime(CM_ADC_TypeDef *ADCx, uint8_t u8Ch, uint8_t u8SampleTime);

 
void ADC_ConvDataAverageConfig(CM_ADC_TypeDef *ADCx, uint16_t u16AverageCount);
void ADC_ConvDataAverageChCmd(CM_ADC_TypeDef *ADCx, uint8_t u8Ch, en_functional_state_t enNewState);
void ADC_ConvDataAverageMxChCmd(CM_ADC_TypeDef *ADCx, uint32_t u32MxCh, en_functional_state_t enNewState);

void ADC_TriggerConfig(CM_ADC_TypeDef *ADCx, uint8_t u8Seq, uint16_t u16TriggerSel);
void ADC_TriggerCmd(CM_ADC_TypeDef *ADCx, uint8_t u8Seq, en_functional_state_t enNewState);
void ADC_IntCmd(CM_ADC_TypeDef *ADCx, uint8_t u8IntType, en_functional_state_t enNewState);
int32_t ADC_Start(CM_ADC_TypeDef *ADCx);
void ADC_Stop(CM_ADC_TypeDef *ADCx);
uint16_t ADC_GetValue(const CM_ADC_TypeDef *ADCx, uint8_t u8Ch);
uint16_t ADC_GetResolution(const CM_ADC_TypeDef *ADCx);
en_flag_status_t ADC_GetStatus(const CM_ADC_TypeDef *ADCx, uint8_t u8Flag);
void ADC_ClearStatus(CM_ADC_TypeDef *ADCx, uint8_t u8Flag);


 
 
void ADC_ChRemap(CM_ADC_TypeDef *ADCx, uint8_t u8Ch, uint8_t u8AdcPin);
uint8_t ADC_GetChPin(const CM_ADC_TypeDef *ADCx, uint8_t u8Ch);
void ADC_ResetChMapping(CM_ADC_TypeDef *ADCx);

 
void ADC_SyncModeConfig(uint16_t u16SyncUnit, uint16_t u16SyncMode, uint8_t u8TriggerDelay);
void ADC_SyncModeCmd(en_functional_state_t enNewState);

 
int32_t ADC_AWD_Config(CM_ADC_TypeDef *ADCx, uint8_t u8AwdUnit, uint8_t u8Ch, const stc_adc_awd_config_t *pstcAwd);
void ADC_AWD_SetMode(CM_ADC_TypeDef *ADCx, uint8_t u8AwdUnit, uint16_t u16WatchdogMode);
uint16_t ADC_AWD_GetMode(CM_ADC_TypeDef *ADCx, uint8_t u8AwdUnit);
void ADC_AWD_SetThreshold(CM_ADC_TypeDef *ADCx, uint8_t u8AwdUnit, uint16_t u16LowThreshold, uint16_t u16HighThreshold);
void ADC_AWD_SelectCh(CM_ADC_TypeDef *ADCx, uint8_t u8AwdUnit, uint8_t u8Ch);
void ADC_AWD_DeselectCh(CM_ADC_TypeDef *ADCx, uint8_t u8AwdUnit, uint8_t u8Ch);
void ADC_AWD_Cmd(CM_ADC_TypeDef *ADCx, uint8_t u8AwdUnit, en_functional_state_t enNewState);
void ADC_AWD_IntCmd(CM_ADC_TypeDef *ADCx, uint16_t u16IntType, en_functional_state_t enNewState);
en_flag_status_t ADC_AWD_GetStatus(const CM_ADC_TypeDef *ADCx, uint32_t u32Flag);
void ADC_AWD_ClearStatus(CM_ADC_TypeDef *ADCx, uint32_t u32Flag);

 
void ADC_PGA_Config(CM_ADC_TypeDef *ADCx, uint8_t u8PgaUnit, uint8_t u8Gain, uint8_t u8PgaVss);
void ADC_PGA_Cmd(CM_ADC_TypeDef *ADCx, uint8_t u8PgaUnit, en_functional_state_t enNewState);
void ADC_PGA_SelectInputSrc(CM_ADC_TypeDef *ADCx, uint16_t u16PgaInputSrc);
void ADC_PGA_DeselectInputSrc(CM_ADC_TypeDef *ADCx);

void ADC_DataRegAutoClearCmd(CM_ADC_TypeDef *ADCx, en_functional_state_t enNewState);
void ADC_SetSeqAResumeMode(CM_ADC_TypeDef *ADCx, uint16_t u16SeqAResumeMode);


 





 



 









 
#line 117 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"






#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_aos.h"





















 



 







 
#line 36 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_aos.h"

#line 38 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_aos.h"
#line 39 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_aos.h"



 




 





 



 



 




 
#line 94 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_aos.h"



 




 






 




 




 



 



 



 



 





 
static __inline void AOS_SW_Trigger(void)
{
    ((((bCM_AOS_TypeDef *)0x42210000UL)->INTSFTTRG_b . STRG) = ((uint32_t)(SET)));
}

void AOS_CommonTriggerCmd(uint32_t u32Target, uint32_t u32CommonTrigger, en_functional_state_t enNewState);
void AOS_SetTriggerEventSrc(uint32_t u32Target, en_event_src_t enSource);


 





 



 









 
#line 125 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"

























 



 







 
#line 40 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"

#line 42 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"
#line 43 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"



 




 




 



 






 
typedef struct {
    uint32_t u32Prescaler;                   
    uint32_t u32TimeSeg1;                   

 
    uint32_t u32TimeSeg2;                   
 
    uint32_t u32SJW;                        

 
} stc_can_bit_time_config_t;



 
typedef struct {
    uint32_t u32ID;                          
    uint32_t u32IDMask;                      
    uint32_t u32IDType;                      
} stc_can_filter_config_t;



 
typedef struct {
    uint32_t u32RefMsgID;                    
    uint32_t u32RefMsgIDE;                  

 
    uint8_t u8NTUPrescaler;                 
 
    uint8_t u8TxBufMode;                    
 
    uint16_t u16TriggerType;                
 
    uint16_t u16TxEnableWindow;              
    uint16_t u16TxTriggerTime;               
    uint16_t u16WatchTriggerTime;            
} stc_can_ttc_config_t;



 
typedef struct {
    stc_can_bit_time_config_t stcBitCfg;     
    stc_can_filter_config_t *pstcFilter;    
 
    uint16_t u16FilterSelect;               
 
    uint8_t u8WorkMode;                     
 
    uint8_t u8PTBSingleShotTx;              
 
    uint8_t u8STBSingleShotTx;              
 
    uint8_t u8STBPrioMode;                  

 
    uint8_t u8RxWarnLimit;                  


 
    uint8_t u8ErrorWarnLimit;               
 
    uint8_t u8RxAllFrame;                   
 
    uint8_t u8RxOvfMode;                    
 
    uint8_t u8SelfAck;                      
 

    stc_can_ttc_config_t *pstcCanTtc;       
 
} stc_can_init_t;



 
typedef struct {
    uint8_t u8ArbitrLostPos;                 
    uint8_t u8ErrorType;                     
    uint8_t u8RxErrorCount;                  
    uint8_t u8TxErrorCount;                  
} stc_can_error_info_t;



 
typedef struct {
    uint32_t u32ID;                          
    union {
        uint32_t u32Ctrl;
        struct {
            uint32_t DLC: 4;                

 
            uint32_t BRS: 1;                 
            uint32_t FDF: 1;                 
            uint32_t RTR: 1;                
 
            uint32_t IDE: 1;                

 
            uint32_t RSVD: 24;               
        };
    };
    uint8_t au8Data[8U];                     
} stc_can_tx_frame_t;



 
typedef struct {
    uint32_t u32ID;                          
    union {
        uint32_t u32Ctrl;
        struct {
            uint32_t DLC: 4;                

 
            uint32_t BRS: 1;                 
            uint32_t FDF: 1;                 
            uint32_t RTR: 1;                
 
            uint32_t IDE: 1;                

 
            uint32_t RSVD: 4;                
            uint32_t TX: 1;                  
            uint32_t ERRT: 3;                
            uint32_t CYCLE_TIME: 16;         
        };
    };
    uint8_t au8Data[8U];                     
} stc_can_rx_frame_t;



 



 



 




 
#line 227 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"


 




 




 




 
#line 254 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"


 




 




 




 




 




 





 





 




 




 
#line 313 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"


 




 






 




 




 




 




 




 




 




 
#line 375 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"

#line 386 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"


 




 
#line 416 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"

#line 435 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"

#line 447 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"


 




 






 




 




 




 
#line 486 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"


 




 
#line 503 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"


 




 





 




 







 




 
#line 543 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"


 




 






 




 









 




 






 





 
#line 597 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_can.h"


 



 



 



 



 
 
int32_t CAN_Init(CM_CAN_TypeDef *CANx, const stc_can_init_t *pstcCanInit);
int32_t CAN_StructInit(stc_can_init_t *pstcCanInit);
int32_t CAN_DeInit(CM_CAN_TypeDef *CANx);
void CAN_IntCmd(CM_CAN_TypeDef *CANx, uint32_t u32IntType, en_functional_state_t enNewState);
int32_t CAN_FillTxFrame(CM_CAN_TypeDef *CANx, uint8_t u8TxBufType, const stc_can_tx_frame_t *pstcTx);
void CAN_StartTx(CM_CAN_TypeDef *CANx, uint8_t u8TxRequest);
void CAN_AbortTx(CM_CAN_TypeDef *CANx, uint8_t u8TxBufType);
int32_t CAN_GetRxFrame(CM_CAN_TypeDef *CANx, stc_can_rx_frame_t *pstcRx);

void CAN_EnterLocalReset(CM_CAN_TypeDef *CANx);
void CAN_ExitLocalReset(CM_CAN_TypeDef *CANx);
en_flag_status_t CAN_GetLocalResetStatus(CM_CAN_TypeDef *CANx);

en_flag_status_t CAN_GetStatus(const CM_CAN_TypeDef *CANx, uint32_t u32Flag);
void CAN_ClearStatus(CM_CAN_TypeDef *CANx, uint32_t u32Flag);
uint32_t CAN_GetStatusValue(const CM_CAN_TypeDef *CANx);
int32_t CAN_GetErrorInfo(const CM_CAN_TypeDef *CANx, stc_can_error_info_t *pstcErr);
uint8_t CAN_GetTxBufStatus(const CM_CAN_TypeDef *CANx);
uint8_t CAN_GetRxBufStatus(const CM_CAN_TypeDef *CANx);
void CAN_FilterCmd(CM_CAN_TypeDef *CANx, uint16_t u16FilterSelect, en_functional_state_t enNewState);
void CAN_SetRxWarnLimit(CM_CAN_TypeDef *CANx, uint8_t u8RxWarnLimit);
void CAN_SetErrorWarnLimit(CM_CAN_TypeDef *CANx, uint8_t u8ErrorWarnLimit);

 
int32_t CAN_TTC_StructInit(stc_can_ttc_config_t *pstcCanTtc);
int32_t CAN_TTC_Config(CM_CAN_TypeDef *CANx, const stc_can_ttc_config_t *pstcCanTtc);
void CAN_TTC_IntCmd(CM_CAN_TypeDef *CANx, uint8_t u8IntType, en_functional_state_t enNewState);
void CAN_TTC_Cmd(CM_CAN_TypeDef *CANx, en_functional_state_t enNewState);

en_flag_status_t CAN_TTC_GetStatus(const CM_CAN_TypeDef *CANx, uint8_t u8Flag);
void CAN_TTC_ClearStatus(CM_CAN_TypeDef *CANx, uint8_t u8Flag);
uint8_t CAN_TTC_GetStatusValue(const CM_CAN_TypeDef *CANx);

void CAN_TTC_SetTriggerType(CM_CAN_TypeDef *CANx, uint16_t u16TriggerType);
void CAN_TTC_SetTxEnableWindow(CM_CAN_TypeDef *CANx, uint16_t u16TxEnableWindow);
void CAN_TTC_SetTxTriggerTime(CM_CAN_TypeDef *CANx, uint16_t u16TxTriggerTime);
void CAN_TTC_SetWatchTriggerTime(CM_CAN_TypeDef *CANx, uint16_t u16WatchTriggerTime);

int32_t CAN_TTC_FillTxFrame(CM_CAN_TypeDef *CANx, uint8_t u8CANTTCTxBuf, const stc_can_tx_frame_t *pstcTx);

int32_t CAN_TTC_GetConfig(const CM_CAN_TypeDef *CANx, stc_can_ttc_config_t *pstcCanTtc);



 





 



 









 
#line 129 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"






















 



 







 
#line 37 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"

#line 39 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"
#line 40 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"



 




 





 



 


 
typedef struct {
    uint8_t u8State;            
 
    uint8_t u8Drv;              
 
    uint8_t u8Mode;             
 
    uint8_t u8SuperDrv;         
 
    uint8_t u8StableTime;       
 
} stc_clock_xtal_init_t;



 
typedef struct {
    uint8_t u8State;            
 
    uint8_t u8ExceptionType;    
 
} stc_clock_xtalstd_init_t;



 
typedef struct {
    uint8_t u8State;            
 
    uint8_t u8Drv;              
 
    uint8_t u8Filter;           
 
} stc_clock_xtal32_init_t;



 
typedef struct {
    union {
        uint32_t SCFGR;      
        struct {
            uint32_t PCLK0S     : 3;     
            uint32_t resvd0     : 1;     
            uint32_t PCLK1S     : 3;     
            uint32_t resvd1     : 1;     
            uint32_t PCLK2S     : 3;     
            uint32_t resvd2     : 1;     
            uint32_t PCLK3S     : 3;     
            uint32_t resvd3     : 1;     
            uint32_t PCLK4S     : 3;     
            uint32_t resvd4     : 1;     
            uint32_t EXCKS      : 3;     
            uint32_t resvd5     : 1;     
            uint32_t HCLKS      : 3;     
            uint32_t resvd6     : 5;     
        } SCFGR_f;
    };
} stc_clock_scale_t;




 
typedef struct {
    uint8_t u8PLLState;          
    union {
        uint32_t PLLCFGR;        
        struct {
            uint32_t PLLM   : 5;  
            uint32_t resvd0 : 2;  
            uint32_t PLLSRC : 1;  
            uint32_t PLLN   : 9;  
            uint32_t resvd1 : 3;  
            uint32_t PLLR   : 4;  
            uint32_t PLLQ   : 4;  
            uint32_t PLLP   : 4;  
        } PLLCFGR_f;
    };
} stc_clock_pll_init_t;




 
typedef struct {
    uint8_t u8PLLState;           
    union {
        uint32_t PLLCFGR;         
        struct {
            uint32_t PLLM   : 5;  
            uint32_t resvd0 : 3;  
            uint32_t PLLN   : 9;  
            uint32_t resvd1 : 3;  
            uint32_t PLLR   : 4;  
            uint32_t PLLQ   : 4;  
            uint32_t PLLP   : 4;  
        } PLLCFGR_f;
    };
} stc_clock_pllx_init_t;



 
typedef struct {
    uint32_t u32SysclkFreq;         
    uint32_t u32HclkFreq;           
    uint32_t u32Pclk0Freq;          
    uint32_t u32Pclk1Freq;          
    uint32_t u32Pclk2Freq;          
    uint32_t u32Pclk3Freq;          
    uint32_t u32Pclk4Freq;          
    uint32_t u32ExclkFreq;          
} stc_clock_freq_t;



 
typedef struct {
    uint32_t u32PllVcin;                
    uint32_t u32PllVco;                 
    uint32_t u32PllP;                   
    uint32_t u32PllQ;                   
    uint32_t u32PllR;                   
    uint32_t u32PllxVcin;               
    uint32_t u32PllxVco;                
    uint32_t u32PllxP;                  
    uint32_t u32PllxQ;                  
    uint32_t u32PllxR;                  
} stc_pll_clock_freq_t;



 



 



 




 




 




 




 




 




 




 




 









 






 




 




 




 




 





 
#line 296 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 




 




 





 




 




 




 




 




 





 




 




 




 
#line 372 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 
#line 386 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 
#line 403 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 




 
#line 423 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 
#line 438 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 
#line 453 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 
#line 468 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 
#line 483 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 
#line 498 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 
#line 513 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 
#line 528 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 


 




 
#line 548 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 





 
 
#line 565 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 






 




 





 




 




 




 
#line 616 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 




 
#line 632 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_clk.h"


 



 



 



 



 
int32_t CLK_HrcCmd(en_functional_state_t enNewState);
int32_t CLK_MrcCmd(en_functional_state_t enNewState);
int32_t CLK_LrcCmd(en_functional_state_t enNewState);

void CLK_HrcTrim(int8_t i8TrimVal);
void CLK_MrcTrim(int8_t i8TrimVal);
void CLK_LrcTrim(int8_t i8TrimVal);

int32_t CLK_XtalStructInit(stc_clock_xtal_init_t *pstcXtalInit);
int32_t CLK_XtalInit(const stc_clock_xtal_init_t *pstcXtalInit);
int32_t CLK_XtalCmd(en_functional_state_t enNewState);

void CLK_XtalStdCmd(en_functional_state_t enNewState);
int32_t CLK_XtalStdInit(uint8_t u8State, uint8_t u8ExceptionType);
int32_t CLK_SetXtalStdExceptionType(uint8_t u8ExceptionType);
void CLK_ClearXtalStdStatus(void);
en_flag_status_t CLK_GetXtalStdStatus(void);

int32_t CLK_Xtal32StructInit(stc_clock_xtal32_init_t *pstcXtal32Init);
int32_t CLK_Xtal32Init(const stc_clock_xtal32_init_t *pstcXtal32Init);
int32_t CLK_Xtal32Cmd(en_functional_state_t enNewState);

void CLK_SetPLLSrc(uint32_t u32PllSrc);
int32_t CLK_PLLStructInit(stc_clock_pll_init_t *pstcPLLInit);
int32_t CLK_PLLInit(const stc_clock_pll_init_t *pstcPLLInit);
int32_t CLK_PLLCmd(en_functional_state_t enNewState);
int32_t CLK_GetPLLClockFreq(stc_pll_clock_freq_t *pstcPllClkFreq);
int32_t CLK_PLLxStructInit(stc_clock_pllx_init_t *pstcPLLxInit);
int32_t CLK_PLLxInit(const stc_clock_pllx_init_t *pstcPLLxInit);
int32_t CLK_PLLxCmd(en_functional_state_t enNewState);

void CLK_MCOConfig(uint8_t u8Ch, uint8_t u8Src, uint8_t u8Div);
void CLK_MCOCmd(uint8_t u8Ch, en_functional_state_t enNewState);

en_flag_status_t CLK_GetStableStatus(uint8_t u8Flag);
void CLK_SetSysClockSrc(uint8_t u8Src);
void CLK_SetClockDiv(uint32_t u32Clock, uint32_t u32Div);
int32_t CLK_GetClockFreq(stc_clock_freq_t *pstcClockFreq);
uint32_t CLK_GetBusClockFreq(uint32_t u32Clock);

void CLK_SetPeriClockSrc(uint16_t u16Src);
void CLK_SetUSBClockSrc(uint8_t u8Src);
void CLK_SetI2SClockSrc(uint8_t u8Unit, uint8_t u8Src);

void CLK_TpiuClockCmd(en_functional_state_t enNewState);
void CLK_SetTpiuClockDiv(uint8_t u8Div);


 





 



 









 
#line 133 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"






#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_crc.h"

























 



 







 
#line 40 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_crc.h"

#line 42 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_crc.h"
#line 43 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_crc.h"




 




 





 



 



 
typedef struct {
    uint32_t u32Protocol;   
 
    uint32_t u32InitValue;  
 
    uint32_t u32RefIn;      
 
    uint32_t u32RefOut;     
 
    uint32_t u32XorOut;     
 
} stc_crc_init_t;



 



 



 




 




 




 





 




 



 




 




 




 




 




 




 



 



 



 



 
int32_t CRC_StructInit(stc_crc_init_t *pstcCrcInit);
int32_t CRC_Init(const stc_crc_init_t *pstcCrcInit);
int32_t CRC_DeInit(void);

uint32_t CRC_GetResult(void);
void CRC_SetInitValue(uint32_t u32Value);

en_flag_status_t CRC_GetResultStatus(void);

int32_t CRC_CRC16_AccumulateData(uint8_t u8DataWidth, const void *pvData, uint32_t u32Len, uint16_t *pu16Out);
int32_t CRC_CRC16_Calculate(uint16_t u16InitValue, uint8_t u8DataWidth, const void *pvData, uint32_t u32Len, uint16_t *pu16Out);
en_flag_status_t CRC_CRC16_CheckData(uint16_t u16InitValue, uint8_t u8DataWidth, const void *pvData, uint32_t u32Len, uint16_t u16ExpectValue);
en_flag_status_t CRC_CRC16_GetCheckResult(uint16_t u16ExpectValue);

int32_t CRC_CRC32_AccumulateData(uint8_t u8DataWidth, const void *pvData, uint32_t u32Len, uint32_t *pu32Out);
int32_t CRC_CRC32_Calculate(uint32_t u32InitValue, uint8_t u8DataWidth, const void *pvData, uint32_t u32Len, uint32_t *pu32Out);
en_flag_status_t CRC_CRC32_CheckData(uint32_t u32InitValue, uint8_t u8DataWidth, const void *pvData, uint32_t u32Len, uint32_t u32ExpectValue);
en_flag_status_t CRC_CRC32_GetCheckResult(uint32_t u32ExpectValue);



 





 



 









 
#line 141 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"










#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_dma.h"
























 



 







 
#line 39 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_dma.h"

#line 41 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_dma.h"
#line 42 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_dma.h"



 




 





 



 



 
typedef struct {
    uint32_t u32IntEn;          
 
    uint32_t u32SrcAddr;         
    uint32_t u32DestAddr;        
    uint32_t u32DataWidth;      
 
    uint32_t u32BlockSize;       
    uint32_t u32TransCount;      
    uint32_t u32SrcAddrInc;     
 
    uint32_t u32DestAddrInc;    
 
} stc_dma_init_t;



 
typedef struct {
    uint32_t u32Mode;       
 
    uint32_t u32SrcCount;    
    uint32_t u32DestCount;   
} stc_dma_repeat_init_t;



 
typedef struct {
    uint32_t u32Mode;        
 
    uint32_t u32SrcCount;      
    uint32_t u32SrcOffset;     
    uint32_t u32DestCount;     
    uint32_t u32DestOffset;    
} stc_dma_nonseq_init_t;



 
typedef struct {
    uint32_t u32State;      
 
    uint32_t u32Mode;       
 
    uint32_t u32Addr;        
} stc_dma_llp_init_t;



 
typedef struct {
    uint32_t u32CountMode;          
 
    uint32_t u32DestAddrMode;       
 
    uint32_t u32SrcAddrMode;        
 
} stc_dma_reconfig_init_t;



 
typedef struct {
    uint32_t u32Mode;           
 
    uint32_t u32SrcCount;        
    uint32_t u32SrcDist;         
    uint32_t u32DestCount;       
    uint32_t u32DestDist;        
} stc_dma_rc_nonseq_init_t;



 
typedef struct {
    uint32_t SARx;               
    uint32_t DARx;               
    uint32_t DTCTLx;             
    uint32_t RPTx;               
    uint32_t SNSEQCTLx;          
    uint32_t DNSEQCTLx;          
    uint32_t LLPx;               
    uint32_t CHCTLx;             
} stc_dma_llp_descriptor_t;



 



 



 




 







 




 







 




 






 




 






 




 






 




 






 




 






 




 






 




 






 




 






 




 




 




 




 




 









 




 
#line 330 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_dma.h"




 




 






 




 




 




 




 




 





 




 





 




 




 




 







 




 







 




 





 




 





 




 





 



 



 



 



 
void DMA_Cmd(CM_DMA_TypeDef *DMAx, en_functional_state_t enNewState);

void DMA_ErrIntCmd(CM_DMA_TypeDef *DMAx, uint32_t u32ErrInt, en_functional_state_t enNewState);
en_flag_status_t DMA_GetErrStatus(const CM_DMA_TypeDef *DMAx, uint32_t u32Flag);
void DMA_ClearErrStatus(CM_DMA_TypeDef *DMAx, uint32_t u32Flag);

void DMA_TransCompleteIntCmd(CM_DMA_TypeDef *DMAx, uint32_t u32TransCompleteInt, en_functional_state_t enNewState);
en_flag_status_t DMA_GetTransCompleteStatus(const CM_DMA_TypeDef *DMAx, uint32_t u32Flag);
void DMA_ClearTransCompleteStatus(CM_DMA_TypeDef *DMAx, uint32_t u32Flag);

int32_t DMA_ChCmd(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, en_functional_state_t enNewState);

en_flag_status_t DMA_GetRequestStatus(const CM_DMA_TypeDef *DMAx, uint32_t u32Status);
en_flag_status_t DMA_GetTransStatus(const CM_DMA_TypeDef *DMAx, uint32_t u32Status);

int32_t DMA_SetSrcAddr(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint32_t u32Addr);
int32_t DMA_SetDestAddr(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint32_t u32Addr);
int32_t DMA_SetTransCount(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint16_t u16Count);
int32_t DMA_SetBlockSize(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint16_t u16Size);
int32_t DMA_SetDataWidth(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint32_t u32DataWidth);

int32_t DMA_SetSrcRepeatSize(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint32_t u32Size);
int32_t DMA_SetDestRepeatSize(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint32_t u32Size);
int32_t DMA_SetNonSeqSrcCount(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint32_t u32Count);
int32_t DMA_SetNonSeqDestCount(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint32_t u32Count);
int32_t DMA_SetNonSeqSrcOffset(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint32_t u32Offset);
int32_t DMA_SetNonSeqDestOffset(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint32_t u32Offset);

void DMA_SetLlpAddr(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, uint32_t u32Addr);

int32_t DMA_StructInit(stc_dma_init_t *pstcDmaInit);
int32_t DMA_Init(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, const stc_dma_init_t *pstcDmaInit);
void DMA_DeInit(CM_DMA_TypeDef *DMAx, uint8_t u8Ch);

int32_t DMA_RepeatStructInit(stc_dma_repeat_init_t *pstcDmaRepeatInit);
int32_t DMA_RepeatInit(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, const stc_dma_repeat_init_t *pstcDmaRepeatInit);

int32_t DMA_NonSeqStructInit(stc_dma_nonseq_init_t *pstcDmaNonSeqInit);
int32_t DMA_NonSeqInit(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, const stc_dma_nonseq_init_t *pstcDmaNonSeqInit);

int32_t DMA_LlpStructInit(stc_dma_llp_init_t *pstcDmaLlpInit);
int32_t DMA_LlpInit(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, const stc_dma_llp_init_t *pstcDmaLlpInit);

void DMA_LlpCmd(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, en_functional_state_t enNewState);

int32_t DMA_ReconfigStructInit(stc_dma_reconfig_init_t *pstcDmaRCInit);
int32_t DMA_ReconfigInit(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, const stc_dma_reconfig_init_t *pstcDmaRCInit);
void DMA_ReconfigCmd(CM_DMA_TypeDef *DMAx, en_functional_state_t enNewState);
void DMA_ReconfigLlpCmd(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, en_functional_state_t enNewState);
int32_t DMA_ReconfigNonSeqStructInit(stc_dma_rc_nonseq_init_t *pstcDmaRcNonSeqInit);
int32_t DMA_ReconfigNonSeqInit(CM_DMA_TypeDef *DMAx, uint8_t u8Ch, const stc_dma_rc_nonseq_init_t *pstcDmaRcNonSeqInit);

uint32_t DMA_GetSrcAddr(const CM_DMA_TypeDef *DMAx, uint8_t u8Ch);
uint32_t DMA_GetDestAddr(const CM_DMA_TypeDef *DMAx, uint8_t u8Ch);
uint32_t DMA_GetTransCount(const CM_DMA_TypeDef *DMAx, uint8_t u8Ch);
uint32_t DMA_GetBlockSize(const CM_DMA_TypeDef *DMAx, uint8_t u8Ch);
uint32_t DMA_GetSrcRepeatSize(const CM_DMA_TypeDef *DMAx, uint8_t u8Ch);
uint32_t DMA_GetDestRepeatSize(const CM_DMA_TypeDef *DMAx, uint8_t u8Ch);
uint32_t DMA_GetNonSeqSrcCount(const CM_DMA_TypeDef *DMAx, uint8_t u8Ch);
uint32_t DMA_GetNonSeqDestCount(const CM_DMA_TypeDef *DMAx, uint8_t u8Ch);
uint32_t DMA_GetNonSeqSrcOffset(const CM_DMA_TypeDef *DMAx, uint8_t u8Ch);
uint32_t DMA_GetNonSeqDestOffset(const CM_DMA_TypeDef *DMAx, uint8_t u8Ch);

void DMA_MxChSWTrigger(CM_DMA_TypeDef *DMAx, uint8_t u8MxCh);
void DMA_SWReconfig(CM_DMA_TypeDef *DMAx);


 





 



 









 
#line 153 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_efm.h"



























 



 







 
#line 42 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_efm.h"

#line 44 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_efm.h"
#line 45 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_efm.h"



 




 





 



 


 
typedef struct {
    uint32_t            u32UniqueID0;       
    uint32_t            u32UniqueID1;       
    uint32_t            u32UniqueID2;       
} stc_efm_unique_id_t;

typedef struct {
    uint32_t u32State;
    uint32_t u32Addr;
    uint32_t u32Size;
} stc_efm_remap_init_t;



 



 



 



 


#line 103 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_efm.h"



 




 



 




 




 




 




#line 149 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_efm.h"


 




 




 




 










 




 
#line 190 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_efm.h"






 




 







 




 




 




 





 




 



 




 



 




 






 




 
#line 281 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_efm.h"



 





 



 




 





 




 




 





 
#line 331 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_efm.h"


 




 




 




 




 




 






 




 






 




 






 



 


 



 



 





 

static __inline void EFM_REG_Unlock(void)
{
    ((((CM_EFM_TypeDef *)(0x40010400UL))->FAPRT) = ((uint32_t)((0x0123UL))));
    ((((CM_EFM_TypeDef *)(0x40010400UL))->FAPRT) = ((uint32_t)((0x3210UL))));
}





 
static __inline void EFM_REG_Lock(void)
{
    ((((CM_EFM_TypeDef *)(0x40010400UL))->FAPRT) = ((uint32_t)((0x0000UL))));
}





 
static __inline void EFM_REMAP_Unlock(void)
{
    ((((CM_EFM_TypeDef *)(0x40010400UL))->MMF_REMPRT) = ((uint32_t)((0x0123UL))));
    ((((CM_EFM_TypeDef *)(0x40010400UL))->MMF_REMPRT) = ((uint32_t)((0x3210UL))));
}





 
static __inline void EFM_REMAP_Lock(void)
{
    ((((CM_EFM_TypeDef *)(0x40010400UL))->MMF_REMPRT) = ((uint32_t)((0x0000UL))));
}

void EFM_Cmd(uint32_t u32Flash, en_functional_state_t enNewState);
void EFM_FWMC_Cmd(en_functional_state_t enNewState);
void EFM_SetBusStatus(uint32_t u32Status);
void EFM_IntCmd(uint32_t u32EfmInt, en_functional_state_t enNewState);
void EFM_ClearStatus(uint32_t u32Flag);
int32_t EFM_SetWaitCycle(uint32_t u32WaitCycle);
int32_t EFM_SetOperateMode(uint32_t u32Mode);
int32_t EFM_ReadByte(uint32_t u32Addr, uint8_t *pu8ReadBuf, uint32_t u32ByteLen);
int32_t EFM_Program(uint32_t u32Addr, const uint8_t *pu8Buf, uint32_t u32Len);
int32_t EFM_SequenceProgram(uint32_t u32Addr, const  uint8_t *pu8Buf, uint32_t u32Len);
int32_t EFM_ProgramWord(uint32_t u32Addr, uint32_t u32Data);
int32_t EFM_ProgramWordReadBack(uint32_t u32Addr, uint32_t u32Data);
int32_t EFM_ChipErase(uint8_t u8Chip);

int32_t EFM_SectorErase(uint32_t u32Addr);

en_flag_status_t EFM_GetAnyStatus(uint32_t u32Flag);
en_flag_status_t EFM_GetStatus(uint32_t u32Flag);
void EFM_GetUID(stc_efm_unique_id_t *pstcUID);

void EFM_CacheRamReset(en_functional_state_t enNewState);
void EFM_CacheCmd(en_functional_state_t enNewState);
void EFM_LowVoltageReadCmd(en_functional_state_t enNewState);
int32_t EFM_SwapCmd(en_functional_state_t enNewState);
en_flag_status_t EFM_GetSwapStatus(void);
int32_t EFM_OTP_Lock(uint32_t u32Addr);

int32_t EFM_REMAP_StructInit(stc_efm_remap_init_t *pstcEfmRemapInit);
int32_t EFM_REMAP_Init(uint8_t u8RemapIdx, stc_efm_remap_init_t *pstcEfmRemapInit);
void EFM_REMAP_DeInit(void);
void EFM_REMAP_Cmd(uint8_t u8RemapIdx, en_functional_state_t enNewState);
void EFM_REMAP_SetAddr(uint8_t u8RemapIdx, uint32_t u32Addr);
void EFM_REMAP_SetSize(uint8_t u8RemapIdx, uint32_t u32Size);

void EFM_LowVoltageCmd(en_functional_state_t enNewState);

void EFM_SetWindowProtectAddr(uint32_t u32StartAddr, uint32_t u32EndAddr);
void EFM_Protect_Enable(uint8_t u8Level);
int32_t EFM_WriteSecurityCode(const uint8_t *pu8Buf, uint32_t u32Len);



 





 



 









 
#line 157 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"










#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_fcg.h"



















 



 







 
#line 34 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_fcg.h"

#line 36 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_fcg.h"
#line 37 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_fcg.h"



 




 




 



 



 



 
#line 80 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_fcg.h"


 




 
#line 108 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_fcg.h"


 




 
#line 131 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_fcg.h"


 




 






 




 






 



 



 



 



 

void FCG_Fcg0PeriphClockCmd(uint32_t u32Fcg0Periph, en_functional_state_t enNewState);

void FCG_Fcg1PeriphClockCmd(uint32_t u32Fcg1Periph, en_functional_state_t enNewState);
void FCG_Fcg2PeriphClockCmd(uint32_t u32Fcg2Periph, en_functional_state_t enNewState);
void FCG_Fcg3PeriphClockCmd(uint32_t u32Fcg3Periph, en_functional_state_t enNewState);



 





 



 









 
#line 169 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"






#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_gpio.h"





















 



 







 
#line 36 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_gpio.h"

#line 38 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_gpio.h"
#line 39 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_gpio.h"




 




 





 



 



 
typedef enum {
    PIN_RESET = 0U,            
    PIN_SET   = 1U             
} en_pin_state_t;



 
typedef struct {
    uint16_t u16PinState;        
    uint16_t u16PinDir;          
    uint16_t u16PinOutputType;   
    uint16_t u16PinDrv;          
    uint16_t u16Latch;           
    uint16_t u16PullUp;          
    uint16_t u16Invert;          
    uint16_t u16ExtInt;          
    uint16_t u16PinAttr;         
} stc_gpio_init_t;


 



 



 




 
#line 115 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_gpio.h"


 




 
#line 129 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_gpio.h"


 




 
#line 143 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_gpio.h"


 




 
#line 195 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_gpio.h"


 




 
#line 214 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_gpio.h"


 




 






 




 




 




 




 




 




 




 





 




 




 




 




 




 




 




 




 




 




 




 




 




 




 



 



 



 



 




 
static __inline void GPIO_REG_Lock(void)
{
    ((((CM_GPIO_TypeDef *)(0x40053800UL))->PWPR) = ((uint16_t)((0xA500U))));
}





 
static __inline void GPIO_REG_Unlock(void)
{
    ((((CM_GPIO_TypeDef *)(0x40053800UL))->PWPR) = ((uint16_t)((0xA501U))));
}

int32_t GPIO_Init(uint8_t u8Port, uint16_t u16Pin, const stc_gpio_init_t *pstcGpioInit);
void GPIO_DeInit(void);
int32_t GPIO_StructInit(stc_gpio_init_t *pstcGpioInit);
void GPIO_SetDebugPort(uint8_t u8DebugPort, en_functional_state_t enNewState);
void GPIO_SetFunc(uint8_t u8Port, uint16_t u16Pin, uint16_t u16Func);
void GPIO_SubFuncCmd(uint8_t u8Port, uint16_t u16Pin, en_functional_state_t enNewState);
void GPIO_SetSubFunc(uint8_t u8Func);
void GPIO_SetReadWaitCycle(uint16_t u16ReadWait);
void GPIO_InputMOSCmd(uint8_t u8Port, en_functional_state_t enNewState);
void GPIO_OutputCmd(uint8_t u8Port, uint16_t u16Pin, en_functional_state_t enNewState);
en_pin_state_t GPIO_ReadInputPins(uint8_t u8Port, uint16_t u16Pin);
uint16_t GPIO_ReadInputPort(uint8_t u8Port);
en_pin_state_t GPIO_ReadOutputPins(uint8_t u8Port, uint16_t u16Pin);
uint16_t GPIO_ReadOutputPort(uint8_t u8Port);
void GPIO_SetPins(uint8_t u8Port, uint16_t u16Pin);
void GPIO_ResetPins(uint8_t u8Port, uint16_t u16Pin);
void GPIO_WritePort(uint8_t u8Port, uint16_t u16PortVal);
void GPIO_TogglePins(uint8_t u8Port, uint16_t u16Pin);
void GPIO_ExtIntCmd(uint8_t u8Port, uint16_t u16Pin, en_functional_state_t enNewState);
void GPIO_AnalogCmd(uint8_t u8Port, uint16_t u16Pin, en_functional_state_t enNewState);


 





 



 









 
#line 177 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"














#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"




















 



 







 
#line 35 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"

#line 37 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"
#line 38 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"




 




 





 



 



 




 




 




 




 




 






 




 
#line 106 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"


 




 
#line 129 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"


 





 




 




 




 




 




 




 








 




 


#line 192 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"


 




 


#line 217 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"


 





 




 




 








 




 




 




 




 




 




 




 




 




 






 




 




 




 





 




 




 




 




 
 
#line 345 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"

 




 




 
 
#line 364 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"

 




 




 
 






 




 




 
 



 



 




 
 



 



 



 




 
 
#line 433 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_icg.h"
 




 



 


 



 





 



 









 
#line 193 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"



















 



 







 
#line 34 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"

#line 36 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"
#line 37 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"




 




 





 



 



 
typedef struct {
    en_int_src_t enIntSrc;   
    IRQn_Type enIRQn;        
    func_ptr_t pfnCallback;  
} stc_irq_signin_config_t;



 
typedef struct {
    uint32_t u32Src;             
    uint32_t u32Edge;            
    uint32_t u32Filter;          
    uint32_t u32FilterClock;     
} stc_nmi_init_t;



 
typedef struct {
    uint32_t u32Filter;          
    uint32_t u32FilterClock;     
    uint32_t u32Edge;            
} stc_extint_init_t;



 



 



 



 
#line 117 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"





 




 
#line 140 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"



 




 




 




 




 




 






 




 
#line 201 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"


 




 
#line 242 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"


 




 
#line 283 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"


 




 
#line 324 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"


 




 





 




 







 




 







 




 
#line 399 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_interrupts.h"


 



 



 



 



 

int32_t INTC_IrqSignIn(const stc_irq_signin_config_t *pstcIrqSignConfig);
int32_t INTC_IrqSignOut(IRQn_Type enIRQn);
void INTC_WakeupSrcCmd(uint32_t u32WakeupSrc, en_functional_state_t enNewState);
void INTC_EventCmd(uint32_t u32Event, en_functional_state_t enNewState);
void INTC_IntCmd(uint32_t u32Int, en_functional_state_t enNewState);
void INTC_SWIntInit(uint32_t u32Ch, const func_ptr_t pfnCallback, uint32_t u32Priority);
void INTC_SWIntCmd(uint32_t u32SWInt, en_functional_state_t enNewState);

int32_t NMI_Init(const stc_nmi_init_t *pstcNmiInit);
int32_t NMI_StructInit(stc_nmi_init_t *pstcNmiInit);
en_flag_status_t NMI_GetNmiStatus(uint32_t u32Src);
void NMI_NmiSrcCmd(uint32_t u32Src, en_functional_state_t enNewState);
void NMI_ClearNmiStatus(uint32_t u32Src);

int32_t EXTINT_Init(uint32_t u32Ch, const stc_extint_init_t *pstcExtIntInit);
int32_t EXTINT_StructInit(stc_extint_init_t *pstcExtIntInit);
en_flag_status_t EXTINT_GetExtIntStatus(uint32_t u32ExtIntCh);
void EXTINT_ClearExtIntStatus(uint32_t u32ExtIntCh);

void IRQ000_Handler(void);
void IRQ001_Handler(void);
void IRQ002_Handler(void);
void IRQ003_Handler(void);
void IRQ004_Handler(void);
void IRQ005_Handler(void);
void IRQ006_Handler(void);
void IRQ007_Handler(void);

void IRQ008_Handler(void);
void IRQ009_Handler(void);
void IRQ010_Handler(void);
void IRQ011_Handler(void);
void IRQ012_Handler(void);
void IRQ013_Handler(void);
void IRQ014_Handler(void);
void IRQ015_Handler(void);

void IRQ016_Handler(void);
void IRQ017_Handler(void);
void IRQ018_Handler(void);
void IRQ019_Handler(void);
void IRQ020_Handler(void);
void IRQ021_Handler(void);
void IRQ022_Handler(void);
void IRQ023_Handler(void);

void IRQ024_Handler(void);
void IRQ025_Handler(void);
void IRQ026_Handler(void);
void IRQ027_Handler(void);
void IRQ028_Handler(void);
void IRQ029_Handler(void);
void IRQ030_Handler(void);
void IRQ031_Handler(void);
void IRQ032_Handler(void);
void IRQ033_Handler(void);
void IRQ034_Handler(void);
void IRQ035_Handler(void);
void IRQ036_Handler(void);
void IRQ037_Handler(void);
void IRQ038_Handler(void);
void IRQ039_Handler(void);
void IRQ040_Handler(void);
void IRQ041_Handler(void);
void IRQ042_Handler(void);
void IRQ043_Handler(void);
void IRQ044_Handler(void);
void IRQ045_Handler(void);
void IRQ046_Handler(void);
void IRQ047_Handler(void);
void IRQ048_Handler(void);
void IRQ049_Handler(void);
void IRQ050_Handler(void);
void IRQ051_Handler(void);
void IRQ052_Handler(void);
void IRQ053_Handler(void);
void IRQ054_Handler(void);
void IRQ055_Handler(void);
void IRQ056_Handler(void);
void IRQ057_Handler(void);
void IRQ058_Handler(void);
void IRQ059_Handler(void);
void IRQ060_Handler(void);
void IRQ061_Handler(void);
void IRQ062_Handler(void);
void IRQ063_Handler(void);
void IRQ064_Handler(void);
void IRQ065_Handler(void);
void IRQ066_Handler(void);
void IRQ067_Handler(void);
void IRQ068_Handler(void);
void IRQ069_Handler(void);
void IRQ070_Handler(void);
void IRQ071_Handler(void);
void IRQ072_Handler(void);
void IRQ073_Handler(void);
void IRQ074_Handler(void);
void IRQ075_Handler(void);
void IRQ076_Handler(void);
void IRQ077_Handler(void);
void IRQ078_Handler(void);
void IRQ079_Handler(void);
void IRQ080_Handler(void);
void IRQ081_Handler(void);
void IRQ082_Handler(void);
void IRQ083_Handler(void);
void IRQ084_Handler(void);
void IRQ085_Handler(void);
void IRQ086_Handler(void);
void IRQ087_Handler(void);
void IRQ088_Handler(void);
void IRQ089_Handler(void);
void IRQ090_Handler(void);
void IRQ091_Handler(void);
void IRQ092_Handler(void);
void IRQ093_Handler(void);
void IRQ094_Handler(void);
void IRQ095_Handler(void);
void IRQ096_Handler(void);
void IRQ097_Handler(void);
void IRQ098_Handler(void);
void IRQ099_Handler(void);
void IRQ100_Handler(void);
void IRQ101_Handler(void);
void IRQ102_Handler(void);
void IRQ103_Handler(void);
void IRQ104_Handler(void);
void IRQ105_Handler(void);
void IRQ106_Handler(void);
void IRQ107_Handler(void);
void IRQ108_Handler(void);
void IRQ109_Handler(void);
void IRQ110_Handler(void);
void IRQ111_Handler(void);
void IRQ112_Handler(void);
void IRQ113_Handler(void);
void IRQ114_Handler(void);
void IRQ115_Handler(void);
void IRQ116_Handler(void);
void IRQ117_Handler(void);
void IRQ118_Handler(void);
void IRQ119_Handler(void);
void IRQ120_Handler(void);
void IRQ121_Handler(void);
void IRQ122_Handler(void);
void IRQ123_Handler(void);
void IRQ124_Handler(void);
void IRQ125_Handler(void);
void IRQ126_Handler(void);
void IRQ127_Handler(void);



 





 



 









 
#line 197 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


















#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_pwc.h"

























 



 







 
#line 40 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_pwc.h"

#line 42 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_pwc.h"
#line 43 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_pwc.h"



 




 





 



 


 
typedef struct {
    uint32_t u32State;               
    uint32_t u32CompareOutputState;  
    uint32_t u32ExceptionType;       
    uint32_t u32Filter;              
    uint32_t u32FilterClock;         
    uint32_t u32ThresholdVoltage;    
} stc_pwc_lvd_init_t;



 
typedef struct {
    uint8_t u8Mode;          
    uint8_t u8IOState;       
    uint8_t u8VcapCtrl;      
} stc_pwc_pd_mode_config_t;



 
typedef struct {
    uint16_t u16Clock;          
 
    uint8_t u8StopDrv;          
 
    uint16_t u16FlashWait;      
 
} stc_pwc_stop_mode_config_t;



 



 



 




 






 




 





 




 




 




 




 




 





 




 




 




 





 




 





 




 




 




 
#line 217 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_pwc.h"



 




 





 




 




 




 







 




 




 




 




 





 







 










 
#line 309 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_pwc.h"



 




 







 




 
#line 356 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_pwc.h"


 




 
#line 370 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_pwc.h"







 




 




 




 
#line 405 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_pwc.h"







 




 




 




 






 




 





 
























 







 





 



 



 



 



 







 
static __inline void PWC_REG_Lock(uint16_t u16Module)
{
    ((CM_PWC_TypeDef *)(0x40048000UL))->FPRC = ((0xA500U) | (uint16_t)((uint16_t)(~u16Module) & (((CM_PWC_TypeDef *)(0x40048000UL))->FPRC)));
}








 
static __inline void PWC_REG_Unlock(uint16_t u16Module)
{
    ((((CM_PWC_TypeDef *)(0x40048000UL))->FPRC) |= ((uint16_t)(u16Module)));
}





 
static __inline void PWC_FCG0_REG_Lock(void)
{
    ((((CM_PWC_TypeDef *)(0x40048000UL))->FCG0PC) = ((uint32_t)((0xA5A50000UL))));
}






 
static __inline void PWC_FCG0_REG_Unlock(void)
{
    ((((CM_PWC_TypeDef *)(0x40048000UL))->FCG0PC) = ((uint32_t)((0xA5A50001UL))));
}

 
int32_t PWC_PD_Enter(void);
int32_t PWC_PD_StructInit(stc_pwc_pd_mode_config_t *pstcPDModeConfig);
int32_t PWC_PD_Config(const stc_pwc_pd_mode_config_t *pstcPDModeConfig);
void PWC_PD_SetIoState(uint8_t u8IoState);
void PWC_PD_SetMode(uint8_t u8PdMode);
void PWC_PD_WakeupCmd(uint32_t u32Event, en_functional_state_t enNewState);
void PWC_PD_SetWakeupTriggerEdge(uint8_t u8Event, uint8_t u8TrigEdge);
en_flag_status_t PWC_PD_GetWakeupStatus(uint16_t u16Flag);
void PWC_PD_ClearWakeupStatus(uint16_t u16Flag);
void PWC_PD_PeriphRamCmd(uint32_t u32PeriphRam, en_functional_state_t enNewState);
void PWC_PD_VdrCmd(en_functional_state_t enNewState);

 
void PWC_WKT_Config(uint16_t u16ClkSrc, uint16_t u16CmpVal);
void PWC_WKT_SetCompareValue(uint16_t u16CmpVal);
uint16_t PWC_WKT_GetCompareValue(void);
void PWC_WKT_Cmd(en_functional_state_t enNewState);
en_flag_status_t PWC_WKT_GetStatus(void);
void PWC_WKT_ClearStatus(void);

void PWC_RamModeConfig(uint16_t u16Mode);

 
void PWC_SLEEP_Enter(uint8_t u8SleepType);

 
void PWC_STOP_Enter(uint8_t u8StopType);
int32_t PWC_STOP_StructInit(stc_pwc_stop_mode_config_t *pstcStopConfig);
int32_t PWC_STOP_Config(const stc_pwc_stop_mode_config_t *pstcStopConfig);
void PWC_STOP_ClockSelect(uint8_t u8Clock);
void PWC_STOP_NvicBackup(void);
void PWC_STOP_NvicRecover(void);
void PWC_STOP_ClockBackup(void);
void PWC_STOP_ClockRecover(void);
void PWC_STOP_IrqClockBackup(void);
void PWC_STOP_IrqClockRecover(void);
void PWC_STOP_SetDrv(uint8_t u8StopDrv);
void PWC_STOP_FlashWaitCmd(en_functional_state_t enNewState);

 
int32_t PWC_HighSpeedToLowSpeed(void);
int32_t PWC_LowSpeedToHighSpeed(void);
int32_t PWC_HighSpeedToHighPerformance(void);
int32_t PWC_HighPerformanceToHighSpeed(void);
int32_t PWC_LowSpeedToHighPerformance(void);
int32_t PWC_HighPerformanceToLowSpeed(void);

 
void PWC_LDO_Cmd(uint16_t u16Ldo, en_functional_state_t enNewState);

 
int32_t PWC_LVD_Init(uint8_t u8Ch, const stc_pwc_lvd_init_t *pstcLvdInit);
void PWC_LVD_DeInit(uint8_t u8Ch);
int32_t PWC_LVD_StructInit(stc_pwc_lvd_init_t *pstcLvdInit);
void PWC_LVD_Cmd(uint8_t u8Ch, en_functional_state_t enNewState);
void PWC_LVD_ExtInputCmd(en_functional_state_t enNewState);
void PWC_LVD_CompareOutputCmd(uint8_t u8Ch, en_functional_state_t enNewState);
void PWC_LVD_DigitalFilterCmd(uint8_t u8Ch, en_functional_state_t enNewState);
void PWC_LVD_SetFilterClock(uint8_t u8Ch, uint32_t u32Clock);
void PWC_LVD_SetThresholdVoltage(uint8_t u8Ch, uint32_t u32Voltage);
void PWC_LVD_ClearStatus(uint8_t u8Flag);
en_flag_status_t PWC_LVD_GetStatus(uint8_t u8Flag);

 
void PWC_PowerMonitorCmd(en_functional_state_t enNewState);

 

void PWC_XTAL32_PowerCmd(en_functional_state_t enNewState);
void PWC_RetSram_PowerCmd(en_functional_state_t enNewState);



 





 



 









 
#line 217 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"






#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_rmu.h"



















 



 






 
#line 33 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_rmu.h"

#line 35 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_rmu.h"
#line 36 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_rmu.h"



 




 




 



 



 




 
#line 82 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_rmu.h"



 



 



 



 



 

en_flag_status_t RMU_GetStatus(uint32_t u32RmuResetCause);
void RMU_ClearStatus(void);



 





 



 








 

#line 225 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"














#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_sram.h"























 



 







 
#line 38 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_sram.h"

#line 40 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_sram.h"
#line 41 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_sram.h"



 




 





 



 



 




 
#line 75 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_sram.h"


 




 




 




 
#line 101 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_sram.h"


 





 




 




 





 











 







 




 
#line 157 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_sram.h"



 




 




 



 



 



 



 





 
static __inline void SRAM_REG_Lock(void)
{
    ((((CM_SRAMC_TypeDef *)(0x40050800UL))->WTPR) = ((uint32_t)((0x76U))));
    ((((CM_SRAMC_TypeDef *)(0x40050800UL))->CKPR) = ((uint32_t)((0x76U))));
}





 
static __inline void SRAM_REG_Unlock(void)
{
    ((((CM_SRAMC_TypeDef *)(0x40050800UL))->WTPR) = ((uint32_t)((0x77U))));
    ((((CM_SRAMC_TypeDef *)(0x40050800UL))->CKPR) = ((uint32_t)((0x77U))));
}

void SRAM_Init(void);
void SRAM_DeInit(void);

void SRAM_REG_Lock(void);
void SRAM_REG_Unlock(void);

void SRAM_SetWaitCycle(uint32_t u32SramSel, uint32_t u32WriteCycle, uint32_t u32ReadCycle);
void SRAM_SetEccMode(uint32_t u32EccSram, uint32_t u32EccMode);
void SRAM_SetExceptionType(uint32_t u32CheckSram, uint32_t u32ExceptionType);

en_flag_status_t SRAM_GetStatus(uint32_t u32Flag);
void SRAM_ClearStatus(uint32_t u32Flag);



 





 



 









 
#line 241 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_swdt.h"



















 



 







 
#line 34 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_swdt.h"

#line 36 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_swdt.h"
#line 37 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_swdt.h"




 




 





 



 



 




 





 



 



 



 



 





 
static __inline uint16_t SWDT_GetCountValue(void)
{
    return (uint16_t)((((CM_SWDT_TypeDef *)(0x40049400UL))->SR) & (0x0000FFFFUL));
}

 
void SWDT_FeedDog(void);
uint16_t SWDT_GetCountValue(void);

 
en_flag_status_t SWDT_GetStatus(uint32_t u32Flag);
int32_t SWDT_ClearStatus(uint32_t u32Flag);



 





 



 









 
#line 245 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr0.h"





















 



 







 
#line 36 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr0.h"

#line 38 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr0.h"
#line 39 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr0.h"




 




 





 



 




 
typedef struct {
    uint32_t u32ClockSrc;               
 
    uint32_t u32ClockDiv;               
 
    uint32_t u32Func;                   
 
    uint16_t u16CompareValue;           
 
} stc_tmr0_init_t;



 



 



 




 




 





 






 




 
#line 125 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr0.h"


 




 




 




 





 




 





 



 



 



 



 

 
int32_t TMR0_DeInit(CM_TMR0_TypeDef *TMR0x);
int32_t TMR0_Init(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch, const stc_tmr0_init_t *pstcTmr0Init);
int32_t TMR0_StructInit(stc_tmr0_init_t *pstcTmr0Init);
void TMR0_Start(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch);
void TMR0_Stop(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch);

 
void TMR0_SetCountValue(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch, uint16_t u16Value);
uint16_t TMR0_GetCountValue(const CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch);
void TMR0_SetCompareValue(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch, uint16_t u16Value);
uint16_t TMR0_GetCompareValue(const CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch);
void TMR0_SetClockSrc(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch, uint32_t u32Src);
void TMR0_SetClockDiv(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch, uint32_t u32Div);
void TMR0_SetFunc(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch, uint32_t u32Func);

 
void TMR0_HWCaptureCondCmd(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch, en_functional_state_t enNewState);
void TMR0_HWStartCondCmd(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch, en_functional_state_t enNewState);
void TMR0_HWStopCondCmd(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch, en_functional_state_t enNewState);
void TMR0_HWClearCondCmd(CM_TMR0_TypeDef *TMR0x, uint32_t u32Ch, en_functional_state_t enNewState);

 
void TMR0_IntCmd(CM_TMR0_TypeDef *TMR0x, uint32_t u32IntType, en_functional_state_t enNewState);
en_flag_status_t TMR0_GetStatus(const CM_TMR0_TypeDef *TMR0x, uint32_t u32Flag);
void TMR0_ClearStatus(CM_TMR0_TypeDef *TMR0x, uint32_t u32Flag);



 





 



 









 
#line 249 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"

























 



 







 
#line 40 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"

#line 42 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"
#line 43 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"




 




 





 



 




 
typedef struct {
    uint16_t u16ClockSrc;       
 
    uint16_t u16ClockDiv;       
 
    uint16_t u16CountMode;      
 
    uint16_t u16PeriodValue;    
 
} stc_tmr4_init_t;



 
typedef union {
    uint16_t OCMRx;              

    struct {                     
        uint16_t OCFDCH : 1;    
 
        uint16_t OCFPKH : 1;    
 
        uint16_t OCFUCH : 1;    
 
        uint16_t OCFZRH : 1;    
 
        uint16_t OPDCH  : 2;    
 
        uint16_t OPPKH  : 2;    
 
        uint16_t OPUCH  : 2;    
 
        uint16_t OPZRH  : 2;    
 
        uint16_t OPNPKH : 2;    
 
        uint16_t OPNZRH : 2;    
 
    } OCMRx_f;
} un_tmr4_oc_ocmrh_t;



 
typedef union {
    uint32_t OCMRx;              

    struct {                     
        uint32_t OCFDCL  : 1;   
 
        uint32_t OCFPKL  : 1;   
 
        uint32_t OCFUCL  : 1;   
 
        uint32_t OCFZRL  : 1;   
 
        uint32_t OPDCL   : 2;   
 
        uint32_t OPPKL   : 2;   
 
        uint32_t OPUCL   : 2;   
 
        uint32_t OPZRL   : 2;   
 
        uint32_t OPNPKL  : 2;   
 
        uint32_t OPNZRL  : 2;   
 
        uint32_t EOPNDCL : 2;   
 
        uint32_t EOPNUCL : 2;   
 
        uint32_t EOPDCL  : 2;   
 
        uint32_t EOPPKL  : 2;   
 
        uint32_t EOPUCL  : 2;   
 
        uint32_t EOPZRL  : 2;   
 
        uint32_t EOPNPKL : 2;   
 
        uint32_t EOPNZRL : 2;   
 
    } OCMRx_f;
} un_tmr4_oc_ocmrl_t;



 
typedef struct {
    uint16_t u16CompareValue;           
 
    uint16_t u16OcInvalidPolarity;      
 
    uint16_t u16CompareModeBufCond;     
 
    uint16_t u16CompareValueBufCond;    
 
    uint16_t u16BufLinkTransObject;     
 
} stc_tmr4_oc_init_t;




 
typedef struct {
    uint16_t u16Mode;                   
 
    uint16_t u16ClockDiv;               
 
    uint16_t u16Polarity;               
 
} stc_tmr4_pwm_init_t;



 
typedef struct {
    uint16_t u16Mode;                   
 
    uint16_t u16CompareValue;           
 
    uint16_t u16OutputEvent;            
 
    uint16_t u16MatchCond;              
 
} stc_tmr4_evt_init_t;



 



 



 




 




 




 




 
#line 240 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"


 




 




 




 
#line 269 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"







 




 
#line 293 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"







 




 
#line 322 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"


 



 




 




 
#line 345 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"


 




 




 




 




 




 





 




 






 




 




 




 






 



 




 




 





 




 
#line 444 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"


 




 
#line 460 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"


 




 





 




 






 




 




 




 







 



 




 




 
#line 529 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"


 




 
#line 543 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"


 




 





 




 






 




 




 




 




 




 
#line 610 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"


 




 
#line 624 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"


 




 
#line 639 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr4.h"


 



 



 



 



 



 




 

 
int32_t TMR4_StructInit(stc_tmr4_init_t *pstcTmr4Init);
int32_t TMR4_Init(CM_TMR4_TypeDef *TMR4x, const stc_tmr4_init_t *pstcTmr4Init);
int32_t TMR4_DeInit(CM_TMR4_TypeDef *TMR4x);
void TMR4_SetClockSrc(CM_TMR4_TypeDef *TMR4x, uint16_t u16Src);
void TMR4_SetClockDiv(CM_TMR4_TypeDef *TMR4x, uint16_t u16Div);
void TMR4_SetCountMode(CM_TMR4_TypeDef *TMR4x, uint16_t u16Mode);
uint16_t TMR4_GetPeriodValue(const CM_TMR4_TypeDef *TMR4x);
void TMR4_SetPeriodValue(CM_TMR4_TypeDef *TMR4x, uint16_t u16Value);
uint16_t TMR4_GetCountValue(const CM_TMR4_TypeDef *TMR4x);
void TMR4_SetCountValue(CM_TMR4_TypeDef *TMR4x, uint16_t u16Value);
void TMR4_ClearCountValue(CM_TMR4_TypeDef *TMR4x);
void TMR4_Start(CM_TMR4_TypeDef *TMR4x);
void TMR4_Stop(CM_TMR4_TypeDef *TMR4x);
void TMR4_ClearStatus(CM_TMR4_TypeDef *TMR4x, uint32_t u32Flag);
en_flag_status_t TMR4_GetStatus(const CM_TMR4_TypeDef *TMR4x, uint32_t u32Flag);
void TMR4_IntCmd(CM_TMR4_TypeDef *TMR4x, uint32_t u32IntType, en_functional_state_t enNewState);
void TMR4_PeriodBufCmd(CM_TMR4_TypeDef *TMR4x, en_functional_state_t enNewState);
uint16_t TMR4_GetCountIntMaskTime(const CM_TMR4_TypeDef *TMR4x, uint32_t u32IntType);
void TMR4_SetCountIntMaskTime(CM_TMR4_TypeDef *TMR4x, uint32_t u32IntType, uint16_t u16MaskTime);
uint16_t TMR4_GetCurrentCountIntMaskTime(const CM_TMR4_TypeDef *TMR4x, uint32_t u32IntType);


 




 

 
int32_t TMR4_OC_StructInit(stc_tmr4_oc_init_t *pstcTmr4OcInit);
int32_t TMR4_OC_Init(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, const stc_tmr4_oc_init_t *pstcTmr4OcInit);
void TMR4_OC_DeInit(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
uint16_t TMR4_OC_GetCompareValue(const CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
void TMR4_OC_SetCompareValue(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16Value);
void TMR4_OC_Cmd(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, en_functional_state_t enNewState);
void TMR4_OC_ExtendControlCmd(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, en_functional_state_t enNewState);
void TMR4_OC_BufIntervalResponseCmd(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch,
                                    uint16_t u16Object, en_functional_state_t enNewState);
uint16_t TMR4_OC_GetPolarity(const CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
void TMR4_OC_SetOcInvalidPolarity(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16Polarity);
void TMR4_OC_SetCompareBufCond(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16Object, uint16_t u16BufCond);
uint16_t TMR4_OC_GetHighChCompareMode(const CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
void TMR4_OC_SetHighChCompareMode(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, un_tmr4_oc_ocmrh_t unTmr4Ocmrh);
uint32_t TMR4_OC_GetLowChCompareMode(const CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
void TMR4_OC_SetLowChCompareMode(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, un_tmr4_oc_ocmrl_t unTmr4Ocmrl);


 




 

 
int32_t TMR4_PWM_StructInit(stc_tmr4_pwm_init_t *pstcTmr4PwmInit);
int32_t TMR4_PWM_Init(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, const stc_tmr4_pwm_init_t *pstcTmr4PwmInit);
void TMR4_PWM_DeInit(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
void TMR4_PWM_SetClockDiv(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16Div);
void TMR4_PWM_SetPolarity(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16Polarity);
void TMR4_PWM_StartReloadTimer(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
void TMR4_PWM_StopReloadTimer(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
void TMR4_PWM_SetFilterCountValue(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16Value);
void TMR4_PWM_SetDeadTimeValue(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint32_t u32DeadTimeIndex, uint16_t u16Value);
uint16_t TMR4_PWM_GetDeadTimeValue(const CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint32_t u32DeadTimeIndex);
void TMR4_PWM_SetAbnormalPinStatus(CM_TMR4_TypeDef *TMR4x, uint32_t u32PwmPin, uint32_t u32PinStatus);



 




 

 
int32_t TMR4_EVT_StructInit(stc_tmr4_evt_init_t *pstcTmr4EventInit);
int32_t TMR4_EVT_Init(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, const stc_tmr4_evt_init_t *pstcTmr4EventInit);
void TMR4_EVT_DeInit(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
void TMR4_EVT_SetDelayObject(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16Object);
void TMR4_EVT_SetMaskTime(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16MaskTime);
uint16_t TMR4_EVT_GetMaskTime(const CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
void TMR4_EVT_SetCompareValue(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16Value);
uint16_t TMR4_EVT_GetCompareValue(const CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch);
void TMR4_EVT_SetOutputEvent(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16Event);
void TMR4_EVT_SetCompareBufCond(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16BufCond);
void TMR4_EVT_BufIntervalResponseCmd(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, en_functional_state_t enNewState);
void TMR4_EVT_EventIntervalResponseCmd(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch,
                                       uint16_t u16MaskType, en_functional_state_t enNewState);
void TMR4_EVT_MatchCondCmd(CM_TMR4_TypeDef *TMR4x, uint32_t u32Ch, uint16_t u16Cond, en_functional_state_t enNewState);


 



 





 



 









 
#line 253 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"





























 



 







 
#line 44 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"

#line 46 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"
#line 47 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"




 




 





 



 



 
typedef struct {
    uint8_t u8CountSrc;              
    struct {
        uint32_t u32ClockDiv;    
        uint32_t u32CountMode;   
        uint32_t u32CountDir;    
    } sw_count;
    struct {
        uint32_t u32CountUpCond;    
        uint32_t u32CountDownCond;  
    } hw_count;
    uint32_t u32PeriodValue;         
} stc_tmr6_init_t;



 
typedef struct {
    uint32_t u32CompareValue;                
    uint32_t u32StartPolarity;               
    uint32_t u32StopPolarity;                
    uint32_t u32CompareMatchPolarity;        
    uint32_t u32PeriodMatchPolarity;         
    uint32_t u32StartStopHold;               

} stc_tmr6_pwm_init_t;



 
typedef struct {
    uint32_t u32BufNum;              

    uint32_t u32BufTransCond;        

} stc_tmr6_buf_config_t;



 
typedef struct {
    uint32_t u32CountCond;           

    uint32_t u32PeriodInterval;      
} stc_tmr6_valid_period_config_t;



 
typedef struct {
    uint32_t u32PinStatus;           
} stc_tmr6_emb_config_t;



 
typedef struct {
    uint32_t u32EqualUpDown;         

    uint32_t u32BufUp;               

    uint32_t u32BufDown;             

} stc_tmr6_deadtime_config_t;



 
typedef struct {
    uint32_t u32ZMaskCycle;          
    uint32_t u32PosCountMaskFunc;    

    uint32_t u32RevoCountMaskFunc;   


} stc_tmr6_zmask_config_t;



 



 



 




 




 




 
#line 190 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"

#line 198 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 
#line 224 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 





 




 
#line 249 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 




 




 




 




 






 




 
#line 296 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 
#line 312 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 






 




 






 




 






 




 




 




 






 




 






 




 




 




 






 




 




 




 




 




 




 




 






 




 
#line 465 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 
#line 484 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 
#line 503 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 
#line 522 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 
#line 546 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 
#line 570 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 




 




 




 




 





 




 
#line 617 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmr6.h"


 




 






 




 




 




 




 



 



 



 



 




 
static __inline uint32_t TMR6_GetSWSyncStartStatus(void)
{
    return (((CM_TMR6_COMMON_TypeDef *)(0x40018300UL))->SSTAR);
}

 
int32_t TMR6_StructInit(stc_tmr6_init_t *pstcTmr6Init);
int32_t TMR6_Init(CM_TMR6_TypeDef *TMR6x, const stc_tmr6_init_t *pstcTmr6Init);

void TMR6_SetCountMode(CM_TMR6_TypeDef *TMR6x, uint32_t u32Mode);
void TMR6_SetCountDir(CM_TMR6_TypeDef *TMR6x, uint32_t u32Dir);
uint32_t TMR6_GetCountDir(CM_TMR6_TypeDef *TMR6x);
void TMR6_SetClockDiv(CM_TMR6_TypeDef *TMR6x, uint32_t u32Div);

 
void TMR6_HWCountUpCondCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Cond, en_functional_state_t enNewState);
void TMR6_HWCountDownCondCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Cond, en_functional_state_t enNewState);

 
int32_t TMR6_PWM_StructInit(stc_tmr6_pwm_init_t *pstcPwmInit);
int32_t TMR6_PWM_Init(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, const stc_tmr6_pwm_init_t *pstcPwmInit);
void TMR6_PWM_OutputCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, en_functional_state_t enNewState);
void TMR6_PWM_SetPolarity(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, uint32_t u32CountState, uint32_t u32Polarity);
void TMR6_PWM_SetStartStopHold(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, uint32_t u32HoldStatus);

 
void TMR6_HWCaptureCondCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, uint32_t u32Cond, en_functional_state_t enNewState);

 
 
void TMR6_SetFilterClockDiv(CM_TMR6_TypeDef *TMR6x, uint32_t u32Pin, uint32_t u32Div);
void TMR6_FilterCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Pin, en_functional_state_t enNewState);
void TMR6_SetFunc(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, uint32_t u32Func);

 
void TMR6_IntCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32IntType, en_functional_state_t enNewState);
en_flag_status_t TMR6_GetStatus(const CM_TMR6_TypeDef *TMR6x, uint32_t u32Flag);
void TMR6_ClearStatus(CM_TMR6_TypeDef *TMR6x, uint32_t u32Flag);
uint32_t TMR6_GetPeriodNum(const CM_TMR6_TypeDef *TMR6x);
void TMR6_DeInit(CM_TMR6_TypeDef *TMR6x);
void TMR6_Start(CM_TMR6_TypeDef *TMR6x);
void TMR6_Stop(CM_TMR6_TypeDef *TMR6x);

 
void TMR6_SetCountValue(CM_TMR6_TypeDef *TMR6x, uint32_t u32Value);
void TMR6_SetPeriodValue(CM_TMR6_TypeDef *TMR6x, uint32_t u32Index, uint32_t u32Value);
void TMR6_SetCompareValue(CM_TMR6_TypeDef *TMR6x, uint32_t u32Index, uint32_t u32Value);
void TMR6_SetSpecialCompareValue(CM_TMR6_TypeDef *TMR6x, uint32_t u32Index, uint32_t u32Value);
void TMR6_SetDeadTimeValue(CM_TMR6_TypeDef *TMR6x, uint32_t u32Index, uint32_t u32Value);

 
uint32_t TMR6_GetCountValue(const CM_TMR6_TypeDef *TMR6x);
uint32_t TMR6_GetPeriodValue(const CM_TMR6_TypeDef *TMR6x, uint32_t u32Index);
uint32_t TMR6_GetCompareValue(const CM_TMR6_TypeDef *TMR6x, uint32_t u32Index);
uint32_t TMR6_GetSpecialCompareValue(const CM_TMR6_TypeDef *TMR6x, uint32_t u32Index);
uint32_t TMR6_GetDeadTimeValue(const CM_TMR6_TypeDef *TMR6x, uint32_t u32Index);

 
void TMR6_SetGeneralBufNum(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, uint32_t u32BufNum);
void TMR6_SetPeriodBufNum(CM_TMR6_TypeDef *TMR6x, uint32_t u32BufNum);

int32_t TMR6_SpecialBufConfig(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, const stc_tmr6_buf_config_t *pstcBufConfig);
void TMR6_GeneralBufCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, en_functional_state_t enNewState);
void TMR6_SpecialBufCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, en_functional_state_t enNewState);
void TMR6_PeriodBufCmd(CM_TMR6_TypeDef *TMR6x, en_functional_state_t enNewState);

 
int32_t TMR6_ValidPeriodConfig(CM_TMR6_TypeDef *TMR6x, const stc_tmr6_valid_period_config_t *pstcValidperiodConfig);
void TMR6_ValidPeriodCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, en_functional_state_t enNewState);
void TMR6_DeadTimeFuncCmd(CM_TMR6_TypeDef *TMR6x, en_functional_state_t enNewState);
int32_t TMR6_DeadTimeConfig(CM_TMR6_TypeDef *TMR6x, const stc_tmr6_deadtime_config_t *pstcDeadTimeConfig);
int32_t TMR6_ZMaskConfig(CM_TMR6_TypeDef *TMR6x, const stc_tmr6_zmask_config_t *pstcZMaskConfig);
int32_t TMR6_EMBConfig(CM_TMR6_TypeDef *TMR6x, uint32_t u32Ch, const stc_tmr6_emb_config_t *pstcEmbConfig);
int32_t TMR6_BufFuncStructInit(stc_tmr6_buf_config_t *pstcBufConfig);
int32_t TMR6_ValidPeriodStructInit(stc_tmr6_valid_period_config_t *pstcValidperiodConfig);
int32_t TMR6_EMBConfigStructInit(stc_tmr6_emb_config_t *pstcEmbConfig);
int32_t TMR6_DeadTimeStructInit(stc_tmr6_deadtime_config_t *pstcDeadTimeConfig);
int32_t TMR6_ZMaskConfigStructInit(stc_tmr6_zmask_config_t *pstcZMaskConfig);

 
void TMR6_SWSyncStart(uint32_t u32Unit);
void TMR6_SWSyncStop(uint32_t u32Unit);
void TMR6_SWSyncClear(uint32_t u32Unit);

 
void TMR6_HWStartCondCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Cond, en_functional_state_t enNewState);
void TMR6_HWStartCmd(CM_TMR6_TypeDef *TMR6x, en_functional_state_t enNewState);
void TMR6_HWStopCondCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Cond, en_functional_state_t enNewState);
void TMR6_HWStopCmd(CM_TMR6_TypeDef *TMR6x, en_functional_state_t enNewState);
void TMR6_HWClearCondCmd(CM_TMR6_TypeDef *TMR6x, uint32_t u32Cond, en_functional_state_t enNewState);
void TMR6_HWClearCmd(CM_TMR6_TypeDef *TMR6x, en_functional_state_t enNewState);



 





 



 









 
#line 257 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


























 



 







 
#line 41 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"

#line 43 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"
#line 44 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"



 




 





 



 


 
typedef struct {
    uint8_t u8CountSrc;                     
 
    struct {
        uint8_t u8ClockDiv;                 
 
        uint8_t u8CountMode;                
 
        uint8_t u8CountDir;                 
 
    } sw_count;
    struct {
        uint16_t u16CountUpCond;            
 
        uint16_t u16CountDownCond;          
 
    } hw_count;
    uint32_t u32PeriodValue;                
 
} stc_tmra_init_t;



 
typedef struct {
    uint32_t u32CompareValue;               


 
    uint16_t u16StartPolarity;              



 
    uint16_t u16StopPolarity;               
 
    uint16_t u16CompareMatchPolarity;       
 
    uint16_t u16PeriodMatchPolarity;        
 
} stc_tmra_pwm_init_t;



 



 



 




 




 




 
#line 142 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 




 




 




 




 




 




 




 
#line 191 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 




 
#line 210 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 





 
#line 234 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 





 
#line 258 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 




 
#line 277 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 




 
#line 296 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 




 
#line 315 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 





 
#line 335 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"



 




 
#line 354 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 




 






 




 






 




 






 




 
#line 405 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 




 
#line 421 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 




 
#line 435 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 





 
#line 456 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_tmra.h"


 



 



 



 



 
 
int32_t TMRA_Init(CM_TMRA_TypeDef *TMRAx, const stc_tmra_init_t *pstcTmraInit);
int32_t TMRA_StructInit(stc_tmra_init_t *pstcTmraInit);
void TMRA_SetCountMode(CM_TMRA_TypeDef *TMRAx, uint8_t u8Mode);
void TMRA_SetCountDir(CM_TMRA_TypeDef *TMRAx, uint8_t u8Dir);
void TMRA_SetClockDiv(CM_TMRA_TypeDef *TMRAx, uint8_t u8Div);

 
void TMRA_HWCountUpCondCmd(CM_TMRA_TypeDef *TMRAx, uint16_t u16Cond, en_functional_state_t enNewState);
void TMRA_HWCountDownCondCmd(CM_TMRA_TypeDef *TMRAx, uint16_t u16Cond, en_functional_state_t enNewState);
 
void TMRA_SetFunc(CM_TMRA_TypeDef *TMRAx, uint32_t u32Ch, uint16_t u16Func);

 
int32_t TMRA_PWM_Init(CM_TMRA_TypeDef *TMRAx, uint32_t u32Ch, const stc_tmra_pwm_init_t *pstcPwmInit);
int32_t TMRA_PWM_StructInit(stc_tmra_pwm_init_t *pstcPwmInit);
void TMRA_PWM_OutputCmd(CM_TMRA_TypeDef *TMRAx, uint32_t u32Ch, en_functional_state_t enNewState);
void TMRA_PWM_SetPolarity(CM_TMRA_TypeDef *TMRAx, uint32_t u32Ch, uint8_t u8CountState, uint16_t u16Polarity);
void TMRA_PWM_SetForcePolarity(CM_TMRA_TypeDef *TMRAx, uint32_t u32Ch, uint16_t u16Polarity);
 
void TMRA_HWCaptureCondCmd(CM_TMRA_TypeDef *TMRAx, uint32_t u32Ch, uint16_t u16Cond, en_functional_state_t enNewState);

 
void TMRA_HWStartCondCmd(CM_TMRA_TypeDef *TMRAx, uint16_t u16Cond, en_functional_state_t enNewState);
void TMRA_HWStopCondCmd(CM_TMRA_TypeDef *TMRAx, uint16_t u16Cond, en_functional_state_t enNewState);
void TMRA_HWClearCondCmd(CM_TMRA_TypeDef *TMRAx, uint16_t u16Cond, en_functional_state_t enNewState);

 
void TMRA_SetFilterClockDiv(CM_TMRA_TypeDef *TMRAx, uint32_t u32Pin, uint16_t u16Div);
void TMRA_FilterCmd(CM_TMRA_TypeDef *TMRAx, uint32_t u32Pin, en_functional_state_t enNewState);

 
int32_t TMRA_DeInit(CM_TMRA_TypeDef *TMRAx);
 
uint8_t TMRA_GetCountDir(const CM_TMRA_TypeDef *TMRAx);

void TMRA_SetPeriodValue(CM_TMRA_TypeDef *TMRAx, uint32_t u32Value);
uint32_t TMRA_GetPeriodValue(const CM_TMRA_TypeDef *TMRAx);
void TMRA_SetCountValue(CM_TMRA_TypeDef *TMRAx, uint32_t u32Value);
uint32_t TMRA_GetCountValue(const CM_TMRA_TypeDef *TMRAx);
void TMRA_SetCompareValue(CM_TMRA_TypeDef *TMRAx, uint32_t u32Ch, uint32_t u32Value);
uint32_t TMRA_GetCompareValue(const CM_TMRA_TypeDef *TMRAx, uint32_t u32Ch);

 
void TMRA_SyncStartCmd(CM_TMRA_TypeDef *TMRAx, en_functional_state_t enNewState);

void TMRA_SetCompareBufCond(CM_TMRA_TypeDef *TMRAx, uint32_t u32Ch, uint16_t u16Cond);
void TMRA_CompareBufCmd(CM_TMRA_TypeDef *TMRAx, uint32_t u32Ch, en_functional_state_t enNewState);

en_flag_status_t TMRA_GetStatus(const CM_TMRA_TypeDef *TMRAx, uint32_t u32Flag);
void TMRA_ClearStatus(CM_TMRA_TypeDef *TMRAx, uint32_t u32Flag);
void TMRA_IntCmd(CM_TMRA_TypeDef *TMRAx, uint32_t u32IntType, en_functional_state_t enNewState);
void TMRA_EventCmd(CM_TMRA_TypeDef *TMRAx, uint32_t u32EventType, en_functional_state_t enNewState);
void TMRA_Start(CM_TMRA_TypeDef *TMRAx);
void TMRA_Stop(CM_TMRA_TypeDef *TMRAx);



 





 



 









 
#line 261 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"






#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_usart.h"



























 



 







 
#line 42 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_usart.h"

#line 44 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_usart.h"
#line 45 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_usart.h"




 




 





 



 




 
typedef struct {
    uint32_t u32ClockSrc;               
 
    uint32_t u32ClockDiv;               
 
    uint32_t u32Baudrate;               
 
    uint32_t u32FirstBit;               
 
    uint32_t u32HWFlowControl;          
 
} stc_usart_clocksync_init_t;




 
typedef struct {
    uint32_t u32ClockSrc;               
 
    uint32_t u32ClockDiv;               
 
    uint32_t u32CKOutput;               
 
    uint32_t u32Baudrate;               
 
    uint32_t u32DataWidth;              
 
    uint32_t u32StopBit;                
 
    uint32_t u32OverSampleBit;          
 
    uint32_t u32FirstBit;               
 
    uint32_t u32StartBitPolarity;       
 
    uint32_t u32HWFlowControl;          
 
} stc_usart_multiprocessor_init_t;




 
typedef struct {
    uint32_t u32ClockSrc;               
 
    uint32_t u32ClockDiv;               
 
    uint32_t u32CKOutput;               
 
    uint32_t u32Baudrate;               
 
    uint32_t u32DataWidth;              
 
    uint32_t u32StopBit;                
 
    uint32_t u32Parity;                 
 
    uint32_t u32OverSampleBit;          
 
    uint32_t u32FirstBit;               
 
    uint32_t u32StartBitPolarity;       
 
    uint32_t u32HWFlowControl;          
 
} stc_usart_uart_init_t;



 
typedef struct {
    uint32_t u32ClockDiv;               
 
    uint32_t u32CKOutput;               
 
    uint32_t u32Baudrate;               
 
    uint32_t u32FirstBit;               
 
} stc_usart_smartcard_init_t;



 



 



 




 
#line 177 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_usart.h"







 




 




 




 
#line 207 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_usart.h"






 




 






 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 






 




 



 




 







 



 



 



 



 
int32_t USART_ClockSync_StructInit(stc_usart_clocksync_init_t *pstcClockSyncInit);
int32_t USART_ClockSync_Init(CM_USART_TypeDef *USARTx,
                             const stc_usart_clocksync_init_t *pstcClockSyncInit, float32_t *pf32Error);
int32_t USART_MultiProcessor_StructInit(stc_usart_multiprocessor_init_t *pstcMultiProcessorInit);
int32_t USART_MultiProcessor_Init(CM_USART_TypeDef *USARTx,
                                  const stc_usart_multiprocessor_init_t *pstcMultiProcessorInit, float32_t *pf32Error);
int32_t USART_UART_StructInit(stc_usart_uart_init_t *pstcUartInit);
int32_t USART_UART_Init(CM_USART_TypeDef *USARTx, const stc_usart_uart_init_t *pstcUartInit, float32_t *pf32Error);

int32_t USART_SmartCard_StructInit(stc_usart_smartcard_init_t *pstcSmartCardInit);
int32_t USART_SmartCard_Init(CM_USART_TypeDef *USARTx,
                             const stc_usart_smartcard_init_t *pstcSmartCardInit, float32_t *pf32Error);

int32_t USART_DeInit(CM_USART_TypeDef *USARTx);
void USART_FuncCmd(CM_USART_TypeDef *USARTx, uint32_t u32Func, en_functional_state_t enNewState);
en_functional_state_t USART_GetFuncState(CM_USART_TypeDef *USARTx, uint32_t u32Func);
en_flag_status_t USART_GetStatus(const CM_USART_TypeDef *USARTx, uint32_t u32Flag);
void USART_ClearStatus(CM_USART_TypeDef *USARTx, uint32_t u32Flag);
void USART_SetParity(CM_USART_TypeDef *USARTx, uint32_t u32Parity);
uint32_t USART_GetParity(CM_USART_TypeDef *USARTx);
void USART_SetFirstBit(CM_USART_TypeDef *USARTx, uint32_t u32FirstBit);
void USART_SetStopBit(CM_USART_TypeDef *USARTx, uint32_t u32StopBit);
uint32_t USART_GetStopBit(CM_USART_TypeDef *USARTx);
void USART_SetDataWidth(CM_USART_TypeDef *USARTx, uint32_t u32DataWidth);
uint32_t USART_GetDataWidth(CM_USART_TypeDef *USARTx);
void USART_SetOverSampleBit(CM_USART_TypeDef *USARTx, uint32_t u32OverSampleBit);
void USART_SetStartBitPolarity(CM_USART_TypeDef *USARTx, uint32_t u32Polarity);
void USART_SetTransType(CM_USART_TypeDef *USARTx, uint16_t u16Type);
void USART_SetClockDiv(CM_USART_TypeDef *USARTx, uint32_t u32ClockDiv);
uint32_t USART_GetClockDiv(const CM_USART_TypeDef *USARTx);
void USART_SetClockSrc(CM_USART_TypeDef *USARTx, uint32_t u32ClockSrc);
uint32_t USART_GetClockSrc(const CM_USART_TypeDef *USARTx);
void USART_FilterCmd(CM_USART_TypeDef *USARTx, en_functional_state_t enNewState);
void USART_SilenceCmd(CM_USART_TypeDef *USARTx, en_functional_state_t enNewState);
void USART_SetHWFlowControl(CM_USART_TypeDef *USARTx, uint32_t u32HWFlowControl);
uint32_t USART_GetHWFlowControl(CM_USART_TypeDef *USARTx);
uint16_t USART_ReadData(const CM_USART_TypeDef *USARTx);
void USART_WriteData(CM_USART_TypeDef *USARTx, uint16_t u16Data);
void USART_WriteID(CM_USART_TypeDef *USARTx, uint16_t u16ID);

int32_t USART_SetBaudrate(CM_USART_TypeDef *USARTx, uint32_t u32Baudrate, float32_t *pf32Error);

void USART_SmartCard_SetEtuClock(CM_USART_TypeDef *USARTx, uint32_t u32EtuClock);

int32_t USART_UART_Trans(CM_USART_TypeDef *USARTx, const void *pvBuf, uint32_t u32Len, uint32_t u32Timeout);
int32_t USART_UART_Receive(const CM_USART_TypeDef *USARTx, void *pvBuf, uint32_t u32Len, uint32_t u32Timeout);
int32_t USART_ClockSync_Trans(CM_USART_TypeDef *USARTx, const uint8_t au8Buf[], uint32_t u32Len, uint32_t u32Timeout);
int32_t USART_ClockSync_Receive(CM_USART_TypeDef *USARTx, uint8_t au8Buf[], uint32_t u32Len, uint32_t u32Timeout);
int32_t USART_ClockSync_TransReceive(CM_USART_TypeDef *USARTx, const uint8_t au8TxBuf[], uint8_t au8RxBuf[],
                                     uint32_t u32Len, uint32_t u32Timeout);



 





 



 









 
#line 269 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"


#line 1 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_utility.h"


















 



 







 
#line 33 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_utility.h"

#line 35 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_utility.h"
#line 36 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_utility.h"




 




 





 



 



 



 



 

 
void DDL_DelayMS(uint32_t u32Count);
void DDL_DelayUS(uint32_t u32Count);

 
int32_t SysTick_Init(uint32_t u32Freq);
void SysTick_Delay(uint32_t u32Delay);
void SysTick_IncTick(void);
uint32_t SysTick_GetTick(void);
void SysTick_Suspend(void);
void SysTick_Resume(void);






 





 
void DDL_AssertHandler(const char *file, int line);




#line 108 "../../../../drivers/hc32_ll_driver/inc/hc32_ll_utility.h"



 





 



 









 
#line 273 "../../../../drivers/hc32_ll_driver/inc/hc32_ll.h"














 



 



 
void LL_PERIPH_WE(uint32_t u32Peripheral);
void LL_PERIPH_WP(uint32_t u32Peripheral);


 



 



 









 
#line 22 "..\\..\\UDS\\common.h"

#line 13 "..\\..\\UDS\\uds_diagnostic.h"
#line 14 "..\\..\\UDS\\uds_diagnostic.h"
#line 1 "..\\..\\UDS\\uds_did_rid.h"







 



 
 




 
 





#line 15 "..\\..\\UDS\\uds_diagnostic.h"
#line 1 "..\\..\\UDS\\uds_dl_if.h"







 



#line 13 "..\\..\\UDS\\uds_dl_if.h"
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

#line 16 "..\\..\\UDS\\uds_diagnostic.h"

 
 







 


 
#line 42 "..\\..\\UDS\\uds_diagnostic.h"

 
#line 65 "..\\..\\UDS\\uds_diagnostic.h"

 




 




 




 





 



 



 
 
typedef enum
{
    UDS_SESSION_DEFAULT_MODE = 0x01,
    UDS_SESSION_EXTENDED_MODE = 0x03,
    UDS_SESSION_PROGRAMMING_MODE = 0x02,
} uds_session_mode_t;

 
typedef enum
{
    UDS_SECURITY_LOCKED = 0,
    UDS_SECURITY_SEED_SENT,
    UDS_SECURITY_UNLOCKED,
} uds_security_state_t;

 
typedef struct
{
    uint16_t routine_id;
    uint8_t status;
    uint32_t result;
} uds_routine_t;

 
typedef struct
{
    uds_session_mode_t session_mode;
    uds_security_state_t security_state;
    volatile uint32_t session_timer_ms;
    volatile uint32_t security_delay_ms;
    uint32_t security_seed;
    uint8_t security_attempts;
    uds_routine_t routine;
    uint16_t session_timeout_ms;
    uint8_t max_attempts;
    
     
    uint16_t firmware_version;
    uint16_t bootloader_version;
    uint32_t firmware_crc;
    
} uds_ctrl_t;

 
void uds_init(void);
void uds_ms_update(void);
void uds_process(void);
int8_t uds_receive_handler(uint8_t channel, uint32_t can_id, uint8_t* data, uint16_t len);
int8_t uds_send_response(uint8_t channel, uint8_t sid, uint8_t* data, uint8_t len);
int8_t uds_send_negative_response(uint8_t channel, uint8_t sid, uint8_t nrc);
int8_t uds_send_response_pending(uint8_t channel, uint8_t sid);
uds_session_mode_t uds_get_session_mode(void);
uds_security_state_t uds_get_security_state(void);
const char* uds_session_to_string(uds_session_mode_t session);
const char* uds_security_to_string(uds_security_state_t state);



#line 9 "..\\..\\UDS\\uds_diagnostic.c"
#line 1 "..\\..\\UDS\\can_adapter.h"







#line 9 "..\\..\\UDS\\can_adapter.h"
#line 1 "..\\..\\Adp\\Adapter_Can.h"




 








#line 15 "..\\..\\Adp\\Adapter_Can.h"
#line 16 "..\\..\\Adp\\Adapter_Can.h"
#line 1 "..\\..\\Adp\\can_module.h"






 




#line 13 "..\\..\\Adp\\can_module.h"
#line 14 "..\\..\\Adp\\can_module.h"
#line 15 "..\\..\\Adp\\can_module.h"







 

 
typedef enum {
    CAN_FUNC_DISABLE = 0u,
    CAN_FUNC_ENABLE  = 1u,
} en_can_func_t;

 
typedef enum {
    CAN_BDR_CUSTOM = 0u,
    CAN_BDR_250K   = 1u,
    CAN_BDR_500K   = 2u,
    CAN_BDR_1M     = 3u,
} can_bdr_t;

 
typedef enum {
    FILTER_DISABLE = 0u,
    FILTER_ENABLE  = 1u,
} en_can_filter_t;

 
typedef enum {
    CAN1 = 0u,
    CAN2 = 1u,
} can_ins_t;

 
typedef enum {
    CAN_RET_OK        = 1,
    CAN_RET_BUSY      = 0,
    CAN_RET_ERR_INIT  = -1,
    CAN_RET_ERR_PARAM = -2,
    CAN_RET_ERR_NODATA= -3,
} can_ret_t;

 
typedef enum {
    IDE_STD = 0,
    IDE_EXD = 1,
} can_ide_t;

 
typedef enum {
    RTR_DATA_FRAME   = 0,
    RTR_REMOTE_FRAME = 1,
} can_rtr_t;

 
typedef enum {
    CAN_TX_IDLE = 0,
    CAN_TX_WAIT = 1,
} can_tx_stat_t;



 









 

 
typedef struct {
    uint8_t   port;
    uint16_t  pin;
    uint16_t  func;
} can_gpio_t;

 
typedef struct {
    uint32_t  presc;
    uint32_t  seg_1;
    uint32_t  seg_2;
    uint32_t  sjw;
} can_bittime_t;

 
typedef struct {
    uint32_t  id;
    uint32_t  id_mask;
    uint32_t  id_type;
} can_filter_t;

 
typedef struct {
    uint8_t   en_ptb_single_shot;
    uint8_t   en_stb_single_shot;
    uint8_t   en_stb_prio_md;
} can_tx_cfg_t;

 
typedef struct {
    uint8_t   rx_warn_lmt;
    uint8_t   err_warn_lmt;
    uint8_t   rx_all_frame;
    uint8_t   rx_ovf_mode;
    uint8_t   self_ack;
} can_rx_cfg_t;

 
typedef struct {
    IRQn_Type   can_int_irqn;
    uint8_t     can_int_pri;
    void      (*can_int_callback)(void);
} can_int_t;



 

 
typedef struct {
    uint32_t  id;
    uint8_t   data[8];
    uint8_t   len;
    can_rtr_t rtr;
    can_ide_t ide;
} can_frame_t;

 
typedef struct {
    can_tx_stat_t tx_stat;
    can_frame_t   tx_frame;
} can_txctrl_t;

 
typedef struct {
    uint16_t             read_idx;
    uint16_t             write_idx;
    uint16_t             cnt;
    stc_can_rx_frame_t   rx_frame[(5)];
} can_rx_cache_t;

 
typedef struct {
    uint16_t  tx_frame_cnt;
    uint16_t  rx_frame_cnt;
    uint16_t  err_cnt;
    uint16_t  over_run_cnt;
} can_recorder_t;

 
typedef struct {
    can_ins_t         can_ins;
    CM_CAN_TypeDef   *CANx;

    en_can_func_t     en_can_tx;
    en_can_func_t     en_can_rx;

    can_gpio_t        gpio_rx;
    can_gpio_t        gpio_tx;

    can_bdr_t         can_bdr;
    can_bittime_t     bit_time;
    uint8_t           work_mode;

    can_tx_cfg_t      can_tx_cfg;
    can_rx_cfg_t      can_rx_cfg;

    uint32_t          can_int_type;
    can_int_t         can_int;

    en_can_filter_t   en_can_filte;
    can_filter_t      can_filter;
} can_cfg_t;

 
typedef struct {
    const can_cfg_t  *cfg_hw;
    uint8_t           initialized;
    can_txctrl_t      can_tx;
    can_rx_cache_t    can_rx;
    can_recorder_t    recorder;
} can_handle_t;



 

 
int32_t can_module_init(can_handle_t *handle, const can_cfg_t *cfg);

 
int8_t  can_transmit_std(uint32_t id, uint8_t *pData, uint8_t Len);

 
int8_t  can_transmit_ext(uint32_t id, uint8_t *pData, uint8_t Len);

 
int8_t  can_rx_cache_put(can_rx_cache_t *pstcCache, const stc_can_rx_frame_t *pstcFrame);

 
int8_t  can_read(can_rx_cache_t *pstcCache, stc_can_rx_frame_t *pstcFrame);

 
void    can_receive_poll(can_rx_cache_t *rx);



 

 
typedef void (*can_tx_callback_t)(void);





 
void can_register_tx_callback(can_tx_callback_t pfnCallback);





 
_Bool can_is_tx_busy(void);



 




 
void can_module_irq_handler(void);





#line 17 "..\\..\\Adp\\Adapter_Can.h"



 
typedef struct {
    uint32_t u32ID;          
    uint8_t  u8IDE;          
    uint8_t  u8RTR;          
    uint8_t  u8FDF;          
    uint8_t  u8BRS;          
    uint8_t  u8DLC;          
    uint8_t  au8Data[8];     
    uint32_t u32Timestamp;   
} CanMsg_t;



 
typedef struct {
    uint32_t u32CanId;       
    uint32_t u32CanMask;     
    uint8_t  u8Format;       
    void   (*pfnCallback)(const CanMsg_t *pMsg);   
} CanIf_RxFilterEntry_t;



 




 
void CanIf_Init(void);





 
_Bool CanIf_Send(const CanMsg_t *pMsg);





 
void CanIf_Poll(void);






 
_Bool CanIf_RegisterRxFilter(const CanIf_RxFilterEntry_t *pEntry);




 
void CanIf_SetDefaultRxCallback(void (*pfnCallback)(const CanMsg_t *pMsg));




 
uint8_t CanIf_GetTxQueueCount(void);





#line 10 "..\\..\\UDS\\can_adapter.h"

 
typedef CanMsg_t CAN_TSMT_FRAME_t;




 

static inline int8_t can_adapter_LoadExtFrame(CAN_TSMT_FRAME_t *pFrame, uint32_t CAN_ID,
                                              uint8_t *pData, uint8_t Len)
{
    if (pFrame == 0 || pData == 0) {
        return -1;
    }
    pFrame->u32ID = CAN_ID;
    pFrame->u8IDE = 1U;
    pFrame->u8RTR = 0U;
    pFrame->u8FDF = 0U;
    pFrame->u8BRS = 0U;
    pFrame->u8DLC = (Len > 8U) ? 8U : Len;
    for (uint8_t i = 0U; i < pFrame->u8DLC; i++) {
        pFrame->au8Data[i] = pData[i];
    }
    pFrame->u32Timestamp = 0UL;
    return 0;
}






 
static inline int8_t can_adapter_Transmit_Polling(uint8_t Channel, const CAN_TSMT_FRAME_t *pFrame,
                                                  uint8_t Len)
{
    (void)Channel;
    (void)Len;
    if (pFrame == 0) {
        return -1;
    }
    CanIf_Send(pFrame);
    return 0;
}





#line 10 "..\\..\\UDS\\uds_diagnostic.c"
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

#line 281 "..\\..\\RTT\\SEGGER_RTT.h"
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

















































#line 11 "..\\..\\UDS\\uds_diagnostic.c"
#line 12 "..\\..\\UDS\\uds_diagnostic.c"
#line 1 "..\\..\\UDS\\isotp_transport.h"






 



 
#line 13 "..\\..\\UDS\\isotp_transport.h"
#line 14 "..\\..\\UDS\\isotp_transport.h"

 

#line 28 "..\\..\\UDS\\isotp_transport.h"

 
#line 42 "..\\..\\UDS\\isotp_transport.h"

 



 


 


 



 


 

 





 




 






 




 



 


 

 
typedef enum
{
    ISOTP_RX_IDLE = 0,           
    ISOTP_RX_ACTIVE,             
    ISOTP_RX_WAIT_FC,            
    ISOTP_RX_COMPLETE,           
    ISOTP_RX_TIMEOUT             
} isotp_rx_state_t;

 
typedef enum
{
    ISOTP_TX_IDLE = 0,           
    ISOTP_TX_SENDING_FF,         
    ISOTP_TX_SENDING_CF,         
    ISOTP_TX_COMPLETE,           
    ISOTP_TX_TIMEOUT             
} isotp_tx_state_t;

 
typedef struct
{
     
    isotp_rx_state_t rx_state;           
    uint32_t rx_src_id;                  
    uint32_t rx_dst_id;                  
    uint8_t* rx_buffer;                  
    uint16_t rx_total_len;               
    uint16_t rx_received_len;            
    uint8_t rx_expected_seq;             
    uint8_t rx_cf_count_in_block;        
    uint16_t rx_timeout_counter;         
    
     
    isotp_tx_state_t tx_state;           
    uint32_t tx_dst_id;                  
    uint8_t* tx_buffer;                  
    uint16_t tx_total_len;               
    uint16_t tx_sent_len;                
    uint8_t tx_seq;                      
    uint8_t tx_cf_count_in_block;        
    uint16_t tx_timeout_counter;         
    uint8_t tx_bs;                       
    uint8_t tx_st_min;                   
    uint16_t tx_st_min_counter;          
    
     
    uint8_t local_bs;                    
    uint8_t local_st_min;                
    uint16_t timeout_ms;                 
    
     
    uint8_t channel;                     
} isotp_connection_t;

 

 
void isotp_init(uint8_t channel);

 
void isotp_ms_update(void);

 
int8_t isotp_receive_frame(uint8_t channel, uint32_t can_id, uint8_t* frame_data, 
                            uint8_t frame_len, uint8_t* out_data, uint16_t* out_len);

 
int8_t isotp_send_message(uint8_t channel, uint32_t dst_id, uint8_t* data, uint16_t len);

 
void isotp_tx_process(void);

 
void isotp_reset_rx(void);

 
void isotp_reset_tx(void);

 
isotp_rx_state_t isotp_get_rx_state(void);

 
isotp_tx_state_t isotp_get_tx_state(void);

 
void isotp_handle_flow_control(uint8_t flow_status, uint8_t block_size, uint8_t st_min);

 

 
uint32_t isotp_get_filter_record_count(void);

 
uint32_t isotp_get_last_filtered_can_id(void);

 
void isotp_get_last_filtered_data(uint8_t* out_data, uint8_t* out_len);

 
_Bool isotp_get_filter_record(uint16_t index, uint32_t* can_id, uint8_t* data, uint8_t* len);


#line 13 "..\\..\\UDS\\uds_diagnostic.c"
#line 1 "..\\..\\UDS\\security_access.h"



 



#line 9 "..\\..\\UDS\\security_access.h"
#line 10 "..\\..\\UDS\\security_access.h"





_Bool seedkey_calc_lv1_key(uint8_t *seed, uint8_t *key);

#line 14 "..\\..\\UDS\\uds_diagnostic.c"
#line 1 "..\\..\\Bootloader_App\\Bootloader_App.h"



#line 5 "..\\..\\Bootloader_App\\Bootloader_App.h"
#line 1 "../../../../drivers/cmsis/Include/core_cm4.h"
 




 
















 







#line 170 "../../../../drivers/cmsis/Include/core_cm4.h"



#line 2128 "../../../../drivers/cmsis/Include/core_cm4.h"

#line 6 "..\\..\\Bootloader_App\\Bootloader_App.h"
#line 7 "..\\..\\Bootloader_App\\Bootloader_App.h"






















 
























typedef uint32_t en_slot_type_t;




typedef enum {
    APP_STATE_AVAILABLE = 0,
    APP_STATE_DISABLED = 1
} en_app_state_t;

typedef enum {
    WDT_RESET_NONE = 0,
    WDT_RESET_SWDT = 1,
    WDT_RESET_WDT = 2
} en_wdt_reset_type_t;

typedef enum {
    BOOT_STATUS_NORMAL = 0,
    BOOT_STATUS_APP1_DISABLED = 1,
    BOOT_STATUS_APP2_DISABLED = 2,
    BOOT_STATUS_BOTH_DISABLED = 3
} en_boot_status_t;

typedef struct {
    en_slot_type_t eSlot;
    uint32_t u32WdtCount;
    en_app_state_t eState;
    uint32_t u32StartAddr;
} stc_app_info_t;

typedef struct {
    en_wdt_reset_type_t eWdtResetType;
    en_slot_type_t eCurrentSlot;
    en_slot_type_t eTargetSlot;
    stc_app_info_t stcApp1;
    stc_app_info_t stcApp2;
    uint8_t u8NeedUpdateSlotFlag;
} stc_boot_context_t;










typedef struct {
    volatile uint32_t app1_feed_ctrl;
    volatile uint32_t app2_feed_ctrl;
    volatile uint32_t debug_flag;
    volatile uint32_t reserved[5];
} stc_shared_ctrl_t;

static inline stc_shared_ctrl_t* GetSharedCtrl(void)
{
    return (stc_shared_ctrl_t*)(0x1FFF8000 + 0x2F000 - 0x100);
}









typedef enum {
    UDS_PHASE_IDLE              = 0,   
    UDS_PHASE_ENTER_BOOTLOADER  = 1,   
    UDS_PHASE_PROGRAMMING_DONE  = 2,   
} en_uds_phase_t;

typedef struct {
    uint32_t magic;             
    uint32_t phase;             
    uint32_t target_slot;       
    uint32_t fw_size;           
    uint32_t fw_crc;            
    uint32_t result;            
    uint32_t pending_sid;       
    uint32_t reserved[7];       
} stc_uds_shared_t;             


void UdsShared_Read(stc_uds_shared_t *pState);
void UdsShared_Write(const stc_uds_shared_t *pState);
void UdsShared_Clear(void);
void UdsShared_SetPhase(uint32_t phase, uint32_t target_slot);
void App_CheckPendingUdsAck(void);


void Bootloader_UdsMain(void);





void Boot_StartupSequence(void);                

void InitSharedCtrl(void);
void Bootloader_Init(void);
int32_t Bootloader_FlashEraseSector(uint32_t u32Addr);
void DisableAllNVICInterrupts(void);
void Bootloader_JumpToApp(uint32_t u32AppAddr);
void Boot_SwitchAndRunOther(void);
void Boot_SetRunSlotToAddr(uint32_t u32Addr);
void Bootloader_Delay(uint32_t u32Count);

uint32_t GetWdtResetCount(uint32_t u32Addr);
void UpdateWdtResetCount(uint32_t u32Addr, uint32_t u32CurrentCount);
void ClearWdtResetCount(uint32_t u32Addr);

void SetWdtFeedControl(uint32_t u32Addr, uint32_t u32Value);
uint32_t GetWdtFeedControl(uint32_t u32Addr);
void ClearAppStateBySlot(en_slot_type_t eSlot);
uint32_t READ_FLASH_DIRECT(uint32_t addr);


void ClearAllRAM(void);

#line 15 "..\\..\\UDS\\uds_diagnostic.c"
#line 1 "../source/main.h"


















 



#line 24 "../source/main.h"



 
extern volatile uint32_t g_delayed_reset_ms;






 
#line 16 "..\\..\\UDS\\uds_diagnostic.c"

 
#line 29 "..\\..\\UDS\\uds_diagnostic.c"

 
static uds_ctrl_t g_uds_ctrl;

 
static void uds_refresh_session_timer(void);
static uint32_t uds_generate_seed(void);
static uint32_t uds_calculate_key(uint32_t seed);
static uint16_t uds_read_data_by_id(uint16_t did);
static void uds_write_data_by_id(uint16_t did, uint16_t value);

 
static void uds_handle_diagnostic_session_control(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len);
 
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

#line 44 "..\\..\\UDS\\uds_diagnostic.c"
static uint8_t uds_map_dl_result_to_nrc(uds_dl_result_t dl_result)
{
    switch (dl_result)
    {
        case UDS_DL_OK:              return 0xFF;  
        case UDS_DL_ADDR_INVALID:    return 0x31;
        case UDS_DL_SIZE_TOO_LARGE:  return 0x31;
        case UDS_DL_ERASE_FAILED:    return 0x72;
        case UDS_DL_WRITE_FAILED:    return 0x72;
        case UDS_DL_VERIFY_FAILED:   return 0x72;
        case UDS_DL_SEQUENCE_ERROR:  return 0x24;
        case UDS_DL_BUSY:            return 0x21;
        case UDS_DL_NOT_READY:       return 0x22;
        case UDS_DL_CRC_MISMATCH:    return 0x72;
        default:                     return 0x10;
    }
}

 
void uds_init(void)
{
    (void)0;
    
    memset(&g_uds_ctrl, 0, sizeof(g_uds_ctrl));
    
     
    g_uds_ctrl.session_mode = UDS_SESSION_DEFAULT_MODE;
    g_uds_ctrl.security_state = UDS_SECURITY_LOCKED;
    
     
    g_uds_ctrl.session_timeout_ms = 4000;
    g_uds_ctrl.max_attempts = 3;
    g_uds_ctrl.session_timer_ms = 0;
    g_uds_ctrl.security_delay_ms = 0;
    
     
    if (uds_dl_is_registered())
    {
        const uds_dl_if_t* dl = uds_dl_get_if();
        uint32_t value;
        
        if (dl->read_did(0xF000, &value))
            g_uds_ctrl.firmware_version = (uint16_t)value;
        else
            g_uds_ctrl.firmware_version = 0;
        
        if (dl->read_did(0xF001, &value))
            g_uds_ctrl.bootloader_version = (uint16_t)value;
        else
            g_uds_ctrl.bootloader_version = 0;
        
        if (dl->read_did(0xF002, &value))
            g_uds_ctrl.firmware_crc = value;
        else
            g_uds_ctrl.firmware_crc = 0;
    }
    else
    {
        (void)0;
        g_uds_ctrl.firmware_version = 0;
        g_uds_ctrl.bootloader_version = 0;
        g_uds_ctrl.firmware_crc = 0;
    }
    
     
    g_uds_ctrl.routine.routine_id = 0;
    g_uds_ctrl.routine.status = 0;
    g_uds_ctrl.routine.result = 0;
    
    (void)0;

    (void)0;
    (void)0;
}

 
void uds_ms_update(void)
{
    static uint32_t print_cnt = 0;
    
     
    if (g_uds_ctrl.session_timer_ms > 0)
    {
        g_uds_ctrl.session_timer_ms--;
        if (g_uds_ctrl.session_timer_ms == 0)
        {
            if (g_uds_ctrl.session_mode != UDS_SESSION_DEFAULT_MODE)
            {
                (void)0;

                g_uds_ctrl.session_mode = UDS_SESSION_DEFAULT_MODE;
                g_uds_ctrl.security_state = UDS_SECURITY_LOCKED;
                g_uds_ctrl.security_attempts = 0;
                g_uds_ctrl.security_seed = 0;
                
                 
                if (uds_dl_is_registered())
                {
                    const uds_dl_if_t* dl = uds_dl_get_if();
                    dl->reset();
                    (void)0;
                }
            }
        }
    }
    
     
    if (g_uds_ctrl.security_delay_ms > 0)
    {
        g_uds_ctrl.security_delay_ms--;
        if (g_uds_ctrl.security_delay_ms == 0)
        {
            (void)0;
        }
    }
    
     

    print_cnt++;
    if (print_cnt >= (655350))
    {
        print_cnt = 0;
        (void)0;
#line 175 "..\\..\\UDS\\uds_diagnostic.c"
    }

}

 
void uds_process(void)
{
     
}

 
static void uds_refresh_session_timer(void)
{
    uint32_t old_timer = g_uds_ctrl.session_timer_ms;
    g_uds_ctrl.session_timer_ms = g_uds_ctrl.session_timeout_ms;
    (void)0;
}

 
static uint32_t uds_generate_seed(void)
{
    uint32_t seed;
    





     
    static uint32_t seed_counter = 0;
    seed_counter++;
    seed = (seed_counter * 0x9E3779B9) + (uint32_t)(g_uds_ctrl.session_timer_ms);
    (void)0;

    
    return seed;
}

 
static uint32_t uds_calculate_key(uint32_t seed)
{
    uint8_t seed_bytes[4];
    uint8_t key_bytes[4];
    uint32_t key;
    
    seed_bytes[0] = (seed >> 24) & 0xFF;
    seed_bytes[1] = (seed >> 16) & 0xFF;
    seed_bytes[2] = (seed >> 8) & 0xFF;
    seed_bytes[3] = seed & 0xFF;
    
    (void)0;
    (void)0;

    
    seedkey_calc_lv1_key(seed_bytes, key_bytes);
    
    key = (key_bytes[0] << 24) | (key_bytes[1] << 16) | 
          (key_bytes[2] << 8) | key_bytes[3];
    
    (void)0;
    (void)0;

    
    return key;
}

 
static uint16_t uds_read_data_by_id(uint16_t did)
{
    uint16_t value = 0;
    
    if (uds_dl_is_registered())
    {
        const uds_dl_if_t* dl = uds_dl_get_if();
        uint32_t raw_value;
        
        if (dl->read_did(did, &raw_value))
        {
            value = (uint16_t)(raw_value & 0xFFFF);
        }
        else
        {
            (void)0;
        }
    }
    else
    {
        (void)0;
    }
    
    (void)0;
    return value;
}

static void uds_write_data_by_id(uint16_t did, uint16_t value)
{
    (void)0;
    switch (did)
    {
        case 0xF000:
        case 0xF001:
        case 0xF002:
        default:
            (void)0;
            break;
    }
}

 
static void uds_handle_diagnostic_session_control(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    uint8_t sub_func;
    uds_session_mode_t requested_session;
    
    (void)0;
    
    if (len < 2)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x13);
        return;
    }
    
    sub_func = data[1];
    (void)0;
    
    switch (sub_func)
    {
        case 0x01:
            requested_session = UDS_SESSION_DEFAULT_MODE;
            (void)0;
            break;
        case 0x02:
            requested_session = UDS_SESSION_PROGRAMMING_MODE;
            (void)0;
            break;
        case 0x03:
            requested_session = UDS_SESSION_EXTENDED_MODE;
            (void)0;
            break;
        default:
            (void)0;
            uds_send_negative_response(0, data[0], 0x12);
            return;
    }
    
    if (requested_session == UDS_SESSION_DEFAULT_MODE)
    {
        (void)0;
        g_uds_ctrl.session_mode = UDS_SESSION_DEFAULT_MODE;
        g_uds_ctrl.security_state = UDS_SECURITY_LOCKED;
        g_uds_ctrl.security_attempts = 0;
        g_uds_ctrl.security_seed = 0;
        g_uds_ctrl.security_delay_ms = 0;
        
         
        if (uds_dl_is_registered())
        {
            const uds_dl_if_t* dl = uds_dl_get_if();
            dl->reset();
            (void)0;
        }
    }
    else if (requested_session == UDS_SESSION_EXTENDED_MODE)
    {
        if (g_uds_ctrl.session_mode == UDS_SESSION_DEFAULT_MODE)
        {
            (void)0;
            g_uds_ctrl.session_mode = UDS_SESSION_EXTENDED_MODE;
            g_uds_ctrl.security_state = UDS_SECURITY_LOCKED;
            g_uds_ctrl.security_attempts = 0;
            g_uds_ctrl.security_seed = 0;
        }
        else
        {
            (void)0;
        }
    }
    else if (requested_session == UDS_SESSION_PROGRAMMING_MODE)
    {
        (void)0;
        g_uds_ctrl.session_mode = UDS_SESSION_PROGRAMMING_MODE;
        g_uds_ctrl.security_state = UDS_SECURITY_LOCKED;
        g_uds_ctrl.security_attempts = 0;
        g_uds_ctrl.security_seed = 0;
        g_uds_ctrl.security_delay_ms = 0;
    }
    
    resp[0] = sub_func;
    *resp_len = 1;
    
    (void)0;
    (void)0;		
}

static void uds_handle_ecu_reset(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    uint8_t reset_type;

    SEGGER_RTT_printf(LOG_CH_MAIN, "\033[36m" "[%s] " ">>> Handle 0x11 (ECU Reset), VTOR=0x%08X\r\n" "\033[0m" "\r\n", "MAIN",(unsigned int)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR);

    if (len < 2)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x13);
        return;
    }

    reset_type = data[1];
    SEGGER_RTT_printf(LOG_CH_MAIN, "\033[36m" "[%s] " "  reset_type=0x%02X\r\n" "\033[0m" "\r\n", "MAIN",reset_type);

    if (reset_type != 0x01 && reset_type != 0x03)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x12);
        return;
    }

    if (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR == 0) {
        SEGGER_RTT_printf(LOG_CH_MAIN, "\033[36m" "[%s] " "  ECU Reset: Bootloader context, writing pending_sid=0x11 to flash\r\n" "\033[0m" "\r\n", "MAIN");
        stc_uds_shared_t state;
        UdsShared_Read(&state);
        SEGGER_RTT_printf(LOG_CH_MAIN, "\033[36m" "[%s] " "  Shared state: magic=0x%08X, phase=%d, pending_sid=0x%02X\r\n" "\033[0m" "\r\n", "MAIN",(unsigned int)state . magic, (int)state . phase, (unsigned int)state . pending_sid);

        if (state.magic == 0x55445300UL) {
            state.pending_sid = 0x11;
            UdsShared_Write(&state);
            SEGGER_RTT_printf(LOG_CH_MAIN, "\033[36m" "[%s] " "  pending_sid=0x11 written to flash at 0x%08X\r\n" "\033[0m" "\r\n", "MAIN",(unsigned int)0x00010000);

        } else {
            SEGGER_RTT_printf(LOG_CH_MAIN, "\033[36m" "[%s] " "  WARNING: magic mismatch (0x%08X), pending_sid NOT written!\r\n" "\033[0m" "\r\n", "MAIN",(unsigned int)state . magic);

        }
        *resp_len = 0;
        SEGGER_RTT_printf(LOG_CH_MAIN, "\033[36m" "[%s] " "  Delayed reset scheduled in %d ms\r\n" "\033[0m" "\r\n", "MAIN",(int)(100U));
        g_delayed_reset_ms = (100U);
    } else {
        SEGGER_RTT_printf(LOG_CH_MAIN, "\033[36m" "[%s] " "  ECU Reset: APP context, sending normal response\r\n" "\033[0m" "\r\n", "MAIN");
        resp[0] = reset_type;
        *resp_len = 1;
    }

}

static void uds_handle_read_data_by_id(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    uint16_t did;
    uint16_t value;
    
    (void)0;
    
    if (len < 3)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x13);
        return;
    }
    
    did = (data[1] << 8) | data[2];
    (void)0;
    
    if (did != 0xF000 && did != 0xF001 && did != 0xF002)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x31);
        return;
    }
    
    value = uds_read_data_by_id(did);
    
    resp[0] = (did >> 8) & 0xFF;
    resp[1] = did & 0xFF;
    resp[2] = (value >> 8) & 0xFF;
    resp[3] = value & 0xFF;
    *resp_len = 4;
    
    (void)0;
}

 
static void uds_handle_write_data_by_id(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    uint16_t did;
    uint16_t value;
    
    (void)0;
    
    if (len < 5)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x13);
        return;
    }
    
    did = (data[1] << 8) | data[2];
    value = (data[3] << 8) | data[4];
    (void)0;
    
    if (g_uds_ctrl.session_mode != UDS_SESSION_EXTENDED_MODE &&
        g_uds_ctrl.session_mode != UDS_SESSION_PROGRAMMING_MODE)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x22);
        return;
    }
    
    if (g_uds_ctrl.security_state != UDS_SECURITY_UNLOCKED)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x33);
        return;
    }
    
    switch (did)
    {
        case 0xF000:
        case 0xF001:
        case 0xF002:
            (void)0;
            uds_send_negative_response(0, data[0], 0x31);
            return;
            
        default:
            (void)0;
            uds_send_negative_response(0, data[0], 0x31);
            return;
    }
}

 
static void uds_handle_security_access(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    uint8_t sub_func;
    uint32_t received_key;
    
    (void)0;
    (void)0;

    
    if (len < 2)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x13);
        return;
    }
    
    sub_func = data[1];
    (void)0;
    
    if (g_uds_ctrl.session_mode != UDS_SESSION_EXTENDED_MODE &&
        g_uds_ctrl.session_mode != UDS_SESSION_PROGRAMMING_MODE)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x22);
        return;
    }
    
    if (g_uds_ctrl.security_delay_ms > 0)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x37);
        return;
    }
    
    if (sub_func & 0x01)
    {
        (void)0;
        
        if (g_uds_ctrl.security_state == UDS_SECURITY_SEED_SENT)
        {
            (void)0;
            resp[0] = sub_func;
            resp[1] = (g_uds_ctrl.security_seed >> 24) & 0xFF;
            resp[2] = (g_uds_ctrl.security_seed >> 16) & 0xFF;
            resp[3] = (g_uds_ctrl.security_seed >> 8) & 0xFF;
            resp[4] = g_uds_ctrl.security_seed & 0xFF;
            *resp_len = 5;
            return;
        }

        if (g_uds_ctrl.security_state != UDS_SECURITY_LOCKED)
        {
            (void)0;
            uds_send_negative_response(0, data[0], 0x24);
            return;
        }
        
        g_uds_ctrl.security_seed = uds_generate_seed();
        g_uds_ctrl.security_state = UDS_SECURITY_SEED_SENT;
        
        (void)0;
        
        resp[0] = sub_func;
        resp[1] = (g_uds_ctrl.security_seed >> 24) & 0xFF;
        resp[2] = (g_uds_ctrl.security_seed >> 16) & 0xFF;
        resp[3] = (g_uds_ctrl.security_seed >> 8) & 0xFF;
        resp[4] = g_uds_ctrl.security_seed & 0xFF;
        *resp_len = 5;
    }
    else
    {
        (void)0;
        
        if (g_uds_ctrl.security_state == UDS_SECURITY_UNLOCKED)
        {
            (void)0;
            resp[0] = sub_func;
            *resp_len = 1;
            return;
        }
        
        if (g_uds_ctrl.security_state != UDS_SECURITY_SEED_SENT)
        {
            (void)0;
            uds_send_negative_response(0, data[0], 0x24);
            return;
        }
        
        if (len < 6)
        {
            (void)0;
            uds_send_negative_response(0, data[0], 0x13);
            return;
        }
        
        received_key = (data[2] << 24) | (data[3] << 16) | (data[4] << 8) | data[5];
        (void)0;
        
        uint32_t expected_key = uds_calculate_key(g_uds_ctrl.security_seed);
        if (received_key == expected_key)
        {
            (void)0;
            g_uds_ctrl.security_state = UDS_SECURITY_UNLOCKED;
            g_uds_ctrl.security_attempts = 0;
            g_uds_ctrl.security_delay_ms = 0;
            
            resp[0] = sub_func;
            *resp_len = 1;
            (void)0;
        }
        else
        {
            (void)0;
            g_uds_ctrl.security_attempts++;
            g_uds_ctrl.security_state = UDS_SECURITY_LOCKED;
            g_uds_ctrl.security_seed = 0;
            
            if (g_uds_ctrl.security_attempts >= g_uds_ctrl.max_attempts)
            {
                g_uds_ctrl.security_delay_ms = 100 * g_uds_ctrl.security_attempts;
                (void)0;
                uds_send_negative_response(0, data[0], 0x36);
            }
            else
            {
                (void)0;
                uds_send_negative_response(0, data[0], 0x35);
            }
        }
    }
}

 
static void uds_handle_tester_present(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    uint8_t sub_func = 0;
    
    (void)0;
    
    if (len >= 2)
    {
        sub_func = data[1];
    }
    
    if (sub_func != 0x00 && sub_func != 0x80)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x12);
        return;
    }
    
    if (sub_func == 0x80)
    {
        resp[0] = sub_func;
        *resp_len = 1;
        (void)0;
    }
    else
    {
        *resp_len = 0;
        (void)0;
    }
}

 
static void uds_handle_read_dtc_info(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    uint8_t sub_func;
    
    (void)0;
    
    if (len < 2)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x13);
        return;
    }
    
    sub_func = data[1];
    
    if (sub_func != 0x01 && sub_func != 0x02)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x12);
        return;
    }
    
    resp[0] = sub_func;
    resp[1] = 0x00;
    resp[2] = 0x00;
    resp[3] = 0x00;
    *resp_len = 4;
    
    (void)0;
}

 
static void uds_handle_clear_dtc(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    (void)0;
    
    if (len < 1)
    {
        uds_send_negative_response(0, data[0], 0x13);
        return;
    }
    
    *resp_len = 0;
    (void)0;
}

 

 
static void uds_handle_routine_control(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    (void)0;
    
     
    if (len < 4)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x13);
        return;
    }
    
    uint16_t rid = (data[1] << 8) | data[2];
    uint8_t routine_ctrl_type = data[3];
    
    (void)0;
    
     
    if (g_uds_ctrl.security_state != UDS_SECURITY_UNLOCKED)
    {
        (void)0;

        uds_send_negative_response(0, data[0], 0x33);
        return;
    }
     
    
     
    if (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR == 0x1A000 || ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR == 0x4C000) {
            
        {
            stc_uds_shared_t _st;
            memset(&(_st), 0, sizeof(_st));
            _st.magic = 0x55445300UL;
            _st.phase = UDS_PHASE_ENTER_BOOTLOADER;
            _st.pending_sid = 0x31;
            UdsShared_Write(&_st);
        }
        *resp_len = 0;
        (void)0;
        g_delayed_reset_ms = (100U);
    } else {
        Boot_SetRunSlotToAddr(0x1A000);
        resp[0] = routine_ctrl_type;
        *resp_len = 1;
        (void)0;
    }
}

 
static void uds_start_routine(uint16_t rid, uint8_t* data, uint8_t len, uint32_t* result)
{
    (void)0;
    
    if (!uds_dl_is_registered())
    {
        (void)0;
        *result = 0;
        return;
    }
    
    const uds_dl_if_t* dl = uds_dl_get_if();
    
    switch (rid)
    {
        case 0xFF00:
        {
            if (len < 8)
            {
                (void)0;
                *result = 0;
                return;
            }
            
            uint32_t address = (data[0] << 24) | (data[1] << 16) | (data[2] << 8) | data[3];
            uint32_t size = (data[4] << 24) | (data[5] << 16) | (data[6] << 8) | data[7];
            
            (void)0;
            
            uds_dl_result_t dl_result = dl->erase(address, size);
            if (dl_result != UDS_DL_OK)
            {
                (void)0;
                *result = 0;
            }
            else
            {
                *result = 1;
            }
            break;
        }
        
        case 0xFE00:
        {
            if (len < 8)
            {
                (void)0;
                *result = 0;
                return;
            }
            
            uint32_t address = (data[0] << 24) | (data[1] << 16) | (data[2] << 8) | data[3];
            uint32_t size = (data[4] << 24) | (data[5] << 16) | (data[6] << 8) | data[7];
            
            (void)0;
            
            uint32_t crc_value = 0;
            uds_dl_result_t dl_result = dl->calculate_crc(address, size, &crc_value);
            if (dl_result != UDS_DL_OK)
            {
                (void)0;
                *result = 0;
            }
            else
            {
                *result = crc_value;
            }
            break;
        }
        
        case 0xFF02:
            (void)0;
            *result = 1;
            break;
            
        case 0xFF03:
            (void)0;
            *result = 1;
            break;
            
        default:
            (void)0;
            *result = 0;
            break;
    }
}

static void uds_stop_routine(uint16_t rid)
{
    (void)0;
     
}

static uint32_t uds_get_routine_result(uint16_t rid)
{
    (void)0;
    return g_uds_ctrl.routine.result;
}

 
static void uds_handle_request_download(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    (void)0;
    
     
     
    if (g_uds_ctrl.session_mode != UDS_SESSION_PROGRAMMING_MODE)
    {
        (void)0;

        uds_send_negative_response(0, data[0], 0x7F);
        return;
    }
    
     
    if (g_uds_ctrl.security_state != UDS_SECURITY_UNLOCKED)
    {
        (void)0;

        uds_send_negative_response(0, data[0], 0x33);
        return;
    }
     
    
    if (!uds_dl_is_registered())
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x22);
        return;
    }
    
     
    uint8_t dfi  = data[1];
    uint8_t alfi = data[2];
    uint8_t addr_len = (alfi >> 4) & 0x0F;
    uint8_t size_len = alfi & 0x0F;
    
    if (addr_len == 0 || addr_len > 4 || size_len == 0 || size_len > 4)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x31);
        return;
    }
    
    if (len < (uint8_t)(3 + addr_len + size_len))
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x13);
        return;
    }
    
    uint32_t address = 0;
    for (uint8_t i = 0; i < addr_len; i++) {
        address = (address << 8) | data[3 + i];
    }
    uint32_t size = 0;
    for (uint8_t i = 0; i < size_len; i++) {
        size = (size << 8) | data[3 + addr_len + i];
    }

    (void)0;
    
    const uds_dl_if_t* dl = uds_dl_get_if();
    uds_dl_result_t dl_result = dl->on_request_download(address, size);
    
    if (dl_result != UDS_DL_OK)
    {
        uint8_t nrc = uds_map_dl_result_to_nrc(dl_result);
        (void)0;
        uds_send_negative_response(0, data[0], nrc);
        return;
    }
    
     
    resp[0] = 0x40;   
    resp[1] = 0x00;   
    *resp_len = 2;
    
    (void)0;
}

 
static void uds_handle_transfer_data(uint8_t* data, uint16_t len, uint8_t* resp, uint8_t* resp_len)
{
    (void)0;
    
     
     
    if (g_uds_ctrl.session_mode != UDS_SESSION_PROGRAMMING_MODE)
    {
        (void)0;

        uds_send_negative_response(0, data[0], 0x7F);
        return;
    }
    
     
    if (g_uds_ctrl.security_state != UDS_SECURITY_UNLOCKED)
    {
        (void)0;

        uds_send_negative_response(0, data[0], 0x33);
        return;
    }
     
    
    if (!uds_dl_is_registered())
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x22);
        return;
    }
    
    if (len < 2)
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x13);
        return;
    }
    
    uint8_t block_seq = data[1];
    uint16_t data_len = len - 2;
    
    (void)0;
    
    const uds_dl_if_t* dl = uds_dl_get_if();
    uds_dl_result_t dl_result = dl->on_transfer_data(block_seq, &data[2], data_len);
    
    if (dl_result != UDS_DL_OK)
    {
        uint8_t nrc = uds_map_dl_result_to_nrc(dl_result);
        (void)0;
        uds_send_negative_response(0, data[0], nrc);
        return;
    }
    
     
    if (dl->is_pending())
    {
        (void)0;
        uds_send_response_pending(0, data[0]);
        return;
    }
    
    resp[0] = 0x76;
    resp[1] = block_seq;
    *resp_len = 2;
    (void)0;
}

 
static void uds_handle_request_transfer_exit(uint8_t* data, uint8_t len, uint8_t* resp, uint8_t* resp_len)
{
    (void)0;
    
     
     
    if (g_uds_ctrl.session_mode != UDS_SESSION_PROGRAMMING_MODE)
    {
        (void)0;

        uds_send_negative_response(0, data[0], 0x7F);
        return;
    }
    
     
    if (g_uds_ctrl.security_state != UDS_SECURITY_UNLOCKED)
    {
        (void)0;

        uds_send_negative_response(0, data[0], 0x33);
        return;
    }
     
    
    if (!uds_dl_is_registered())
    {
        (void)0;
        uds_send_negative_response(0, data[0], 0x22);
        return;
    }
    
    const uds_dl_if_t* dl = uds_dl_get_if();
    uds_dl_result_t dl_result = dl->on_transfer_exit();
    
    if (dl_result != UDS_DL_OK)
    {
        uint8_t nrc = uds_map_dl_result_to_nrc(dl_result);
        (void)0;
        uds_send_negative_response(0, data[0], nrc);
        return;
    }
    
     
    if (dl->is_pending())
    {
        (void)0;
        uds_send_response_pending(0, data[0]);
        return;
    }
    
    uds_send_response(0, data[0], 0, 0);
    *resp_len = 0;
    (void)0;
}

 

 
int8_t uds_receive_handler(uint8_t channel, uint32_t can_id, uint8_t* data, uint16_t len)
{
    uint8_t response_buf[128];
    uint8_t response_len = 0;
    uint8_t sid;
    
     

     
    if (can_id != 0x18DA03F1 && can_id != 0x18DBFFF0)
    {
        (void)0;

        return -1;   
    }

    
    if (data == 0 || len < 1)
    {
        (void)0;
        return -1;
    }
    
    sid = data[0];

    (void)0;


     
    uds_refresh_session_timer();
    
    (void)0;
    
     

    (void)0;



    
     
    switch (sid)
    {
        case 0x10:
            uds_handle_diagnostic_session_control(data, len, response_buf, &response_len);
            break;
            
        case 0x11:
            uds_handle_ecu_reset(data, len, response_buf, &response_len);
            break;
            
        case 0x14:
            uds_handle_clear_dtc(data, len, response_buf, &response_len);
            break;
            
        case 0x19:
            uds_handle_read_dtc_info(data, len, response_buf, &response_len);
            break;
            
        case 0x22:
            uds_handle_read_data_by_id(data, len, response_buf, &response_len);
            break;
            
        case 0x27:
            uds_handle_security_access(data, len, response_buf, &response_len);
            break;
            
        case 0x2E:
            uds_handle_write_data_by_id(data, len, response_buf, &response_len);
            break;
            
        case 0x31:
            uds_handle_routine_control(data, len, response_buf, &response_len);
            break;
            
        case 0x34:
            uds_handle_request_download(data, len, response_buf, &response_len);
            break;
            
        case 0x36:
            uds_handle_transfer_data(data, len, response_buf, &response_len);
            break;
            
        case 0x37:
            uds_handle_request_transfer_exit(data, len, response_buf, &response_len);
            break;
            
        case 0x3E:
            uds_handle_tester_present(data, len, response_buf, &response_len);
            break;
            
        default:
            (void)0;
            uds_send_negative_response(channel, sid, 0x11);
            return 0;
    }
    
     
    if (response_len > 0)
    {
        uds_send_response(channel, sid, response_buf, response_len);
    }
    
    return 0;
}

 
int8_t uds_send_response(uint8_t channel, uint8_t sid, uint8_t* data, uint8_t len)
{
    uint8_t response[128];
    uint8_t response_len;
    
    if (len > 128 - 1)
    {
        (void)0;
        return -1;
    }
    
    response[0] = sid + 0x40;   
    if (len > 0)
    {
        memcpy(&response[1], data, len);
    }
    response_len = len + 1;
    
    (void)0;
    
     
    isotp_send_message(channel, 0x18DAF103, response, response_len);
    
    return 0;
}

 
int8_t uds_send_negative_response(uint8_t channel, uint8_t sid, uint8_t nrc)
{
    uint8_t response[3];
    
    response[0] = 0x7F;   
    response[1] = sid;     
    response[2] = nrc;     
    
    (void)0;
    
    isotp_send_message(channel, 0x18DAF103, response, 3);
    
    return 0;
}

 
int8_t uds_send_response_pending(uint8_t channel, uint8_t sid)
{
    uint8_t response[3];
    
    response[0] = 0x7F;
    response[1] = sid;
    response[2] = 0x78;
    
    (void)0;
    
    isotp_send_message(channel, 0x18DAF103, response, 3);
    
    return 0;
}

 
uds_session_mode_t uds_get_session_mode(void)
{
    return g_uds_ctrl.session_mode;
}

 
uds_security_state_t uds_get_security_state(void)
{
    return g_uds_ctrl.security_state;
}

 
const char* uds_session_to_string(uds_session_mode_t session)
{
    switch (session)
    {
        case UDS_SESSION_DEFAULT_MODE:      return "DEFAULT";
        case UDS_SESSION_EXTENDED_MODE:     return "EXTENDED";
        case UDS_SESSION_PROGRAMMING_MODE:  return "PROGRAMMING";
        default:                            return "UNKNOWN";
    }
}

 
const char* uds_security_to_string(uds_security_state_t state)
{
    switch (state)
    {
        case UDS_SECURITY_LOCKED:       return "LOCKED";
        case UDS_SECURITY_SEED_SENT:    return "SEED_SENT";
        case UDS_SECURITY_UNLOCKED:     return "UNLOCKED";
        default:                        return "UNKNOWN";
    }
}
