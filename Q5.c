int main(int argc, char const *argv[])
{
	int m1[3][3] = {{2, 4, 6}, {8, 7, 9}, {12, 14, 17}};
	int m2[3][3] = {{1, 2, 3}, {23, 10, 20}, {16, 18, 4}};

	for(int i = 0; i<3; i++)
	{
		for(int j = 0; j<3; j++)
		{
			m1[i][j] = m1[i][j] + m2[i][j];
		}
	}
	
	return 0;
}