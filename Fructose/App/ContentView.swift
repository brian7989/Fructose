//
//  ContentView.swift
//  Fructose
//
//  Created by Brian Lee on 2021/06/11.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit]
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled(), content: { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                })
            }
            .navigationTitle("Fruits")
        }
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}