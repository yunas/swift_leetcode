//Given an integer number n, return the difference between the product of its digits and the sum of its digits.
// 
//
//Example 1:
//
//Input: n = 234
//Output: 15 
//Explanation: 
//Product of digits = 2 * 3 * 4 = 24 
//Sum of digits = 2 + 3 + 4 = 9 
//Result = 24 - 9 = 15
//Example 2:
//
//Input: n = 4421
//Output: 21
//Explanation: 
//Product of digits = 4 * 4 * 2 * 1 = 32 
//Sum of digits = 4 + 4 + 2 + 1 = 11 
//Result = 32 - 11 = 21
// 
//
//Constraints:
//
//1 <= n <= 10^5


class Solution {
	func subtractProductAndSum(_ n: Int) -> Int {
		var output = 0
		var tmp = n
		var sum = 0
		var prd = 1
		while (tmp > 0)
		{
			let rem = tmp % 10
			sum += rem
			prd *= rem
			tmp /= 10
		}
		
		output = prd - sum
		return output
	}
}




var sol = Solution()
//let n = 234 //Output: 15 
let n = 4421 //Output: 21

let sumNums = sol.subtractProductAndSum(n)
print(sumNums)