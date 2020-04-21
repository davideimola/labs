/*:
 # Core Array Methods
 ---
 
 ## Topic Essentials
 Now that we know how to create and access arrays, we need to learn how to manipulate them. Arrays come with several handy methods out of the box, including `append`, `insert`, `remove`, and `sort`, among others.
 
 ### Objectives
 + Create an array called **characterClasses** and give it a few initial values
 + Change the value of the second item, and use `append` to add an item
 + Use the `insert` and `remove` methods to change the array further
 + Explore the `reverse`, `contains`, and`sort` methods
 + Create a new array called **skillTree** that stores arrays as its values, in essence a nested array list
 + Use chained **subscript syntax** to access a value in **skillTree**
 */
// Changing & appending items
var characterClass = ["Ranger", "Paladin", "Druid"]
characterClass[1] = "Knight"
characterClass.append("Gunslinger")
characterClass += ["Healer", "Berserker"]

//Inserting and removing items
characterClass.insert("Beast <aster", at: 2)
characterClass.remove(at: 1)

// Other methods
characterClass.reverse()
characterClass.contains("Gunslinger")

// Nested arrays and subscripts
var skillTree: [[String]] = [
    ["Attack+", "Barrage", "Heavy Hitter"],
    ["Guard+", "Evasion", "Run Like Hell"]
]

var attackTreeSkill = skillTree[0][2]


print(characterClass)
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
