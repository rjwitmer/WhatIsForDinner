//
//  ContentView.swift
//  WhatIsForDinner
//
//  Created by Bob Witmer on 2023-07-10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var choicesArray = ["Burgers",
                                       "Burritos",
                                       "Cobb Salad", "Pepperoni Pizza", "Sushi"
    ]
    @State private var chosenMeal = ""
    @State private var previousMeal = ""
    
    var body: some View {
        
        VStack {
            Text("What's for Dinner?")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.teal)
                            
            Image(chosenMeal)
                .resizable()
                .scaledToFit()
                .padding()
                .animation(.default, value: chosenMeal)
            
            Spacer()
            
            Text(chosenMeal)
                .font(.largeTitle)
                .fontWeight(.thin)
                .animation(.default, value: chosenMeal)
            
            Button {
                
                repeat {
                    chosenMeal = choicesArray.randomElement() ?? ""
                } while chosenMeal == previousMeal
                
                previousMeal = chosenMeal
                
            } label: {
                Image(systemName: "fork.knife.circle")
                Text("What's for Dinner?")}
            .font(.title)
            .fontWeight(.semibold)
            .buttonStyle(.borderedProminent)
            .accentColor(.teal)

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
