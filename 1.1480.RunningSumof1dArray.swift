//let nums = [1,2,3,4]

class Solution {
	func runningSum(_ nums: [Int]) -> [Int] {
		var sumAtIndex = 0
		var sumNums = [Int]()
		for num in nums {
			sumAtIndex += num
			sumNums.append(sumAtIndex)
		//	print("Hello, \(sumAtIndex)!")
		}	
		return sumNums
	}
}


var sol = Solution()
let nums = [1,1,1,1,1]
let sumNums = sol.runningSum(nums)
print(sumNums)