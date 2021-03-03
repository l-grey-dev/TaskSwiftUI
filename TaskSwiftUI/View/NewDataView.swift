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
            
            // MARK: Add Button
            
            Button(action: {}) {
                Text("Button")
                Label(
                    title: { Text("Add Now")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    },
                    icon: { Image(systemName: "plus")
                        .font(.title)
                        .foregroundColor(.white)
                    })
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 30.0)
                    .background(
                        LinearGradient(gradient: .init(colors: [Color("Color1"), Color("Color2")]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(8.0)
            }
            .padding()
        }
        .background(Color.black.opacity(0.06).ignoresSafeArea(.all, edges: .bottom))
    }
}
