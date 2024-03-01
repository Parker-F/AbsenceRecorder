//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 28/02/2024.
//

import Foundation


class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        loadFromFile()
    }
    
    func loadFromFile() {
        
    }
    
    func saveToFile() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            // MY SHIFT KEY KEEPS GLITCHING AND GETTING STUCK AND I CANT DO ANYMORE CODING (ITS THE SHIFT KEY ON THE MAC)
        }
    }
}

