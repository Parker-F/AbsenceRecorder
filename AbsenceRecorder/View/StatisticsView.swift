//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 28/02/2024.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    var body: some View {
        Text("Statistics: \(state.divisions[0].code)")
    }
}
#Preview {
    StatisticsView()
        .environmentObject(StateController())
}
