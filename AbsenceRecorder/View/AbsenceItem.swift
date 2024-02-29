//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 28/02/2024.
//

import SwiftUI

struct AbsenceItem: View {
    let forename: String
    var isPresent: Bool
    
    var body: some View {
        HStack{
            Text("\(forename)")
            Spacer()
            if isPresent {
                Button("✔️", action: toggleAbsent(isPresent: isPresent))
            } else {
                Button("❌", action: toggleAbsent())
            }
        }
    }
    func toggleAbsent(isPresent: Bool) {
        if isPresent {
            self.isPresent = false
        } else {
            self.isPresent = true
        }
    }
}

#Preview {
    AbsenceItem(forename: "Rhiannon", isPresent: true)
}
