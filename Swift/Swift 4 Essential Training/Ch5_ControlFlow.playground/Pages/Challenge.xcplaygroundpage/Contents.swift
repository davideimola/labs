/*:
 # Chapter Challenge: Game Conditions
 ---
 ### Tasks
 1. Create an optional called **currentWeapon** and assign it a string value
 2. Use optional binding to access **currentWeapon**
 3. Creat a variable called **currentEXP** and assign it an integer value
 4. Use a `switch` statement with **currentEXP** to evaluate different cases
 5. Create a dictionary called **playerLevels** and assign it some key-value pairs of type string and integer
 6. Use a `for-in` loop to iterate over **playerLevels** and print out its key-value pairs in an interpolated string
 7. Add a guard statement inside the `for-in` loop to mamke sure each player is at least level 1 to proceed
 */
// 1
var currentWeapon: String? = "Giant's Hammer"

// 2
if let weapon = currentWeapon {
    print("I've got a \(weapon) for ya!")
} else {
    print("I'm unurmed...")
}

// 3
var currentEXP: Int = 30

// 4
switch currentEXP {
case 1...49:
    print("Low exp")
case 50..<100:
    print("Time to level up")
default:
    print("Corrupted data")
}

// 5
let playerLevels: Dictionary<String, Int> = ["Harrison":23, "Davide":100, "Bob":0, "Steven":4]

// 6
for (levelName, levelValue) in playerLevels {
    print("\(levelName): \(levelValue)")
}

// 7
for (levelName, levelValue) in playerLevels {
    guard levelValue > 0 else {
        print("\(levelName) lower than level 1")
        continue
    }
    print("\(levelName): \(levelValue)")
}
//: [Previous Topic](@previous)
