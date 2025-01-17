/*:
 # Type safety and inference
 ---
 
 ## Topic Essentials
 Swift is a **type safe** language. When you assign an initial value to a variable the Swift compiler will infer its type without you having to specify it. If you need an empty variable with no initial value, you will need to use a type annotation to let the compiler know what value type to expect later on.
 
 ### Objectives
 + Declare a variable with an initial value and no type annotation
 + Declare a variable with a type annotation and no initial value
 + Create a variable with a type annotation and an initial value
 + Create multiple variables of the same type with a single type annotation
*/
// Variable - type inferred
var inventorySlotsInferred = 5
// inventorySlotsInferred = "hello"

// Variable - type annotation
var inventorySlotsExplicit: Int
inventorySlotsExplicit = 15

// Variable - type annotation and inferred
var superExplicit: Double = 5

// Multiple variables - type annotation shorthand
// Only for the same type
var gold, mana, skillPoints: Int
gold = 150
print(gold)
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
