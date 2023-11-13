#ifndef _DOG_H_
#define _DOG_H_
namespace C
{
class Dog
{
private:
    char *name;
    int age;
public:
    Dog() {}
    Dog(char *name, int age) : name(name), age(age)
    {}
    void printInfo(void);
};

void printVersion(void);

}

#endif