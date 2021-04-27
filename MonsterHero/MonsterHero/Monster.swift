//
//  Monster.swift
//  MonsterHero
//
//  Created by zein rezky chandra on 17/04/21.
//

import Foundation

/// Modified by: Zein
/// Enumeration
///
/// I know how to work with enumeration in Swift
/// https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html
///
/// - Important: `TEC069    I know how to work with enumeration in Swift`
///

enum MonsterType {
    case green
    case purple
    case red
    case yellow
}


/// Modified by: Zein
/// Struct: Value type
///
/// I can implement Structures and Classes in Swift
/// https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html
///
/// - Important: `TEC065    I can implement Structures and Classes in Swift`
///

struct Monster {
    
    /// Modified by: Zein
    /// Optional
    ///
    /// I know how to use Optional Values in Swift
    /// https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
    ///
    /// - Important: `TEC079    I know how to use Optional Values in Swift`
    ///
    
    var type: MonsterType
    var name: String
    var description: String
    var energy: Float
    
    init(monster_type: MonsterType, monster_name: String, monster_desc: String, monster_energy: Float) {
        type = monster_type
        name = monster_name
        description = monster_desc
        energy = monster_energy
    }
    
}
