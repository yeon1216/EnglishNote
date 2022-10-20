//
//  EnglishStore.swift
//  EnglishNote
//
//  Created by BOBBY.KIM on 2022/10/20.
//

import Foundation

class EnglishStore : ObservableObject {
    @Published var englishes: [English]
    
    init(englishes: [English] = []) {
        self.englishes = englishes
    }
    
}
