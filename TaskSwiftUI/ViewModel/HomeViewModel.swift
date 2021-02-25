//
//  HomeViewModel.swift
//  TaskSwiftUI
//
//  Created by Sergey Lukaschuk on 25.02.2021.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var content = ""
    @Published var date = Data()
    
    // For NewData Sheet...
    @Published var isNewDate = false
}
