/*:
 # Swift Enumeration Basics
 ---
 
 ## Topic Essentials
 Swift enumerations allow you to group related values together into a group that you can use and access. Sort of like switch statements, each value in an enum is considered a different case.
 
 ### Objectives
 + Create a basic enum called **ArmorType**
 + Create another enum called **WeaponType** with shorthand syntax
 */
// Declaring an enum
enum ArmorType {
    case Heavy
    case Medium
    case Light
}

enum WeaponType {
    case Sword, Hammer, Fists
}

var currentArmor = ArmorType.Heavy
print("You currently have \(currentArmor) armor equipped")
print("Your armore type is at position \(currentArmor.hashValue) in the enum")

/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
