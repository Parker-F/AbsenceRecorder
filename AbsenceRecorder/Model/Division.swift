//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 27/02/2024.
//
let exampleForenames = ["Arianrhod", "Branwen", "Ceridwen", "Dylan", "Elen", "Ffion", "Gwydion", "Hafren", "Iolo", "Llewellyn", "Mabon", "Nia", "Owain", "Pryderi", "Rhiannon", "Seren", "Taliesin", "Urien", "Vaughan", "Wyn"]
let exampleSurnames = ["Jones", "Williams", "Davies", "Thomas", "Jenkins", "Edwards", "Warburton", "North", "Halfpenny", "Roberts", "Charteris", "Faletau", "Tipuric", "Biggar", "Moriarty"]



import Foundation

class Division {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            let student = Student(forename: "\(exampleForenames[i-1])", surname: "\(exampleSurnames[i-1])", birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "CBioZ-2", of: 9),
                           Division.createDivision(code: "CMsiV-2", of: 11),
                           Division.createDivision(code: "CComW-1", of: 10),
                           Division.createDivision(code: "CCheX-2", of: 7)]
    #endif
}
