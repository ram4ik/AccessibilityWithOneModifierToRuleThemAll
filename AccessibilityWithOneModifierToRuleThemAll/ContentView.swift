//
//  ContentView.swift
//  AccessibilityWithOneModifierToRuleThemAll
//
//  Created by ramil on 02.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This text has an identifier and value")
                .a11y(identifier: "my identifier", value: "my value")
            Text("This text has a label and hint")
                .a11y(label: "my label", hint: "my hint")
            Text("This text has an identifier and value")
                .a11y(value: "my other value", hint: "my other hint")
            Text("This text has an identifier but is hidden from VoiceOver")
                .a11y(identifier: "my secret identifier", hidden: true)
            Text("This Text has it all!")
            .a11y(
                label: "My label for the text that has it all",
                identifier: "My identifier for the Text that has it all",
                value: "My value for the Text that has it all",
                hint: "My hint for the Text that has it all",
                hidden: false
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
