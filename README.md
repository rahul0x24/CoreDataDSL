# About

CoreDataDSL attempts to wrap CoreData APIs in a concise, modern DSL leveraging the full capabilities of Swift 5.1.

# Installation

The preferred way of installing CoreDataDSL is via the [Swift Package Manager](https://swift.org/package-manager/).

>Xcode 11 integrates with libSwiftPM to provide support for iOS, watchOS, and tvOS platforms.

1. In Xcode, open your project and navigate to **File** → **Swift Packages** → **Add Package Dependency...**
2. Paste the repository URL (`https://github.com/vmanot/CoreDataDSL`) and click **Next**.
3. For **Rules**, select **Branch** (with branch set to `master`).
4. Click **Finish**.

# Usage

The code below demonstrates the construction of a managed object model using CoreDataDSL.

```swift 
class Test: NSManagedObject {
    @NSManaged var foo: String?
    @NSManaged var bar: Int32
    @NSManaged var baz: Date?
}

var model = ManagedObjectModel {
    EntityDescription<Test>(name: "Test")
        .properties({
            $0.foo
                .type(.string)
                .optional(true)
            $0.bar
                .type(.integer32)
            $0.baz
                .type(.date)
                .optional(true)
        })
}
```



# License

CoreDataDSL is licensed under the [MIT License](https://vmanot.mit-license.org).

