#ifndef _PERSON_H_
#define _PERSON_H_
namespace A
{
class Person
{
private:
    char *name;
    int age;
    char *work;
public:
    Person() {}
    Person(char *name, int age, char *work = "teacher") : name(name), age(age), work(work)
    {}
    void printInfo(void);
};

void printVersion(void);
}
#endif