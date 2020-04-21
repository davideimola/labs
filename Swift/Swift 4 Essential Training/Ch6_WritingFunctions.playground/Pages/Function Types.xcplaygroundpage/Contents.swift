/*:
 # Function Types
 ---
 
 ## Topic Essentials
 Every function has a type, or unique signature. Function types can be used in Swift like any other type, such as strings or integers. This can come in handy when you need to pass functions into other functions as parameters, or use them as return types.
 
 ### Objectives
 + Create a function called **computeBonusDamage** that takes in an integer, multiplies it by 4 and returns it
 + Create another function called **dealDamage** that takes an integer and a function as parameters, with the function parameter type matching **computeBonusDamage**
 */
// Function types
func computeBonusDamage(damage: Int) -> Int {
    return damage * 4
}

// Functions as parameters
func dealDamage(baseDamage: Int, computeFunc: (Int) -> Int) {
    let bonus = computeFunc(baseDamage)
    print("Base Damage: \(baseDamage)\nBonus Damage: \(bonus)\nTotal damage: \(baseDamage + bonus)")
}

dealDamage(baseDamage: 23, computeFunc: computeBonusDamage)
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
