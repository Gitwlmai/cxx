#include <iostream>

using namespace std;

int my_add(int a, int b)
{
    cout<<"add(int, int)"<<endl;
    return a + b;
}

int my_add(int a, int b, int c)
{
    cout<<"add(int, int, int)"<<endl;
    return a + b + c;
}

double my_add(double a, double b)
{
    cout<<"add(double, double)"<<endl;
    return a + b;
}

double my_add(int a, double b)
{
    cout<<"add(int, double)"<<endl;
    return a + b;
}

double my_add(double a, int b)
{
    cout<<"add(double, int)"<<endl;
    return a + b;
}

int main(int argc, char **argv)
{
    my_add(1, 2);
    my_add(1, 2, 3);
    my_add(3.0, 4.0);
    my_add(1, 2.0);
    my_add(2.0, 1);
    
    return 0;
}