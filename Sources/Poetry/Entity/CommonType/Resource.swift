//
//  File.swift
//

import Foundation

public protocol Resource: Decodable {
    associatedtype Relationships: Decodable
    associatedtype Attributes: Decodable
    var attributes: Attributes? { get }
    var href: String? { get }
    var id: String { get }
    var relationships: Relationships? { get }
    var type: PoetryType { get }
}
