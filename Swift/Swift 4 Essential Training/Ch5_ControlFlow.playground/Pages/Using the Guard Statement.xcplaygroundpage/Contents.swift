/*:
 # Using the GUARD Statement
 ---
 
 ## Topic Essentials
 
 Guard statements in Swift act like gate keepers. Code execution can only get past them if their condition is true, otherwise the else statement that every guard statement has to have will execute.
 
 Guard statements are great for setting up requirements in your code, making sure you don’t have unforeseen errors down the line.

 
 ### Objectives
 + Create a dictionary called **shopItems** and fill it with a few key-value pairs
 + Create a variable called **currentGold** and assign it a value of 16
 + Use a for loop to iterate over **shopItems**
 + Inside the for loop use a `guard` statement to check if you have enough gold to purchase each item
 + Write a simple function with a `guard` statement inside that checks if a given item is in **shopItems**
 */
// Test variables
let shopItems: Dictionary<String, Int> = ["Magic Wand":10, "Iron Helm":5, "Excalibur":1000]
let currentGold: Int = 20

// Guard statement with for-in loop
for (item, price) in shopItems {
    guard currentGold >= price else {
        print("You can't afford the \(item)")
        continue
    }
    print("Go ahead, the \(item) is yours for \(price) gold!")
}

// Guard check for specific item
func itemLookUp(itemImLookingFor: String) {
    guard let foundItemValue = shopItems[itemImLookingFor] else {
        print("Sorry, we're out of the \(itemImLookingFor)")
        return
    }
    
    print("Yes, we have an \(itemImLookingFor) in stock for \(foundItemValue)")
}

itemLookUp(itemImLookingFor: "Ocarina")
itemLookUp(itemImLookingFor: "Iron Helm")
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
