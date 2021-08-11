//
//  MonsterDetail.swift
//  MonsterBookSwiftUI
//
//  Created by Handy Handy on 10/08/21.
//

import SwiftUI

struct MonsterDetailContent: View {
    //
    var monster: Monster
    //
    @State private var name = "Glooping"
    @State private var age = "12"
    @State private var description = "No description"
    @State private var type = MonsterType.air
    @State private var isFavorited = false
    //
    var body: some View {
        ScrollView {
            MonsterImageRow(
                monsterType: $type,
                isFavorited: $isFavorited) {
                isFavorited = !isFavorited
                print("\(name)")
            }
            TextFieldRow(
                title: "Name",
                placeHolder: "Gloop",
                value: $name)
            TextFieldRow(
                title: "Age",
                placeHolder: "3",
                value: $age)
            PickerViewRow(
                monsterType: $type)
            TextEditorRow(
                title: "Description",
                placeholder: "This monster is ...",
                value: $description)
        }
        .navigationTitle("Monster Detail")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear{
            setMonster(monster)
        }
    }
    
    func setMonster(_ monster: Monster) {
        name = monster.name ?? name
        age = "\(monster.age ?? 12)"
        description = monster.description ?? description
        type = monster.type ?? type
        isFavorited = monster.isFavorite
    }
}

struct MonsterDetail_Previews: PreviewProvider {
    static var previews: some View {
        MonsterDetailContent(
            monster: Monster(
                name: "Gloop",
                age: 12,
                description: "No description",
                type: .fire)
        )
    }
}
