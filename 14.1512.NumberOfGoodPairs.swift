class Solution {
	func numIdenticalPairs(_ nums: [Int]) -> Int {
		var count = 0
		let arrCount = nums.count
		for i in 0..<arrCount{
			for j in i+1..<arrCount{
				if nums[i] == nums[j]{
					count += 1	
				}
			}
		}
		return count   
	}
}


var sol = Solution()
//let nums = [1,2,3,1,1,3]
//let nums = [1,1,1,1]
let nums = [1,2,3]
let sumNums = sol.numIdenticalPairs(nums)
print(sumNums)