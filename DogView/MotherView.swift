//
//  MotherView.swift
//  DogView
//
//  Created by Brad Thomas on 2020-07-02.
//  Copyright © 2020 Brad Thomas. All rights reserved.
//

import SwiftUI

struct MotherView: View {

    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == "page1" {
                ContentViewA()
            }
            else if viewRouter.currentPage == "page2" {
                ContentViewB()
                    .transition(.scale)
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
