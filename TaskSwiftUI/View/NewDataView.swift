//
//  NewDataView.swift
//  TaskSwiftUI
//
//  Created by Sergey Lukaschuk on 25.02.2021.
//

import SwiftUI

struct NewDataView: View {
    
    @ObservedObject var homeData: HomeViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("Add New Task")
                    .font(.system(size: 65.0))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                Spacer(minLength: 0.0)
            }
            .padding()
            
            TextEditor(text: $homeData.content)
                .padding()
            
            Divider()
                .padding(.horizontal)
            
            HStack {
                Text("When")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Spacer(minLength: 0.0)
            }
            Spacer(minLength: 0.0)
        }
        .background(Color.black.opacity(0.06))
    }
}
