//Given an array nums of integers, return how many of them contain an even number of digits.
// 
//
//Example 1:
//
//Input: nums = [12,345,2,6,7896]
//Output: 2
//Explanation: 
//12 contains 2 digits (even number of digits). 
//345 contains 3 digits (odd number of digits). 
//2 contains 1 digit (odd number of digits). 
//6 contains 1 digit (odd number of digits). 
//7896 contains 4 digits (even number of digits). 
//Therefore only 12 and 7896 contain an even number of digits.
//Example 2:
//
//Input: nums = [555,901,482,1771]
//Output: 1 
//Explanation: 
//Only 1771 contains an even number of digits.
// 
//
//Constraints:
//
//1 <= nums.length <= 500
//1 <= nums[i] <= 10^5




class Solution {
	func isEvenNumberOfDigits(_ num: Int) -> Bool {
		var tmpNum = num
		var digitsCount = 0
		while tmpNum > 0{
			digitsCount += 1
			tmpNum /= 10
		}	
		return (digitsCount % 2 == 0) ? true : false
	}
	
	func findNumbers(_ nums: [Int]) -> Int {
		var output = 0
		for i in 0..<nums.count{
			if(isEvenNumberOfDigits(nums[i])){
				output += 1
			}
		}	
		return output
	}
}


var sol = Solution()
//let nums = [12,345,2,6,7896] //Output: 2
let nums = [555,901,482,1771] //Output: 1 

let output = sol.findNumbers(nums)
print(output)



var mystring = "LRLR"
for char in mystring{
print (char)
}