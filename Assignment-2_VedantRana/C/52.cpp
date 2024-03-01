#include <bits/stdc++.h>
using namespace std;

int maxCircularSum(int a[], int n)
{
	if (n == 1)
		return a[0];

	int sum = 0;
	for (int i = 0; i < n; i++) {
		sum += a[i];
	}

	int curr_max = a[0], max_so_far = a[0], curr_min = a[0], min_so_far = a[0];

	for (int i = 1; i < n; i++) {
		curr_max = max(curr_max + a[i], a[i]);
		max_so_far = max(max_so_far, curr_max);

		curr_min = min(curr_min + a[i], a[i]);
		min_so_far = min(min_so_far, curr_min);
	}

	if (min_so_far == sum)
		return max_so_far;

	return max(max_so_far, sum - min_so_far);
}

int main()
{
	int a[] = { 11, 10, -20, 5, -3, -5, 8, -13, 10 };
	int n = sizeof(a) / sizeof(a[0]);
	cout << "Maximum circular sum is " << maxCircularSum(a, n) << endl;
	return 0;
}
