#include <stdio.h>

class Person 
{
private:
    char *name;
    int age;
    char *work;
public:
    Person() 
    {}
    Person(char *name, int age, char *work = "doctor") : name(name), age(age), work(work) 
    {}
    void printInfo(void);
};

void Person::printInfo(void)
{
    printf("name = %s, age = %d, work = %s \n", name, age, work);
}

int main(int argc, char **argv)
{
    Person per("zhangsan", 40);
    per.printInfo();
    
    return 0;
}