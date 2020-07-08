//
//  AnyResource.swift
//

import Foundation

public struct AnyResource<T>:Resource where T:Resource {
    public typealias Attributes = T.Attributes
    public typealias Relationships = T.Relationships
    let rawValue: T
    init(_ resource: T) {
        self.rawValue = resource
    }
    public var attributes: T.Attributes? {
        rawValue.attributes
    }
    
    public var href: String? {
        rawValue.href
    }
    
    public var id: String {
        rawValue.id
    }

    public var relationships: T.Relationships? {
        rawValue.relationships
    }
    
    public var type: ResourceType {
        rawValue.type
    }
}
