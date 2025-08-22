#include<iostream>
using namespace std;
class arithmetic
{
	public :
	int add(int a ,int b)
	{
       int add = a + b;
	}
	int sub(int a ,int b)
	{
       int sub = a - b;
	}
	int mul(int a ,int b)
	{
       int mul = a * b;
	}
	int div(int a ,int b)
	{
       int div = a / b;
	}
	
};
int main()
{
	int a,b;
	
	cout<<"enter a  1 number :";
	cin>>a;
	cout<<"enter a  2 number :";
	cin>>b;
	
	arithmetic a1;
	cout<<"sum is :"<<a1.add(a,b)<<endl;
	cout<<"sub is :"<<a1.sub(a,b)<<endl;
	cout<<"mul is :"<<a1.mul(a,b)<<endl;
	cout<<"div is :"<<a1.div(a,b)<<endl;
	return 0;
}
