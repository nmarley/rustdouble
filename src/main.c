#include <stdint.h>
#include <stdio.h>

extern int32_t double_input(int32_t);

int main() {
    int num = 4;
    int result = double_input(num);

    printf("%d * 2 = %d\n", num, result);
    return 0;
}
