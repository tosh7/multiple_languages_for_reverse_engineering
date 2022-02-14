# C

## Compile
SourceCode is compile with below command.

```
$ gcc main.c
$ ./a.out
```
## File
This project need just one input number, then somehow culculate and output a new number. For more detail, check [here](https://github.com/tosh7/multiple_languages_for_reverse_engineering/blob/main/C/main.c).  
If the attacker find how to culculate output value, attacker win.

## Results
_main
```
int _main() {
    printf("Input a number then output a culculated number.\n");
    stack[-48] = &saved_fp - 0x8;
    scanf("%d");
    stack[-48] = _culculator(var_8);
    printf("%d\n", r1);
    return 0x0;
}
```

_culculate
```
int _culculator(int arg0) {
    r0 = arg0 + 0xa;
    return r0;
}
```

Since prefix is 0x, 0xa is a hexadecimal. This means 0xa is 10 in decimal number.