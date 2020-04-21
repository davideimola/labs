/*:
 # The SWITCH Statement
 ---
 
 ## Topic Essentials
 At its most basic, a switch statement takes a value and runs it against possible matching patterns that we define in code. Each possible match can have a different block of code that will be executed if matched to the value being switched on. 
 
 ### Objectives
 + Create variables for **firstInitial**, **hp**, and **mp** and assign them values
 + Use a switch statement to execute different code for different **firstInitial** values
 + Use a switch statement with number ranges to execute different code based on **hp**'s value
 + Use a switch statement to evaluate multiple variables, and for one case bind those values to local variables and use the `where` keyword to define the case pattern
 */
// Test variables
let firstInitial = "H"
let hp = 28
let mp = 30

// Simple switch
switch  firstInitial {
case "H":
    print("I'm guessing Harold?")
case "A":
    print("Maybe Albert?")
default:
    print("I've got nothing...")
}

// Switch with ranges
switch hp {
case 0:
    print("Not alive")
case 1...25:
    print("Low health")
case 26...50:
    print("Between 26 and 50")
default:
    print("Not in mortal range")
}

// Complex switch
switch (mp, hp) {
case (24, 28):
    print("All good")
case (1...15, 20..<25):
    print("Ranges are the best!")
case (let localMP, let localHP) where localHP + localMP > 20:
    print(localMP, localHP)
default:
    print("I've still got nothing.")
}
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
