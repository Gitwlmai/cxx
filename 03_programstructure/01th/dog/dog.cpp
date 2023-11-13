#include <iostream>
#include "dog.h"

using namespace std;

namespace C
{

void Dog::printInfo(void)
{
    cout<<"name: "<<name<<" age: "<<age<<endl;
}

void printVersion(void)
{
    cout<<"this is dog ver"<<endl;
}

}