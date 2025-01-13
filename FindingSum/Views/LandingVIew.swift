//
//  ContentView.swift
//  FindingSum
//
//  Created by Marcus Li on 2025-01-13.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView(selection: Binding.constant(1)) {
        
            SumView()
                .tabItem(){
                    Image(systemName: "plus")
                    Text ("Sum")
                }
            SubtractView()
                .tabItem(){
                    Image(systemName: "minus")
                    Text ("Subtract")
                }
            MultiplyView()
                .tabItem(){
                    Image(systemName: "multiply")
                    Text ("Multiply")
                }
            DividingView()
                .tabItem(){
                    Image(systemName: "divide")
                    Text ("Divide")
                }
        }
    }
}

#Preview {
    LandingView()
}
