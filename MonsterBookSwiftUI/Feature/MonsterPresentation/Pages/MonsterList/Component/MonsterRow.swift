//
//  MonsterRow.swift
//  MonsterBookSwiftUI
//
//  Created by Handy Handy on 11/08/21.
//

import SwiftUI

struct MonsterRow: View {
    //
    var monster: Monster
    //
    var body: some View {
        HStack(alignment: .center) {
            monster.type?.getImage()
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 100)
                .padding()
            VStack(alignment: .leading) {
                Text(monster.name ?? "No Name")
                    .font(.title)
                Text(monster.type?.rawValue ?? "No Type")
                    .font(.title2)
            }
            Spacer()
        }
        .background(monster.type?.getColor())
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}

struct MonsterRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MonsterRow(monster: Monster(
                        name: "Gloop",
                        age: 12,
                        description: "No description",
                        type: .fire))
            .previewLayout(.fixed(width: 375, height: 150))
            MonsterRow(monster: Monster(
                        name: "Gloop",
                        age: 12,
                        description: "No description",
                        type: .earth))
            .previewLayout(.fixed(width: 375, height: 150))
            
        }
    }
}
