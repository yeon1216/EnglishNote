//
//  ContentView.swift
//  EnglishNote
//
//  Created by BOBBY.KIM on 2022/10/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    var body: some View {
        TabView(selection: $selection) {
            Text("First Content View")
                .tabItem{
                    Image(systemName: "car.fill")
                    Text("Random")
                }
                .tag(1)
            Text("Second Content View")
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Translate")
                }
                .tag(2)
            Text("Third Content View")
                .tabItem{
                    Image(systemName: "moon.fill")
                    Text("English")
                }
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
