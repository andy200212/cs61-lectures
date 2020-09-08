#include "hexdump.hh"
#include <ctime>

int main() {
    int a[4];
    // homogenous collection: all elements are of the same type
    // this is different from a struct which is a heterogenous set
    a[0] = 61;
    a[1] = 62;
    a[2] = 63;
    a[3] = 64;

    hexdump_object(a);
    //note that there are symbols that correspond to each of the numbers
}
