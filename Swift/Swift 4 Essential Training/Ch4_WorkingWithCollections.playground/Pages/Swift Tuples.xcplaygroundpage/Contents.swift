/*:
 # Swift Tuples
 ---
 
 ## Topic Essential
 In Swift, tuples can take a group of values and store them as one compound value. Unlike arrays, tuples can store values of different types, so you can mix and match as much as you need.
 
 Tuples are great for returning values from functions, and storing temporary groups of values. However, as tempting as it may be to use tuples to create and store complex data structures, it’s still a better idea to use classes and structs for that, as we’ll see later on.
 
 ### Objectives
 + Create a simple tuple named **uppercutAttack** with initial values and no value names
 + Create another tuple named **planetSmashAttack** with initial values and value names
 + Create a final tuple named **shieldStompAttack** with no initial values and a type annotation
 + Explore what tuples have to offer
 */
// Simple tuple
var uppercutAttack: (String, Int, Bool) = ("Upper Cut Smash", 25, true)
var (attackName, damageDelt, rechargeable) = uppercutAttack
attackName
uppercutAttack.0

// Naming tuple values
var planetSmashAttack = (moveName: "Planet Smash", damage: 25, isRechargeable: true)
planetSmashAttack.damage
planetSmashAttack.1

// Naming values with type annotation
var shieldStompAttack: (name: String, dm: Int, canRecharge: Bool)
shieldStompAttack = ("Shield Stomp", 35, false)
shieldStompAttack.canRecharge
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
