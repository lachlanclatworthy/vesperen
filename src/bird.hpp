#ifndef BIRD_H
#define BIRD_H

#include <iostream>
#include <string>

class Bird {
    std::string *m_name;

  public:
    Bird(std::string name) : m_name(new std::string(name)) {}
    ~Bird() { delete m_name; }

    friend std::ostream &operator<<(std::ostream &, const Bird &);

    Bird &operator=(const char *);
};

std::ostream &operator<<(std::ostream &, const Bird &);

#endif // BIRD_H
