#include<iostream>
using namespace std;
class person{
	public :
		string name;
		int age;
		
};
class student : public person{
	public :
		int rollno;
};
class teacher :public student{
	public :
		string subject;
};
int main()
{
	teacher t1;
	t1.name = "umesh";
	t1.age = 22;
	t1.rollno = 1;
	t1.subject = "c++";
	
	cout<<"your name :"<<t1.name<<endl;
	cout<<"your age:"<<t1.age<<endl;
	cout<<"your rollno :"<<t1.rollno<<endl;
	cout<<"subject :"<<t1.subject<<endl;
	
	
	
}
