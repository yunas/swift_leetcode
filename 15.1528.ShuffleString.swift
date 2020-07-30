//Given a string s and an integer array indices of the same length.
//The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.
//Return the shuffled string.

extension String {
	subscript(i: Int) -> String {
		return String(self[index(startIndex, offsetBy: i)])
	}
}

//class Solution {
//	func restoreString(_ s: String, _ indices: [Int]) -> String {
//		
//	}
//}


//var sol = Solution()
let indices = [4,5,6,7,0,2,1,3]
var str = "codeleet"
let character = "o" as Character


//let count = str.length
//for i in 0...count {
//str.insert("(", at: 0)
//}
//
//str.insert(
//	character, at:
//	str.index(str.startIndex, offsetBy: 0)
//)
//

//str.replace(at:0, with: "B")
//let newString = aString.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)

print(str)

//let nums = [2,5,1,3], n = 3
//let nums = [2,5], n = 3
//print(sol.restoreString(nums,n))