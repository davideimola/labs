/*:
 # Swift Dictionaries
 ---
 
 ## Topic Essentials
 Like arrays, dictionaries are collection types, but instead of holding single values accessed by indexes, they hold **key-value** pairs. All keys need to be of the same type, and the same goes for values. It's important to know that dictionary items are **unordered**, and their values are accessed with their associated keys.
 
 ### Objectives
 + Create a few empty dictionaries with different syntax
 + Create a dictionary called **blacksmithShopItems** and fill it with a few items
 + Use the `count` and `isEmpty` methods
 + Access all the keys and values of **blacksmithShopItems**
 + Iterate over **blacksmithShopItems** and print out its values and keys
 */
// Creating dictionaries
var emptyDictionary: Dictionary<Int, Int> = [:]
var emptyDictionary2 = Dictionary<Int, String>()
var emptyDictionary3 = [String: String]()
var emptyDictionary4: [String : String] = [:]

var blacksmithShop = ["Bottle": 10, "Shield": 15, "Ocarina": 1000]

// Count and isEmpty
blacksmithShop.count
blacksmithShop.isEmpty

// All keys and values
let allKeys = [String](blacksmithShop.keys)
let allValues = [Int](blacksmithShop.values)

// Accessing dict values
let shieldPriece = blacksmithShop["Shield"]
blacksmithShop["Sword"]

for (itemName, itemValue) in blacksmithShop {
    print(itemName, itemValue)
}
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
