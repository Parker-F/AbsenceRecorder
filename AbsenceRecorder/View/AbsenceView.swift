//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 28/02/2024.
//

import SwiftUI

struct AbsenceView: View {
    let absence: Absence
    
    var body: some View {
        List(absence.studentAbsences, id: \.self.student.forename) { studentAbsence in
            AbsenceItem(studentAbsence: studentAbsence)
        }
    }
}

#Preview {
    AbsenceView(absence: Absence.example)
}
