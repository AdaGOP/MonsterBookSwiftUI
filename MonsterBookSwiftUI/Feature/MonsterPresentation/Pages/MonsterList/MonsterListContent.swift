//
//  MonsterListContent.swift
//  MonsterBookSwiftUI
//
//  Created by Handy Handy on 11/08/21.
//

import SwiftUI

struct MonsterListContent: View {
    //
    var monsters = MonsterRepository.shared.getMonsters()
    //
    var body: some View {
        NavigationView {
            List(monsters) { monster in
                ZStack {
                    MonsterRow(monster: monster)
                    NavigationLink(destination: MonsterDetailContent(monster: monster)){
                        EmptyView()
                    }
                }
                
            }
            .navigationTitle("Monsters")
        }.onAppear() {
            UITableView.appearance().separatorStyle = .none
        }
    }
}

struct MonsterListContent_Previews: PreviewProvider {
    static var previews: some View {
        MonsterListContent()
    }
}
