/*:
 # Chapter Challenge: Battle Grounds
 ---
 
 ### Tasks
 1. Create a type alias called **Attack** with named values for name and damage
 2. Create a type alias called **ScoreClosure** with a integer array as parameter and no return value
 3. Write a simple function called **attackEnemy** with an integer parameter that prints out an interpolated string
 4. Write an overloaded version of **attackEnemy** with a parameter of type Attack and returns a boolean
 5. Use both **attackEnemy** methods
 6. Write a function called **fetchPlayerScores** that has a closure parameter of type ScoreClosure and use it to return an array of scores
 7. Call the **fetchPlayerScores** closure, loop through the scores and print out an interpolated string
 */
// 1
typealias Attack = (name: String, damage: Int)

// 2
typealias ScoreClosure = ([Int]) -> Void

// 3
func attackEnemy(damage: Int){
    print("Attack has dealt \(damage)")
}

// 4
func attackEnemy(attack: Attack) -> Bool {
    print("Attack \(attack.name) has dealt \(attack.damage) to the enemy!")
    return true
}

// 5
attackEnemy(damage: 5)
attackEnemy(attack: ("Serious Punch", 10000))

// 6
func fetchPlayerScores(closure: ScoreClosure) {
    let scores = [100, 99, 80]
    closure(scores)
}

// 7
fetchPlayerScores { (scoresValues) in
    for score in scoresValues {
        print(score)
    }
}
//: [Previous Topic](@previous)
