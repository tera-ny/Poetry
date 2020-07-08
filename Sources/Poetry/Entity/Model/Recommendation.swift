//
//  File.swift
//  
//
//  Created by iniad on 2020/07/09.
//

import Foundation

struct Recommendation: Resource {
    var attributes: Attributes?
    
    var href: String?
    
    var id: String
    
    var relationships: Relationships?
    
    var type: ResourceType
    
    struct Relationships: Decodable {
        let contents: AnyMediaResourceRelationship
    }
    
    struct Attributes: Decodable {
        let isGroupRecommendation: Bool
        let nextUpdateDate: PoetryDate
        let reason: String
        let resourceTypes: [String]
        let title: String
    }
    
}
