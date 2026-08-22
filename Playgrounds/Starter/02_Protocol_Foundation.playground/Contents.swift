/*:
 # SwiftUI Fundamentals (Part 2) — Deconstructing the Protocol

 ### Core Takeaways:
 1. A protocol defines requirements (properties/methods), not implementations.
 2. Protocols do NOT allocate memory or store values — direct instantiation fails.
 3. `{ get }` forces conforming types to provide a readable property accessor.
 4. Protocols let unrelated types share a single identity, treated the same way.
*/

import Foundation

// MARK: - 1. The Protocol Definition
/*:
 Define a protocol named `Describable` with one property requirement:
 `description` of type `String`, read-only (`{ get }`).
*/

// TODO: Write your code for Section 1 below:



// ❌ Direct instantiation is impossible because a protocol has no storage:
// let desc = Describable()


// MARK: - 2. Conforming to Protocols
/*:
 1. Adopting a protocol (e.g., `struct Book: Describable`) creates a binding contract.
 2. The compiler enforces that ALL required properties and methods are implemented.

 Create a `Book` struct with a `title` property and conform it to `Describable`
 using a stored `description` property.
*/

// TODO: Write your code for Section 2 below:



// MARK: - 3. Protocols: Shared Contracts in Action
/*:
 - Allow unrelated types (e.g. Book and User here) to be treated uniformly.
 - Conformance = satisfying the protocol's requirements, nothing more.
 - Compiler guarantees safety: error until contract is satisfied.
 - In SwiftUI: everything onscreen — Text, Button, ContentView, etc. — unifies under the View contract.

 Create a `User` struct with `name` and `age` properties, also conforming
 to `Describable`. Create one instance each of `Book` and `User`, then
 place both into a single array typed as `[Describable]`.
*/

// TODO: Write your code for Section 3 below:



// MARK: - 4. View Protocol & Computed Body
/*:
 In this section:
 - Why the `View` protocol requires a `body` property.
 - The difference between **stored** and **computed** properties.
 - Why `body` must be computed: it builds its value from other properties once the view is fully constructed.
 - How Swift enforces this rule with compiler errors.
 - The role of computed properties in SwiftUI, and why you never see `return` inside a `body`.

 🔑 Quick Reference:
 Protocols define contracts. `View` demands `body`.
 Stored properties initialize immediately; computed properties run later.
 `body` is computed so it can safely read from the view’s own state.

 Create a `NewUser` struct with a `name` property, conforming to `Describable`.
 Try writing `description` as a stored property that reads `name` directly —
 observe the compiler error — then fix it by making `description` computed.
*/

// TODO: Write your code for Section 4 below:



// =====================================================================
// MARK: - 5. PRACTICE EXERCISE
// =====================================================================
/*:
 Scenario:
 You're building a simple media dashboard. Different types of media need to
 report a short summary under one shared contract — and one of them needs
 that summary to be built from its own properties.

 Tasks:
 1. Declare a protocol named `Summarizable`.
 2. Add a property requirement `summary` of type `String` (read-only).
 3. Create a struct `Song` with a `title` property. Conform it to
    `Summarizable` using a stored `summary` property, filled in through
    its initializer.
 4. Create a second struct `Podcast` with `episodeName` and `host`
    properties. Conform it to `Summarizable` too — but this time,
    try giving `summary` a default value built directly from
    `episodeName`, right in the property declaration.
 5. Read the error Xcode gives you. Which property isn't available yet,
    and why not?
 6. Fix it by making `summary` a computed property instead, built from
    `episodeName` and `host`.
 7. Create one instance of `Song` and one of `Podcast`. Put both into a
    single array typed as `[Summarizable]`.
 8. Write a function `printAllSummaries(items: [Summarizable])` that loops
    through the array and prints each item's `summary`.

 Bonus (optional):
 9. Create a third struct that does NOT conform to `Summarizable`. Try
    adding it to your array and see what the compiler tells you.
*/

// TODO: Write your solution below!
