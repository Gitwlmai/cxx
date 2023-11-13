#include <stdio.h>

struct person 
{
    char *name;
    int age;
    char *work;
    void (*printInfo)(struct person *p);
};

void printInfo(struct person *p)
{
    printf("name = %s, age = %d, work = %s \n", p->name, p->age, p->work);
}

int main(int argc, char **argv)
{
    struct person persons[2] =
    {
        {"zhangsan", 20, "teacher", printInfo},
        {"lisi", 30, "doctor", printInfo}
    };

    persons[0].printInfo(&persons[0]);
    persons[1].printInfo(&persons[1]);
    
    return 0;
}