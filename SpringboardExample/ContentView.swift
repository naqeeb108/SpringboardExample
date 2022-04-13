//
//  ContentView.swift
//  SpringboardExample
//
//  Created by Mac on 10/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State var labelText = "Test"
    var body: some View {
        
        VStack {
            Button {
                labelText = "Testing..."
            } label: {
                Text("Click Here")
                    .accessibilityIdentifier("clickButton")
                    .padding()
            }
    
            Text(labelText)
                .accessibilityIdentifier("labelText")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
