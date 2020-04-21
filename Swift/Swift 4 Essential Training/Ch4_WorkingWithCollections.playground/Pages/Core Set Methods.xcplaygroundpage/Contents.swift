/*:
 # Core Set Methods
 ---
 
 ## Topic Essentials
 Because sets only store unique values, there are a number of useful operations you can perform on them without having to reinvent the sorting/filtering wheel. These include the `intersection` and difference of set values, as well as `union` and `subtraction`. 
 
 ### Objectives
 + Copy and paste the **allQuests** set from the previous page
 + Create a new set called **completedQuests** and assign it a subset of quests from **allQuests**
 + Try out the different operations the `Set` class can perform
 */
// Test variables
var activeQuests: Set = ["Fetch Gemstones", "Big Boss", "The Undertaker", "Granny Needs Firewood"]
var completedQuests: Set = ["Big Boss", "All-4-One", "Hereafter"]

// Set operations
activeQuests.intersection(completedQuests)
activeQuests.symmetricDifference(completedQuests)
activeQuests.union(completedQuests)
activeQuests.subtract(completedQuests)
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
