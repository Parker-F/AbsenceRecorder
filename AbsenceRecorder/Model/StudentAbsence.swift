//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 29/02/2024.
//

import Foundation

class StudentAbsence {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(forename: "Peter", surname: "Capaldi", birthday: Date()))
    #endif
}
