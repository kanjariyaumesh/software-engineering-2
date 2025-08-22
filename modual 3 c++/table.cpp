#include<iostream>
using namespace std;
int main()
{
	int num,table;
	
	cout<<"enter a num to print table"<<endl;
	cin>>num;
	
	
	for(int i = 1; i<=10; i++)
	{
		table = num*i;
		
		cout<<num<<"*"<<i<<"="<<table<<endl;
	}
	
}
