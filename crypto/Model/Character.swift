//
//  Token.swift
//  crypto
//
//  Created by Cody Condon on 2021-07-19.
//

import Foundation


struct Character : Decodable, Identifiable  {
    
    let id: Int
    let name: String
    let breedGroup: String?
    let lifeSpan: String
    let height: Height?
    
    
    enum CodingKeys: String, CodingKey {
        case breedGroup = "breed_group"
        case id = "id"
        case name = "name"
        case lifeSpan = "life_span"
        case height = "height"
    }
    
    
    struct Height: Decodable {
        let metric: String
    }
    
}

let MOCK_CHARACTER: [Character] = [
    .init(id: 1, name: "Luke Skywalker", breedGroup: "Canada", lifeSpan: "12 years", height: Character.Height.init(metric: "12 - 17"))
]
