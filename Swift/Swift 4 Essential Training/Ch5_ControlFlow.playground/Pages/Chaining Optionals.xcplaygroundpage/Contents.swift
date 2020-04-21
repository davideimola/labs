/*:
 # Chaining Optionals
 ---
 
 ## Topic Essentials
 There will definitely be times when we need to chain optionals, or in other words deal with unwrapping an optional value that has optional properties itself.
 
 It’s handy to think of optional chains in a very literal sense, like a chain link. If all the links are present and strong, the chain continues, but if one link fails, the chain breaks.

 
 ### Objectives
 + Create a class called **Adventurer** with an optional **equippedWeapon** property
 + Create another class called **Weapon** with a name property and simple function
 + Create an instance of **Adventurer** and use chain unwrapping to access the name of its **equippedWeapon** if it has one
 */
// Test classes
class Adventurer {
    var equippedWeapon: Weapon?
}

class Weapon {
    var name: String = "Fists"
}

// Chain unwrapping optionals
let newAdventurer = Adventurer()
newAdventurer.equippedWeapon = Weapon()

if let weaponName = newAdventurer.equippedWeapon?.name {
    print("You have a \(weaponName) equipped!")
} else {
    print("You're kind of useless in a fight right now...")
}
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
