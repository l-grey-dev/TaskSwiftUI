//
//  ContentView.swift
//  TaskSwiftUI
//
//  Created by Sergey Lukaschuk on 22.02.2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
      Home()
    }
}
