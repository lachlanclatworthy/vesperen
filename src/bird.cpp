#include "bird.hpp"
#include <iostream>

std::ostream &operator<<(std::ostream &out, const Bird &b) {
    out << *(b.m_name);
    return out;
}

Bird &Bird::operator=(const char *name) {
    *(this->m_name) = name;
    return *this;
}
