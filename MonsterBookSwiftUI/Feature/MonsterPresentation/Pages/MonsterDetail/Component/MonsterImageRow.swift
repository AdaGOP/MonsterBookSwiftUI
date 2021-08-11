//
//  MonsterImageRow.swift
//  MonsterBookSwiftUI
//
//  Created by Handy Handy on 10/08/21.
//

import SwiftUI

struct MonsterImageRow: View {
    //
    @Binding var monsterType: MonsterType
    @Binding var isFavorited: Bool
    //
    let onTapped: () -> Void
    //
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            monsterType.getImage()
            Button(action: onTapped, label: {
                Image(systemName: isFavorited ? "heart.fill" : "heart")
                    .foregroundColor(isFavorited ? .red : .blue)
            })
        }
        .padding()
        
    }
}

struct MonsterImageRow_Previews: PreviewProvider {
    static var previews: some View {
        MonsterImageRow(
            monsterType: .constant(.air),
            isFavorited: .constant(true)) {
            print("pressed")
        }
    }
}

extension MonsterType {
    func getImage() -> Image {
        switch self {
        case .fire:
            return Image("Monster Merah")
        case .water:
            return Image("Monster Biru Muda")
        case .earth:
            return Image("Monster Kuning Bulet")
        case .air:
            return Image("Monster Ungu Bulet")
        case .metal:
            return Image("Monster Hitam")
        case .tree:
            return Image("Monster Pohon")
        }
    }
}
