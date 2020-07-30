func functionParamsNaming(number n:Int)->Bool{
	var output = false
	print(n)
	let data : [Character] = ["A","B"] //not initiazed but its an array
	let data2 = [Character](["A","B"]) //Initialized an empty Array
	
	return output
}


//print(functionParamsNaming(number:121))

protocol Employee {
	var annualSalary: Int {get}
//	func logSalary()
}

extension Employee {
	var biweeklySalary: Int {
		return self.annualSalary / 26
	}

	func logSalary() {
		print("$\(self.annualSalary) per year or $\(self.biweeklySalary) biweekly")
	}
}

struct SoftwareEngineer: Employee {
	var annualSalary: Int

	func logSalary() {
		print("overridden")
	}
}

let sarah = SoftwareEngineer(annualSalary: 100000)
sarah.logSalary() // prints: overridden
//print(sarah.biweeklySalary)
(sarah as Employee).logSalary() // prints: $100000 per year or $3846 biweekly



func someMethod(char: Character) -> Bool {
	
	print (char)
	return true
}


let aScalars = "a".unicodeScalars
let aCode = aScalars[aScalars.startIndex].value

//let letters: [Character] = (0..<26).map {
//	i in Character(UnicodeScalar(aCode + i))
//}


let char1: Character = "A"

someMethod(char: char1)

