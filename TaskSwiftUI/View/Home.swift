//
//  Home.swift
//  TaskSwiftUI
//
//  Created by Sergey Lukaschuk on 25.02.2021.
//

import SwiftUI

struct Home: View {
    
    @StateObject var homeData = HomeViewModel()
    
    var body: some View {
        
        Button(action: { homeData.isNewData.toggle() }) {
            Text("Button")
        }
        .sheet(isPresented: $homeData.isNewData) {
            NewDataView(homeData: homeData)
        }
        
    }
}

