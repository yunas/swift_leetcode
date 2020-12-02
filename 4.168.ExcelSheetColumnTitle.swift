//let nums = [1,2,3,4]

class Solution {
	func getChar(_ num:Int)-> String{
		var remainder = num % 26
		if (remainder == 0){
			remainder += 26
		}
		remainder += 64
		let s = String(UnicodeScalar(UInt8(remainder)))
		return s
	}

	func getExcelColumn(_ numm:Int) -> String {
		var num = numm
		var col:String = ""	
		var tmpNum = num
		repeat {
			col = getChar(num) + col
			tmpNum = num
			if (num % 26 == 0){
				num = num-1
			}
			num = num/26
		} while tmpNum > 26
		return col
	}
	
	func getExcelColumnOptimized(_ numm:Int) -> String {
		var num = numm
		var col:String = ""	
		var remainder:Int = 0
		while num > 0 {
			
			remainder = num % 26
			if (remainder == 0){
				remainder += 26
				num = num/26 - 1
			}
			else{
				num = num/26
			}
			
			remainder += 64
			let s = String(UnicodeScalar(UInt8(remainder)))
			col =  s + col
		} 
		return col
	}


	
}

//Write a function that accepts an integer and returns the appropriate Excel Sheet column name

// Forexample:
//# 1 => A
//# 26 => Z
//# 27 => AA
//# 28 => AB
//# 52 => AZ
//# 53 => BA
//# 78 => BZ 
//# 702 => ZZ
//# 703 => AAA
//# 18278 => ZZZ
//# 18279 => AAAA


var sol = Solution()
var num = 18278
let output = sol.getExcelColumnOptimized(num)
//let number = 65
print(output)
