//
//  TextFieldRow.swift
//  MonsterBookSwiftUI
//
//  Created by Handy Handy on 10/08/21.
//

import SwiftUI

struct TextFieldRow: View {
    //
    var title: String
    var placeHolder: String
    //
    @Binding var value: String
    //
    var body: some View {
        HStack(alignment: .center) {
            Text(title)
                .font(.headline)
            Spacer()
            TextField(placeHolder, text: $value)
                .font(.body)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(maxWidth: 185)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct TextFieldRow_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldRow(
            title: "Title",
            placeHolder: "Placeholder",
            value: .constant("")
        )
    }
}
