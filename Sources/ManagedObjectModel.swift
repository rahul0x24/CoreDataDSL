//
// Copyright (c) Vatsal Manot
//

import CoreData
import Foundation
import Swift

struct ManagedObjectModel {
    public let entities: [NSEntityDescriptionConvertible]

    public init(_ entity: () -> NSEntityDescriptionConvertible) {
        self.entities = [entity()]
    }

    public init(@ArrayBuilder<NSEntityDescriptionConvertible> entities: () -> [NSEntityDescriptionConvertible]) {
        self.entities = entities()
    }
}

extension ManagedObjectModel {
    public func toNSManagedObjectModel() -> NSManagedObjectModel {
        let result = NSManagedObjectModel()

        result.entities = entities.map({ $0.toNSEntityDescription() })

        return result
    }
}
