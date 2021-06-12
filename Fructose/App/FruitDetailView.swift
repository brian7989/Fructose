//
//  FruitDetailView.swift
//  Fructose
//
//  Created by Brian Lee on 2021/06/12.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationView(content: {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .center, spacing: 20, content: {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20, content: {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        
                    })//: VSTACK
                        .padding(.horizontal, 20)
                        .frame(maxWidth: 640, alignment: .center)
                })//: VSTACK
                    .navigationBarTitle(fruit.title)
                    .navigationBarHidden(true)
            })//: SCROLL
                .edgesIgnoringSafeArea(.top)
        })//: NAVIGATION
            .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - PREVIEW
struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
