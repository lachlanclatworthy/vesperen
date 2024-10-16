/* main.cpp */

#include "callout.hpp"
#include "socketed.h"

int main() {
    for (int i = 0; i < 10; i++) {
        callTheBirds(i);
    }

    return 0;
}
