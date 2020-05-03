//
//  GoalsListView.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 23.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI

struct GoalsListView: View {
    
    let array: [Goal] = [Goal(content: "blablabblabblabalba"), Goal(content: "Start running"), Goal(content: "Start blablabla")]
    
    var body: some View {
        List {
            ForEach(self.array, id: \.content) { goal in
                GoalsCell(goalTitle: goal.content)
            }
            .toggleStyle(DefaultToggleStyle())
            .listRowPlatterColor(.clear)
            
        }
        .buttonStyle(PlainButtonStyle())
        .listStyle(PlainListStyle())
        .animation(.default)
    }
}

#if DEBUG
struct GoalsList_Previews: PreviewProvider {
    static var previews: some View {
        GoalsListView()
    }
}
#endif
