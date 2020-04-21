/*:
 # Core Dictionary Methods
 ---
 
 ## Topic Essentials
 Knowing how to update, add, remove, and iterate over dictionary items is the next fundamental step in mastering the basics of this collection type.
 
 ### Objectives
 + Create a dictionary called **playerStats** and initialize it with key-value pairs
 + Add and update **playerStats** using different methods
 + Remove key-value pairs from **playerStats** using different methods
 + Create a 2 dimensional dictionary called **questDict** and populate it
 + Use chained subcripts to access a nested key-value pair
 */
// Adding & updating key-value pairs
var playerStats: [String : Int] = ["HP": 100, "Attack": 35, "Gold": 29]
playerStats["Defense"] = 24
playerStats["HP"] = 95
let oldVar = playerStats.updateValue(3, forKey: "GuildMembers")

// playerStats = ["Evasion": 12, "MP": 55]

// Removing key-value pairs
playerStats["Gold"] = nil
playerStats.removeValue(forKey: "Attack")

// Nested dictionaries
var questDictionary = [
    "Fetch Gemstones": [
        "Objective": "Retrieve 5 gemstones",
        "Hidden Objective": "Complete the quest in under 5 minutes"
    ]
]

var questObjective = questDictionary["Fetch Gemstones"]?["Objective"]

print(playerStats)
print(questObjective!)
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
