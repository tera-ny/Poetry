//
//  PoetryDate.swift
//

import Foundation

public struct PoetryDate: Decodable {
    public let toDate: Date
    public let toString: String
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let decodedText = try container.decode(String.self)
        toString = decodedText
        guard let date = DateFormatter.iso8601DateOnly.date(from: decodedText) else {
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "Detecting unexpected Date formats")
        }
        toDate = date
    }
}
