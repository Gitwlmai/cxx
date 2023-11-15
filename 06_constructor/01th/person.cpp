#include <iostream>
#include <string.h>

using namespace std;

class Person
{
private:
    char *name;
    int age;
    char *work;

public:
    Person() 
    {
        this->name = NULL;
        this->work = NULL;
        cout<<"Person()"<<endl;
    }

    Person(char *name, int age, char *work = "none")
    {
        this->name = new char[strlen(name) + 1];
        strcpy(this->name, name);

        this->work = new char[strlen(work) + 1];
        strcpy(this->work, work);

        this->age = age;
        cout<<"Person(char *name, int age, char *work = \"none\")"<<endl;
    }

    ~Person()
    {
        cout<<"~Person()"<<endl;
        if(this->name)
        {
            cout<<"delete this->name"<<this->name<<endl;
            delete []this->name;
        }

        if(this->work)
        {
            cout<<"delete this->work"<<this->work<<endl;
            delete []this->work;
        }
    }

    void printInfo(void)
    {
        cout<<"name: "<<this->name<<" work: "<<this->work<<" age: "<<this->age<<endl;
    }
};


int main(int argc, char **argv)
{
    Person per1;
    Person per2("zhangsan", 20);
    Person per3("lisi", 30, "it");
    Person *per4 = new Person("wangwu", 40, "doctor");
    Person *per5 = new Person[2]{{"zhengliu", 50, "teacher"}, {"zhaoqi", 60, "leader"}};

    per2.printInfo();
    per3.printInfo();
    per4->printInfo();
    per5[0].printInfo();
    per5[1].printInfo();

    delete per4;
    delete []per5;

    return 0;
}
