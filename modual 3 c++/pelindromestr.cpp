#include<iostream>
using namespace std;
int main()
{
	string str;
	
	cout<<"enter a string :";
	cin>>str;
	
	int start = 0;
	int end = str.length() - 1;
	bool ispelindrome = true;
	
	while(start < end)
	{
		if (str[start] != str[end])
		{
			ispelindrome = false;
			break;
		}
		start++;
		end--;
	}
	if (ispelindrome)
	{
		cout<<str<<" is a pelindrome"<<endl;
	}
	else
	{
		cout<<str<<" is not a pelindrome"<<end;
		return 0;
	}
}
