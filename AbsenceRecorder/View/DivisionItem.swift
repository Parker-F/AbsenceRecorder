//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 28/02/2024.
//

import SwiftUI

struct DivisionItem: View {
    let division:Division
    
    var body: some View {
        HStack {
            Text("\(division.code)")
            Image(systemName: "\(division.students.count).circle")
        }
    }
}

#Preview {
    DivisionItem(division: Division(code: "win"))
}
