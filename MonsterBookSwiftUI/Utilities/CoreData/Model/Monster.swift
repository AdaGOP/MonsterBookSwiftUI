//
//  File.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import Foundation
import Combine

enum MonsterType: String, CaseIterable, Identifiable {
    case fire = "Fire"
    case water = "Water"
    case earth = "Earth"
    case air = "Air"
    case metal = "Metal"
    case tree = "Tree"
    
    var id: String { self.rawValue }
}

class Monster: Identifiable {
    let id: String = UUID().uuidString
    var name: String?
    var age: Int?
    var description: String?
    var type: MonsterType?
    var isFavorite: Bool
    
    init(name: String?, age: Int?, description: String?, type: MonsterType) {
        self.name = name
        self.description = description
        self.age = age
        self.type = type
        self.isFavorite = false
    }
    
}
