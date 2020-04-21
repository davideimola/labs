/*:
 # Introduction to Protocols
 ---
 
 ## Topic Essentials
 A protocol is a template of properties and functions that can conformed to by a class or struct. If a class or struct implements a given protocol, they are entering into an agreement that says they will follow the rules the protocol has set out.
 
 ### Objectives
 + Declare a protocol called **Nameable**
 + Extend the **Nameable** protocol
 + Create a simple struct called **Player** and use the **Nameable** protocol
 */
// Declare a protocol
protocol Nameable {
    var firstName: String {get}
    var lastName: String {get set}
    
    func createFullName() -> String
}

// Extend the protocol
extension Nameable {
    func createFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

// Create struct with protocol
struct Player: Nameable {
    var firstName: String
    var lastName: String
    
    func createFullName() -> String {
        return "\(firstName) \(lastName) loves Swift!"
    }
}

let newPlayer = Player(firstName: "Davide", lastName: "Imola")
print(newPlayer.createFullName())
//: [Previous Topic](@previous)
