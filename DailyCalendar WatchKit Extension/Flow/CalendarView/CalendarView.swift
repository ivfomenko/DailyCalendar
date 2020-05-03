//
//  CalendarView.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 03.05.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI
import Combine


struct CalendarView: View {
    
    // - Model
    @ObservedObject var viewModel = CalendarViewModel()

    // - Body
    var body: some View {
        List {
            ForEach(0..<viewModel.events.count) { index -> AnyView in
                switch self.viewModel.events[index] {
                case .busy(let meetModel):
                    return AnyView(EventView(model: meetModel))
                case .free(let breakModel):
                    return AnyView(EmptyEventView(model: breakModel))
                }
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
struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
#endif

