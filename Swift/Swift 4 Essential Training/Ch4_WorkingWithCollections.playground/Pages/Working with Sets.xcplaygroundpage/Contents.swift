/*:
 # Working with Sets
 ---
 
 ## Topic Essentials
 Sets are a great tool for when you need to make sure values are only present once, and when you don't care about the order of those unique values. 
 
 ### Objectives
 + Create some empty sets with different syntax
 + Create another set name **activeQuests**
 + Use the `count` and `isEmpty` methods
 + `insert` and `remove` elements from **activeQuests**
 + Sort **activeQuests** and check if it `contains` a certain value
 */
// Creating sets
var emptySet = Set<Int>()
var emptySet2: Set<Int> = []
var activeQuests: Set = ["Fetch Gemstones", "Big Boss", "The Undertaker", "Granny Needs Firewood"]

// Count and isEmpty
activeQuests.count
activeQuests.isEmpty

// Inserting and removing elements
activeQuests.insert("Only The Strong")
activeQuests.remove("The Undertaker")

// More common methods
activeQuests.sorted()
activeQuests.contains("All-4-One")

print(activeQuests)

// Iterating
for quest in activeQuests.sorted() {
    print(quest)
}
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
