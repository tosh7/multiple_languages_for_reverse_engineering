# C++

## Compile
SourceCode is compile with below command.

```
$ g++ main.cpp
$ ./a.out
```

## File
This project need just one input number, then somehow culculate and output a new number. For more detail, check [here](https://github.com/tosh7/multiple_languages_for_reverse_engineering/blob/main/C%2B%2B/main.cpp).  
If the attacker find how to culculate output value, attacker win.

## Results
_main
```
int _main() {
    std::__1::basic_istream<char, std::__1::char_traits<char> >::operator>>();
    calculate(var_8);
    std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<());
    return 0x0;
}
```

caluclate(int)
```
int __Z9calculatei(int arg0) {
    r0 = (arg0 + 0xc) * (arg0 + 0xc) - 0xc;
    return r0;
}
```
Since prefix is 0x, 0xc is a hexadecimal. This means 0xc is 12 in decimal number. Finally attacker found out what caluclate method does.