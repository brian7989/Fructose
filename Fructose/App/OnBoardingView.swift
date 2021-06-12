//
//  OnBoardingView.swift
//  Fructose
//
//  Created by Brian Lee on 2021/06/11.
//

import SwiftUI
struct OnBoardingView: View {
    
    // MARK: - PROPERTIES
    var fruits: [Fruit]

    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5], content: {
                fruit in FruitCardView(fruit: fruit)
            })
//            ForEach(fruits[0...5]){ item in
//                FruitCardView(fruit: item)
//            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
