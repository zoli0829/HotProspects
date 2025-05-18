//
//  ContentView.swift
//  HotProspects
//
//  Created by Zoltan Vegh on 17/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor: Color = .red
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
                .background(backgroundColor)
            
            Text("Change Color")
                .padding()
                .contextMenu{
                    Button("Red", systemImage: "checkmark.circle.fill") {
                        self.backgroundColor = .red
                    }
                    
                    Button("Blue") {
                        self.backgroundColor = .blue
                    }
                    
                    Button("Green") {
                        self.backgroundColor = .green
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
