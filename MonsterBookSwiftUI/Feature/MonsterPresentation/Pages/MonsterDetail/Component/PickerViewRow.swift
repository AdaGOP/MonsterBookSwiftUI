//
//  PickerViewRow.swift
//  MonsterBookSwiftUI
//
//  Created by Handy Handy on 10/08/21.
//

import SwiftUI

struct PickerViewRow: View {
    //
    @Binding var monsterType: MonsterType
    //
    var body: some View {
        HStack(alignment: .center) {
            Text("Type")
                .font(.headline)
            Spacer()
            Picker("MonsterType" ,selection: $monsterType) {
                ForEach(MonsterType.allCases) { type in
                    Text(type.rawValue).tag(type)
                }
            }
            .frame(maxWidth: 150, maxHeight: 60)
            .clipped()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct PickerViewRow_Previews: PreviewProvider {
    static var previews: some View {
        PickerViewRow(monsterType: .constant(.air))
    }
}

extension MonsterType {
    func getColor() -> Color? {
        switch self {
        case .fire:
            return MBColor().red
        case .water:
            return MBColor().purple
        case .earth:
            return MBColor().brown
        case .air:
            return MBColor().blue
        case .metal:
            return MBColor().gray
        case .tree:
            return MBColor().green
        }
    }
}
