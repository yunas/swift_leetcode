//Given an integer n and an integer start.
//
//Define an array nums where nums[i] = start + 2*i (0-indexed) and n == nums.length.
//
//Return the bitwise XOR of all elements of nums.
//
// 
//
//Example 1:
//
//Input: n = 5, start = 0
//Output: 8
//Explanation: Array nums is equal to [0, 2, 4, 6, 8] where (0 ^ 2 ^ 4 ^ 6 ^ 8) = 8.
//Where "^" corresponds to bitwise XOR operator.



class Solution {
	func xorOperation(_ n: Int, _ start: Int) -> Int {
		var output = 0
		
		for i in 0..<n{
			output = output ^ ( start + (2 * i) )
		}
		return output			
	}
		
}


var sol = Solution()
//let n = 5, start = 0 // output:8
//let n = 1, start = 7 // output:7
//let  n = 4, start = 3 // output:8
let n = 10, start = 5  // Output: 2
let output = sol.xorOperation(n,start)
print(output)