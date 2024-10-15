/* callout.cpp */

#include "callout.hpp"
#include <boost/asio.hpp>
#include <iostream>

void callout(const int count) {
    using namespace std;
    for (int i = 0; i < count; i++)
        cout << "Go Vesperen!" << endl;
}
