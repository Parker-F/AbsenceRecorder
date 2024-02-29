//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 27/02/2024.
//

import SwiftUI

struct DivisionsView: View {
    var divisions: [Division]
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    
    var body: some View {
        NavigationView {
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(absence: Absence.(date: Date(), students: division.students))) {
                    DivisionItem(division: division)
                }
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}
#Preview {
    DivisionsView()
        .environmentObject(StateController())
}
