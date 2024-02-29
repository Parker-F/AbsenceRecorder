//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 28/02/2024.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    var body: some View {
        List(division.students, id: \.self.forename) { student in
            AbsenceItem(forename: student.forename, isPresent: true)
        }
    }
}

#Preview {
    AbsenceView(division: Division.examples[0])
}
