//Balanced strings are those who have equal quantity of 'L' and 'R' characters.
//
//Given a balanced string s split it in the maximum amount of balanced strings.
//
//Return the maximum amount of splitted balanced strings.
//
// 
//
//Example 1:
//
//Input: s = "RLRRLLRLRL"
//Output: 4
//Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.
//Example 2:
//
//Input: s = "RLLLLRRRLR"
//Output: 3
//Explanation: s can be split into "RL", "LLLRRR", "LR", each substring contains same number of 'L' and 'R'.
//Example 3:
//
//Input: s = "LLLLRRRR"
//Output: 1
//Explanation: s can be split into "LLLLRRRR".
//Example 4:
//
//Input: s = "RLRRRLLRLL"
//Output: 2
//Explanation: s can be split into "RL", "RRRLLRLL", since each substring contains an equal number of 'L' and 'R'
// 
//
//Constraints:
//
//1 <= s.length <= 1000
//s[i] = 'L' or 'R'


class Solution {
	func balancedStringSplit(_ s: String) -> Int {
		var output = 0
		let count = s.count
		var delimeter:String = ""
		var pairLength = 0
		for i in 0..<count{
			let index = s.index(s.startIndex, offsetBy: i)
			let sAtIndex = String(s[index])    // "S"
			
			if (pairLength == 0){
				delimeter = sAtIndex
			}
			
			if(sAtIndex == delimeter){
				pairLength += 1
			}
			else{
				pairLength -= 1
			}
			if(pairLength == 0){
				output += 1
			}
		}
//			
		return output
	}
	
	func balancedStringSplitOptimized (_ s:String) -> Int{
		var output = 0
		var balance = 0
		for c in s{
			balance += (c == "L") ? 1 : -1
			if(balance == 0){
				output += 1
			}
		}
		return output
	}
}


var sol = Solution()
//let s = "RLRRLLRLRL" //Output: 4
//let s = "RLLLLRRRLR" //Output: 3
//let s = "LLLLRRRR" //Output: 1
let s = "RLRRRLLRLL" //Output: 2

let output = sol.balancedStringSplitOptimized(s)
print(output)


//let string = "Hi there! It's nice to meet you!"
//let startIndex = 10 // random for this example
//let endIndex = string.count
//
//let start = String.Index(utf16Offset:0, in: string)
//let end = String.Index(utf16Offset:1, in: string)
//
//let substring = String(string[start..<end])
//print(substring)
//let str = "ABCDEFGHIJKLMNOOPQR"
//let index = str.index(str.startIndex, offsetBy: 0)

//print(str[index])    // "S"
