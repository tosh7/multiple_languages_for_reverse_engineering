#include <stdio.h>

int main(void);
int culculator(int);

int main(void) {
    int inputNumber, outputNumber;
    printf("Input a number then output a culculated number.\n");
    scanf("%d", &inputNumber);
    outputNumber = culculator(inputNumber);
    printf("%d\n", outputNumber);
    return 0;
}

int culculator(int param) {
    return param + 10;
}
