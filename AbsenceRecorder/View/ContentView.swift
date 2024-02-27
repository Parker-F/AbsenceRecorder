//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 27/02/2024.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]

    
    var body: some View {
        Text("Code: \(divisions[0].code)")
            .padding()
    }
}

#Preview {
    ContentView(divisions: Division.examples)
}
