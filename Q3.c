
int main()
{
  int i, Number = 1, count; 
  int prime;
  
  while(Number <= 100)
  {
    count = 0;
    i = 2;
    while(i <= Number/2)
    {
      if(Number%i == 0)
      {
        count++;
	      break;
      }
      i++;	
    }	
    if(count == 0 && Number != 1 )
    {
	    prime = Number;
    }
    Number++; 
  }

  return 0;
}