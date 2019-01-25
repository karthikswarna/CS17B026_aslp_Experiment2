#include<stdbool.h>

bool isprime(int n)
{
	if (n <= 1)  
		return false; 
  
    for (int i = 2; i < n; i++) 
        if (n%i == 0) 
            return false; 
  
    return true; 
}

int main(int argc, char const *argv[])
{
	int n = 12;
	int n1 = n;
	int n2 = n;
	int i = 1;


	if(isprime(n))
	{
		while(n1%2 == 0 || n2%2 == 0)
		{
			n1 = n - i;
			n2 = n + i;
			i++;
		}

		if(n1%2 == 0)
			n = n1;
		else if(n2%2 == 0)
			n = n2;
	}

	else
	{
		switch (n%2)
		{
			case 0:
			n = n +1;
			break;

			case 1:
			while(isprime(n1) || isprime(n2))
			{
				n1 = n - i;
				n2 = n + i;
				i++;
			}

			if(isprime(n1))
				n = n1;
			else if(isprime(n2))
				n = n2;
			break;
		}
	}
	
	return 0;
}



