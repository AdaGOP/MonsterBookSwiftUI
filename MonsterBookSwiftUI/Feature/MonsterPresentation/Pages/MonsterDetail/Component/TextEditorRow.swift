//
//  TextEditorRow.swift
//  MonsterBookSwiftUI
//
//  Created by Handy Handy on 10/08/21.
//

import SwiftUI

struct TextEditorRow: View {
    var title: String
    var placeholder: String
    //
    @Binding var value: String
    //
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            TextEditor(text: $value)
                .font(.body)
                .foregroundColor(self.value == placeholder ? .gray : .black)
                .onTapGesture {
                    if self.value == placeholder {
                        self.value = ""
                    }
                }
                .frame(maxHeight: 250)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct TextEditorRow_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorRow(
            title: "Title",
            placeholder: "This monster is ...",
            value: .constant("This monster is ...")
        )
    }
}
