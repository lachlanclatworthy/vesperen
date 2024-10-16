/* callout.cpp */

#include "callout.hpp"
#include "bird.hpp"
#include <iostream>

void callout(const size_t count) {
    using namespace std;
    for (int i = 0; i < count; i++)
        cout << "Go Vesperen!" << endl;
}

void callTheBirds(const size_t count) {
    // Don't do macros, kids. They'll rot your teeth.

#define SOME_MACRO_WHAT_BE_TRUTHFUL ((0xFF & (3 << 2)) == 0x0C)
#define SOME_MACRO_WHAT_BE_MISTAKEN ((0xFF & (1 << 2)) == 0x08) // Off by one...

    auto bird = Bird("Eagle");

#if SOME_MACRO_WHAT_BE_TRUTHFUL
    bird = "Shoebill";
#elif SOME_MACRO_WHAT_BE_MISTAKEN
    bird = "Vulture";
#endif

    std::cout << "There, over yonder be a hearty " << bird << std::endl;
    switch (count) {
    case 0:
        std::cout << "Wait, no. Just the clouds..." << std::endl;
        break;
    case 1:
        std::cout << "What a lonesome " << bird << " it is..." << std::endl;
        break;
    default:
        std::cout << "In fact, there are " << count << "! How nice."
                  << std::endl;
    }
}
