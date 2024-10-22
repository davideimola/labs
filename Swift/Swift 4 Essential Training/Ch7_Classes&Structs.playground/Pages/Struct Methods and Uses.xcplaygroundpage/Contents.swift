/*:
 # Struct Methods and Uses
 ---
 
 ## Topic Essentials
 Structs can have instance and type methods just like classes. However, they do not support inheritance so they cannot be chained together like super and sub classes.
 
 ### Objectives
 + Recreate a simple **Level** struct with a string array instance property called **objectives**
 + Write a function to print out all level objectives
 + Use a mutating function to remove completed objectives
 */
// Struct methods
struct Level {
    var objectives = ["Find the lost cat", "Collect all gemstones", "Defeat the big boss"]
    
    func queryObjectives() {
        for (index, objective) in objectives.enumerated() {
            print("\(index): \(objective)")
        }
    }
    
    mutating func completeObjective(index: Int) {
        objectives.remove(at: index)
    }
}

var marshlands = Level()
marshlands.completeObjective(index: 0)
marshlands.queryObjectives()
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
