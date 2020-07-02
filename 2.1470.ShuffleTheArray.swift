//Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].
//Return the array in the form [x1,y1,x2,y2,...,xn,yn].
//Example :
//Input: nums = [2,5,1,3,4,7], n = 3
//Output: [2,3,5,4,1,7] 
//Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7].


class Solution {
	func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
		var shuffledArray = [Int]()
		let count = nums.count/2 - 1
		for num in 0...count {
			shuffledArray.insert(nums[num], at: 2*num)
			shuffledArray.insert(nums[n+num], at: 2*num+1)			
		}	
		return shuffledArray
	}
	
	 func shuffle(_ nums: [Int]) -> [Int] {
		var shuffledArray = [Int]()
		let count = nums.count/2 - 1
		for num in 0...count {
			shuffledArray.insert(nums[num], at: 2*num)
			shuffledArray.insert(nums[count+num+1], at: 2*num+1)			
		}	
		return shuffledArray
	}
}


var sol = Solution()
let nums = [2,5,1,3,4,7], n = 3
//let nums = [2,5,1,3], n = 3
//let nums = [2,5], n = 3
print(sol.shuffle(nums,n))