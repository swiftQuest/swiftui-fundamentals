
// ========================================================================
// MARK: - 01_Why_SwiftUI_Uses_Structs?
// Series: SwiftUI Fundamentals (Part 1)
// ========================================================================

import Foundation

// ========================================================================
// MARK: - 1. Struct Fundamentals
// ========================================================================
/*:
 ## 1. A Struct in Action

 A struct groups related data (properties) and behavior (methods) together.
 
 **Instructions:**
 - Create a `Person` struct with `var name: String` and `var role: String`.
 - Add a `greet()` method.
 - Create an instance `alex` using the automatic memberwise initializer and call `greet()`.
 */

// TODO: Write your code for Section 1 below:




// ========================================================================
// MARK: - 2. Class Fundamentals & Initializers
// ========================================================================
/*:
 ## 2. Structural Similarity: Struct vs. Class

 Syntactically, structs and classes look almost identical.

 **Instructions:**
 - Define a `PersonClass` with the exact same `name` and `role` properties and `greet()` method.
 - Observe the compiler error regarding initializers!
 - Add an explicit `init(name: String, role: String)` to resolve it.
 - Create an instance of `PersonClass` and observe how it behaves identically on the surface.
 */

// TODO: Write your code for Section 2 below:




// ========================================================================
// MARK: - 3. Value Types vs. Reference Types
// ========================================================================
/*:
 ## 3. Memory Behavior: Value vs. Reference

 Structs copy on assignment (Value Type). Classes share a reference pointer (Reference Type).

 **Instructions:**
 - Instantiate `structA` and `classA` with name "Alex".
 - Copy them into `structB` and `classB`.
 - Mutate the names on `structB` and `classB` to "Sam".
 - Print all names to verify value copying vs. reference sharing.
 
 (Simplified for teaching purposes: "stack vs. heap" is the common mental
 model here, though the full picture is a bit more nuanced under the hood.)
 */

// TODO: Write your code for Section 3 below:




// ========================================================================
// MARK: - 4. Try It Yourself: Mutability Challenge
// ========================================================================
/*:
 ## 4. Your Turn — Practice & Mutability Challenge

 Complete the following steps to solidify how `let` and `var` affect
 both stored properties and struct/class instances.

 ---

 ### Part A: Instance Mutability (`let` vs. `var` Instances)
 1. Define a simple struct `CarStruct` with a `var model: String` property.
 2. Instantiate `CarStruct` using `let car1 = CarStruct(model: "Sedan")`.
 3. Try modifying `car1.model = "SUV"`.
    - *Question:* What happens, and why? (Hint: Does a `var` property inside a `let` struct allow mutation?)
 4. Now declare `var car2 = CarStruct(model: "Sedan")` and modify `car2.model = "SUV"`.
    - *Question:* Does this work?

 ---

 ### Part B: Property Mutability (`let` vs. `var` Properties)
 1. Define a struct `LaptopStruct` with a `let brand: String` property and a `var ram: Int` property.
 2. Instantiate it as a `var myLaptop = LaptopStruct(brand: "Apple", ram: 16)`.
 3. Try modifying `myLaptop.brand = "Other"` vs. `myLaptop.ram = 32`.
    - *Question:* Which property can be mutated, and why?

 ---

 ### Part C: Reference Mutability with Classes
 1. Define a class `CarClass` with a `var model: String` property and an explicit `init`.
 2. Instantiate `CarClass` using `let constantClass = CarClass(model: "Sedan")`.
 3. Try modifying `constantClass.model = "SUV"`.
    - *Question:* Why does Swift allow you to mutate a property on a `let` class instance, but NOT on a `let` struct instance?

 ---
 
 **Before running each test, PREDICT the outcome, write your code, and verify in the console!**
 */

// TODO: Write your exercise code below:
