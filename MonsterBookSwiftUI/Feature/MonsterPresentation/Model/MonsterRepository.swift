//
//  MonsterRepository.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

class MonsterRepository {
    
    var staticDataStore: SeederStaticDataStore
    var coreDataStore: SeederCoreDataStore?
    var networkDataStore: SeederNetworkDataStore?
    
    let monsterType: [MonsterType] = [
        .fire, .water, .earth, .air, .metal, .tree
    ]
    
    var monsters: [Monster]?
    
    func getMonsters() -> [Monster] {
        if monsters == nil {
            self.monsters = staticDataStore.seedMonster()
        }
        return monsters ?? []
    }
    
    func add(monster: Monster) {
        monsters?.append(monster)
    }
    
    func update(monster: Monster) {
        guard let index = monsters?.firstIndex(where: { $0.id == monster.id}) else { return }
        monsters?[index] = monster
    }
    
    static let shared = MonsterRepository(staticDataStore: SeederStaticDataStore())
    
    private init(staticDataStore: SeederStaticDataStore,
         coreDataStore: SeederCoreDataStore? = nil,
         networkDataStore: SeederNetworkDataStore? = nil) {
        
        self.staticDataStore = staticDataStore
        self.coreDataStore = coreDataStore
        self.networkDataStore = networkDataStore
    }
}
