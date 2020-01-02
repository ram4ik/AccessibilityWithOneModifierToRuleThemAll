//
//  A11yButton.swift
//  AccessibilityWithOneModifierToRuleThemAll
//
//  Created by ramil on 02.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

///All the expected label strings, starting with a capital letter and using one word wherever possible
enum ButtonType: String {
    case like = "Like", share = "Share", comment = "Comment"
}

///A button that requires a specific accessibility label
struct A11yButton: View {
    let accessibilityLabel: ButtonType
    var action: () -> Void = {}
    let text: String
    var body: some View {
        Button(action: action) {
            Text(text)
                .accessibility(label: Text(accessibilityLabel.rawValue))
        }
    }
}

///An example of how to use A11yButton
struct A11yButton_Previews: View {
    var body: some View {
        A11yButton(accessibilityLabel: .comment, action: {print("Comment button pressed")}, text: "Comment")
    }
}
