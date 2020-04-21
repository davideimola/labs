/*:
 # Enum Raw & Associated Values
 ---
 
 ## Topic Essentials
 Enumerations can be expanded to include raw and associated values, which makes it possible to create more complex, and useful, enumeration types in your code.
 
 ### Objectives
 + Declare an enum called **NPC** with a raw value
 + Declare an enum called **PlayerState** with associated values
 + Write a switch statement for all the cases in the **PlayerState** enum
 */
// Raw values
enum NPC: String {
    case Villager = "Common to villages, not much useful info"
    case Chief = "One per village, will have quest info"
    case Blacksmith = "No limit per village, will make you cool stuff"
}

var blacksmith = NPC.Blacksmith
print(blacksmith.rawValue)

// Associated values
enum PlayerState {
    case Alive
    case KO(restartToLevel: Int)
    case Unknown(debug: String)
}

var currentState = PlayerState.KO(restartToLevel: 1)

switch currentState {

case .Alive:
    print("I'm still here!")
case .KO(let restartToLevel):
    print("Restart again to level \(restartToLevel)")
case .Unknown(let debug):
    print("Error \(debug)")
}
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
