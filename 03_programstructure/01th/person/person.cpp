#include <iostream>
#include "person.h"

using namespace std;

namespace A
{

void Person::printInfo(void)
{
    cout<<"name: "<<name<<" age: "<<age<<" work: "<<work<<endl;
}

void printVersion(void)
{
    cout<<"this is person ver"<<endl;
}

}