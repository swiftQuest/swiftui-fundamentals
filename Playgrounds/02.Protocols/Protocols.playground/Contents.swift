
import SwiftUI

// =====================================================================
// Core Takeaways:
// 1. A protocol defines requirements (properties/methods), not implementations.
// 2. Protocols do NOT allocate memory or store values — direct instantiation fails.
// 3. { get } forces conforming types to provide a readable property.
// 4. Protocols let unrelated types share a single identity, treated the same way.
// =====================================================================
 
// MARK: - 1. The Protocol Definition

protocol Describable{
    // Property Requirement: Must specify accessors ({ get } or { get set })
    var description: String{get}
}

//❌ Direct instantiation is impossible because a protocol has no storage:
//let desc = Describable()

// MARK: - 2. Conforming to Protocols
/*
 1.   Adopting a protocol (e.g., `struct Book: Describable`) creates a binding contract.
 2.   The compiler enforces that ALL required properties and methods are implemented.
*/

// MARK: - Conforming Type 1
struct Book: Describable {
    let title: String
    var description: String
}

// MARK: - 3. Why Protocols Exist
// - Let unrelated types be treated the same way, without forcing a shared
//   base type or duplicating logic for each one
// - Without a shared contract: a separate function per type, and no way
//   to store different types together in one collection
// - A protocol doesn't care how a requirement is fulfilled, only that it is
// - A type isn't limited to one protocol — a type can conform to several
//   at once, when it needs to do more than one job
// - This is the actual mechanism SwiftUI relies on — Text, Button,
//   ContentView, and every custom view all unify under one contract, View

protocol Messagable{
    var sender: String{get}
    
    func prepareForList()
}

struct TextMessage: Messagable{
    let textMessage: String
    let sender: String

    func prepareForList() {
        //To fit the container
    }
}

struct ImageMessage: Messagable{
    let imageMessage: Image = Image("")
    let sender: String
    
    func prepareForList(){
        //Thumbnail for dispaly
    }
}

let msg1 = TextMessage(textMessage: "Hello", sender: "Max")
let msg2 = TextMessage(textMessage: "Hi", sender: "Ed")
let msg3 = ImageMessage(sender: "Max")

var messageArray: [any Messagable] = [msg1, msg2, msg3]

// MARK: - 4. Stored vs. Computed Properties
// - Stored property: holds a fixed value, set once, at construction
// - Computed property: holds no value — just code that runs on demand,
//   every time it's accessed
// - A stored property's default can't reference another property on the
//   same instance — the instance isn't fully built yet ("chicken-and-egg")
// - A computed property runs later, once the instance fully exists, so it
//   can safely read other properties on that instance
// - When a computed property is a single expression, Swift infers the
//   return automatically — no "return" keyword needed
// - In SwiftUI: body must be computed, not stored — it needs to read a
//   view's own properties to build its content, which only exist once
//   the view itself exists

struct NewBook: Describable {
    let title: String
    
    var description: String{
         "The book name is \(title)"
    }
}


// =====================================================================
// MARK: - 4. PRACTICE EXERCISE: Activity Feed System
// =====================================================================
/*
 Scenario:
 You are building a notification feed for a app. Users receive different
 types of activity (like Posts and User Follows) in a single stream.
 You need to enforce a shared contract across these items, handle property
 initialization correctly, and store them together in an array.

 --- TASK 1: THE CONTRACT ---
 1. Define a protocol named `FeedItem` with:
    - A read-only String property requirement: `displayTitle`
    - A method requirement: `logImpression()`

 --- TASK 2: CONFORMING TYPES & INITIALIZATION ---
 2. Create a struct `UserFollow` conforming to `FeedItem`:
    - Properties: `username: String`
    - Conform to `displayTitle` using a STORED property passed through its initializer.
    - Implement `logImpression()` to print a short message.

 3. Create a struct `Post` conforming to `FeedItem`:
    - Properties: `author: String`, `content: String`
    - Conform to `displayTitle` using a COMPUTED property returning
      "Post by \(author)".
    - Implement `logImpression()` to print a short message.

 --- TASK 3: HETEROGENEOUS COLLECTION ---
 4. Create one instance of `UserFollow` and one instance of `Post`.
 5. Put both instances into a single array typed as `[FeedItem]`.
 6. Write a function `renderFeed(items: [FeedItem])` that loops through the array,
    prints each item's `displayTitle`, and calls `logImpression()`.
*/

// TODO: Write your solution below!

