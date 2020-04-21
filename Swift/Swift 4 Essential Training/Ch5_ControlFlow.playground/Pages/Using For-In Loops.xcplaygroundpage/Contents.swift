/*:
 # Using FOR-IN Loops
 ---
 
 ## Topic Essentials
 For-in loops are used primarily to iterate, or loop through, sequences. Sequences can be array items, dictionary key-value pairs, ranges, and even characters in a string.
 
 ### Objectives
 + Create an array called **armorTypes** and fill it with string values
 + Create a string variable called **playerGreeting** and assign it a string literal
 + Use a for-in loop to iterate over a range or index
 */
// Test variables
var armorTypes = ["Heavy Plate", "Hunters Gear", "Mage Robes"]
var playerGreeting = "Hello fellow Hunter!"

// Array iteration
for armor in armorTypes {
    print(armor)
}

// String iteration
for char in playerGreeting {
    print(char)
}

// Range iteration
let hitCount = 5
for itemNumber in 1..<hitCount {
    print(itemNumber)
}

for itemNumber in 1...5 {
    print(itemNumber)
}
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
