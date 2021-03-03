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
                    .font(.system(size: 40.0))
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
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Spacer(minLength: 0.0)
            }
            .padding()
            
            HStack {
                DateButton(title: "Today", homeData: homeData)
                DateButton(title: "Tomorrow", homeData: homeData)
                
                // MARK: Date Picker
                
                DatePicker("", selection: $homeData.date)
                    .labelsHidden()
            }
            .padding()
            
            Spacer(minLength: 0.0)
        }
        .background(Color.black.opacity(0.06).ignoresSafeArea(.all, edges: .bottom))
    }
}
