#include <iostream>

void add_one(int *p)
{
    *p = *p + 1;
}

void add_one(int &p)
{
    p = p + 1;
}


int main(int argc, char **argv)
{
    int a = 10;
    add_one(&a);
    std::cout<<"a = "<<a<<std::endl;
    add_one(a);
    std::cout<<"a = "<<a<<std::endl;
    return 0;
}