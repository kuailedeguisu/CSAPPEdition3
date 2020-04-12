#include "lvector.h"
#include <stdio.h>
#define LEN 10

// mac result is normal, but abnormal in linux server
#if 0
~/Study/CSAPP/CH05_Performence$ uname -a
Linux seroiuvd07659.sero.gic.ericsson.se 3.10.0-957.12.2.el7.x86_64 #1 SMP Fri Apr 19 21:09:07 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
#endif

int main()
{   
    vec_ptr vecptr = new_vec(LEN);
    data_t data[] = {12, 45, 78, 32, 65, 98};
    // data_t data[] = {12, 45, 78, 32};
    set_vec(vecptr, LEN, data);
    data_t dest;
    printf("get_vec_element=%d\n", get_vec_element(vecptr, 1, &dest));
    printf("dest=%ld\n", dest);
    printf("vec_length=%ld\n", vec_length(vecptr));
    data_t result1;
    combine1(vecptr, &result1);
    printf("result1=%ld\n", result1);
    data_t result2;
    combine2(vecptr, &result2);
    printf("result2=%ld\n", result2);
    data_t result3;
    combine3(vecptr, &result3);
    printf("result3=%ld\n", result3);
    data_t result4;
    combine4(vecptr, &result4);
    printf("result4=%ld\n", result4);
    data_t result5;
    combine5(vecptr, &result5);
    printf("result5=%ld\n", result5);
    data_t result6;
    combine6(vecptr, &result6);
    printf("result6=%ld\n", result6);
    data_t result7;
    combine7(vecptr, &result7);
    printf("result7=%ld\n", result7);
    data_t result8;
    combine8(vecptr, &result8);
    printf("result8=%ld\n", result8);
    return 0;
}
#if 0
chunhongliu-MacBook-Air:CH05_Performance chunhongliu$ gcc -o lvectortest lvectortest.c lvector.c
chunhongliu-MacBook-Air:CH05_Performance chunhongliu$ ./lvectortest 
1
dest=45
10
-8178381865229877248
#endif