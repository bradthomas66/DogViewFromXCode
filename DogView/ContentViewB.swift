//
//  ContentViewB.swift
//  DogView
//
//  Created by Brad Thomas on 2020-07-01.
//  Copyright © 2020 Brad Thomas. All rights reserved.
//

import SwiftUI

struct ContentViewB: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            happyDogView()
            Button (action:{
                withAnimation() {
                    self.viewRouter.currentPage = "page1"
                }
        }) {
                BackButtonView()
            }
        }
    }
}

struct ContentViewB_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewB().environmentObject(ViewRouter())
    }
}

struct happyDogView: View {
    var body: some View {
        Image("happyDog")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 280, height: 580)
            .clipped()
            .cornerRadius(15)
    }
}

struct BackButtonView: View {
    var body: some View {
        Text("Back")
            .frame (width: 200, height: 60)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(25)
            .padding(.top, 30)
    }
}
