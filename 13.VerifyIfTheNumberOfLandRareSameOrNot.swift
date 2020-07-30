import Foundation

// Problem Statement 
// Given a string with "LRLRLRLRLR" you have to determine
// if the number of L or //R are equal or not. if they are equal return true else return false.

// Constraint we cannot have extra variables to count, you may use some data structure preferably Stack.

class Stack {
	
	var items = [Character]()
	
	func push(char: Character) {
		items.append(char)
	}
	
	func pop() -> Character {
		return items.removeLast()
	}
	
	func isEmpty() -> Bool{
		return (items.count == 0) ? true : false
	}
	
	func top()-> Character{
		return items[items.count - 1]
	}
	
	
}

let myString = "LRLRRLLLLLRRRR"
// let myString = "LLLLL"

var stack = Stack()



var index = 0
for char in myString {
	if (stack.isEmpty() || (char == stack.top())){
		stack.push(char: char)
	}
	else{
		stack.pop()	
	}
}

if stack.isEmpty(){
	print("Equal")
}
else{
	print("Not Equal")
}


