//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 29/02/2024.
//

import Foundation

class Absence {
    let takenOn: Date
    var studentAbsences: [StudentAbsence]
    
    init(takenOn: Date, studentAbsences: [StudentAbsence]) {
        self.takenOn = date
        self.studentAbsences = students.map { StudentAbsence(student: $0)}
        
    }
    #if DEBUG
    static let example = Absence(date: Date(), students: Student.examples)
    #endif
}
