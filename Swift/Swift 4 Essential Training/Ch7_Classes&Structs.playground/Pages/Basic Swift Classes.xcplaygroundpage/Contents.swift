/*:
 # Basic Swift Classes
 ---
 
 ## Topic Essentials
 Classes and structures are going to be the foundational building blocks of any application you write. You can add properties, methods and initializers to any class, and you can even create new classes as subclasses of other existing classes.
 
 ### Objectives
 + Create a simple class called **Adventurer**
 + Assign some instance properties with and without initial values
 + Add an optional class property
 + Add a type property
 + Define designated and convenience initializers
 + Explore computed properties, both read-only and read-write
 */
// Declaring a new class
class Adventurer {
    var name: String
    var hp: Int
    let maxHP: Int = 100
    // Optionals
    var specialMove: String?
    
    // Type prop
    static var credo = "Defend the helpless!"
    
    // Computed properties
    var toFullHP: Int {
        return maxHP - hp
    }
    
    var health: Int {
        get {
            return hp
        }
        
        set {
            hp = newValue
        }
    }
    
    // Class init
    init(name: String, hp: Int){
        self.name = name
        self.hp = hp
    }
    
    convenience init(name: String){
        self.init(name: name, hp: 100)
    }
}

var newPlayer = Adventurer(name: "Harrison", hp: 99)
var defaultPlayer = Adventurer(name: "Davide")

newPlayer.health
newPlayer.health = 85
newPlayer.health
newPlayer.hp
newPlayer.toFullHP
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
*/

