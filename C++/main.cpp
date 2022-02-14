#include <iostream>

using namespace std;

int calculate(int);

int main(void) {
    int inputNumber, outputNumber;
    cin >> inputNumber;
    outputNumber = calculate(inputNumber);
    cout << outputNumber << endl;
    return 0;
}

int calculate(int param) {
    int updatedParam = param + 12;
    updatedParam *= updatedParam;
    updatedParam -= 12;
    return updatedParam;
}
