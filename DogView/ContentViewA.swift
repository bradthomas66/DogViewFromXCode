//
//  ContentViewA.swift
//  DogView
//
//  Created by Brad Thomas on 2020-07-01.
//  Copyright © 2020 Brad Thomas. All rights reserved.
//

import SwiftUI

struct ContentViewA: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            grumpyDogView()
            Button (action: {
                withAnimation() {
                    self.viewRouter.currentPage = "page2"
                }
            }) {
                NextButtonView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewA().environmentObject(ViewRouter())
    }
}

struct grumpyDogView: View {
    var body: some View {
        Image("grumpyDog")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 290, height: 580)
            .clipped()
            .cornerRadius(15)
    }
}

struct NextButtonView: View {
    var body: some View {
        Text("Next")
            .frame (width: 200, height: 60)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(25)
            .padding(.top, 30)
    }
}
