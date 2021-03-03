//
//  DateButton.swift
//  TaskSwiftUI
//
//  Created by Sergey Lukaschuk on 03.03.2021.
//

import SwiftUI

struct DateButton: View {
    
    var title: String
    @ObservedObject var homeData: HomeViewModel
    
    var body: some View {
        Button(action: {}) {
            Text("Button")
                .padding(.vertical, 10.0)
                .padding(.horizontal, 20.0)
                .background(
                    LinearGradient(gradient: .init(colors: [Color("Color1"), Color("Color2")]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(6.0)
        }
    }
}



