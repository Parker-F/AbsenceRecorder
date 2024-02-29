//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 27/02/2024.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    #if DEBUG
    static let example = Student(forename: "David", surname: "Tennant", birthday: Date())
    static let examples = [example]
}
