/*:
 # Basic Functions
 ---
 
 ## Topic Essentials
 Functions are blocks of code that we can define and call by name to perform whatever tasks we’ve coded into them. Functions can have parameters, which you can think of as inputs, and return values, which you can think of as output.
 
 ### Objectives
 + Create a simple function called **saluteHunter** that prints out a string
 + Create a function called **findNearestFriend** with a return type and have it return a string
 + Create a function called **equipItems** with a parameter and return type
 */
// Basic function - no parameter or return type
func saluteHunter() {
    print("Hello there intrepid Hunter!")
}

saluteHunter()

// Basic function with return type - no paramaters
func findNearestHunter() -> String {
    return "Argus"
}

var nearMe = findNearestHunter()

// Basic function with return type and parameter
func equipItems(armor: String) -> Bool {
    print("\(armor) equipped")
    return true
}

equipItems(armor: "Demon Vest")
//: [Next Topic](@next)
