//
//  FrameworkGridViewModel.swift
//  AppFramework
//
//  Created by Macbook on 06/12/24.
//

import SwiftUI
import Observation

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailsView = true
        }
    }
    @Published var isShowingDetailsView = false
    
    let colums: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())
    ]
}


@Observable class User {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
