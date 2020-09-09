#include "hexdump.hh"
#include <ctime>
#include <iostream>

struct example {
    int x;  // offset 0
    char z; // offset 4
    int a;
    char w; // offset 5
    char b;
    int c;
    int y; // 6 mod 4 is not 0, so we need to add padding to respect alignment
};

int main() {
    example e;
    //memset(&e, 0, sizeof())
    e.x = 61;
    e.y = 62;
    e.a = 51;
    e.b = 50;
    e.c = 70;
    e.z = 63;
    e.w = 64;
    //std::cout << alignof(char) << std::endl;
    hexdump_object(e); //there is padding for the two bytes at the end?
}
