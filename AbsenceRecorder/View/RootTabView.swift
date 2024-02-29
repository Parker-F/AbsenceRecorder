//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Parker, Fred (DMT) on 28/02/2024.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Statistics")
                }

        }
    }
}

#Preview {
    RootTabView()
}
