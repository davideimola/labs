/*:
 # Understanding Closures
 ---
 
 ## Topic Essentials
 Like functions, closures are enclosed sets of functionality that can be used in code. In Swift closures act like blocks or lambda expressions in other programming languages, essentially capturing data in the context it's declared in, and making it accessible anywhere the closure is called.
 
 Closures have three parts, its parameters, return type and statement, or code body.
 
 ### Objectives
 + Write an empty closure declaration
 + Create a closure that takes in a string parameter that returns void and prints out a string
 + Write the same closure in shorthand
 + Use a closure as a function parameter
 */
// Empty closure
var closureDeclaration: () -> () = {}

// Basic closure
var saluteHunter = { (parameterString: String) -> Void in
    print(parameterString)
}

saluteHunter("Hello Hunter!")

// Shorthand
var saluteHunterShorthand: (String) -> String = { message in
    return "\(message) Swift!"
}

saluteHunterShorthand("Hello")

// Closures as function parameters
func fetchClosestHunters(closure: ([String]) -> Void) {
    let hunters = ["Harrison", "Steven", "Davide"]
    closure(hunters)
}

fetchClosestHunters{ (hunters) in
    for hunter in hunters {
        print("Hunter -> \(hunter)")
    }
}
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
