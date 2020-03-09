//
//  ContentView.swift
//  TestFontSize
//
//  Created by Felix Marianayagam on 3/9/20.
//  Copyright © 2020 SubhaFelix. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var swiftUI = "SwiftUI TextField"
    @State private var uiTextField = "UIKit TextField"

    var body: some View {
        Form {
            TextField("", text: $swiftUI)
            UITextFieldInSwiftUI(sentence: $uiTextField)
            UITextFieldInSwiftUIFromXib()
        }
    }
}

struct UITextFieldInSwiftUI: UIViewRepresentable {
    typealias UIViewType = UITextField
    @Binding var sentence: String
    
    func makeUIView(context: UIViewRepresentableContext<UITextFieldInSwiftUI>) -> UITextField {
        let textField = UITextField(frame: CGRect.zero)
        textField.text = sentence
        return textField
    }
    
    func updateUIView(_ uiView: UITextField, context: UIViewRepresentableContext<UITextFieldInSwiftUI>) {
    }
}

struct UITextFieldInSwiftUIFromXib: UIViewRepresentable {
    typealias UIViewType = TextFieldFromXib

    func makeUIView(context: UIViewRepresentableContext<UITextFieldInSwiftUIFromXib>) -> TextFieldFromXib {
        let textFieldFromXib: TextFieldFromXib = Bundle.main.loadNibNamed("TextFieldFromXib", owner: nil, options: nil)![0] as! TextFieldFromXib
        return textFieldFromXib
    }
    
    func updateUIView(_ uiView: TextFieldFromXib, context: UIViewRepresentableContext<UITextFieldInSwiftUIFromXib>) {
    }
}
