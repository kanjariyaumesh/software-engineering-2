#include<iostream>
using namespace std;
int fact(int n);
int main()
{
	int n;
	
	cout<<"enter a number :";
	cin>>n;
	
	cout<<fact(n);
	
}
int fact(int n)
{
	if(n == 0)
	{
		return 1;
	}
	int factnm1 = fact(n-1);
	int factn = factnm1 * n;
	 
	 return factn;
}

