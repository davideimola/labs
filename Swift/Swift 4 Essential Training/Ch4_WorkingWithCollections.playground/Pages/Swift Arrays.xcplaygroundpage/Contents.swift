/*:
 # Swift Arrays
 ---
 
 ## Topic Essentials
 Swift arrays work like **ordered lists**, meaning that the position of each element is determined by the order it was added. Arrays also work off of indexes, meaning that each element in an array has a corresponding index value that you can use to access it.
 
 In Swift, arrays are zero-indexed, so the first item is stored at index 0.
 
 ### Objectives
 + Create empty arrays with different syntax
 + Create an array called **levelDifficulties** with initial values
 + Use the `count` and `isEmpty` methods
 + Iterate over **levelDifficulties** and print out its indexes and values
 */
// Creating arrays
var emptyArray: Array<String> = []
var emptyArray2 = Array<String>()
var emptyArray3 = [Double]()
var emptyArray4: [Int] = []

var levelDifficulties = ["Easy", "Moderate", "Veteran", "Nightmare"]

// Count and isEmpty
levelDifficulties.count
levelDifficulties.isEmpty

// Accessing array values
var easyDifficulty = levelDifficulties[0]

for difficulty in levelDifficulties {
    print(difficulty)
}

for (index, difficulty) in levelDifficulties.enumerated(){
    print("\(index) -> \(difficulty)")
}
/*:
 [Next Topic](@next)
 */
