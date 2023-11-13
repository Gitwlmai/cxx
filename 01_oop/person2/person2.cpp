#include <stdio.h>

class Person 
{
public:
    char *name;
    int age;
    char *work;
public:
    void printInfo(void);
};

void Person::printInfo(void)
{
    printf("name = %s, age = %d, work = %s \n", name, age, work);
}

int main(int argc, char **argv)
{
    Person persons[2] =
    {
        {"zhangsan", 20, "teacher"},
        {"lisi", 30, "doctor"}
    };

    persons[0].printInfo();
    persons[1].printInfo();
    
    return 0;
}