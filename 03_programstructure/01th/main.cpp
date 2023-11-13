#include <iostream>
#include "dog.h"
#include "person.h"

using namespace A;
using namespace C;

int main(int argc, char **argv)
{
    Person per("zhangsan", 40);
    Dog dog("wangcai", 10);

    per.printInfo();
    dog.printInfo();

    A::printVersion();
    C::printVersion();

    return 0;
}