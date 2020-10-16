#include <iostream>

int func(){
    short x = 0;
    int count = 0;
    while(x < 100){
        count++;
        x += 1;
        x = x << 1;
    }
    return count;
}

int main(){
    int y = func();
    std::cout << y << std::endl;
}
