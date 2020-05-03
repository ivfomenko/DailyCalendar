//
//  CalendarViewModel.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 03.05.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI
import Combine

class CalendarViewModel: ObservableObject {
    @Published var events: [EventModel] = [
        .busy(model: MeetModel(title: "Meeting with Jonny Catsvil", startTime: Date(), endTime: Date().plus(hours: 2), eventType: .work)),
        .free(modeL: EmptyMeetModel(startTime: Date().plus(hours: 2), endTime: Date().plus(hours: 4))),
        .busy(model: MeetModel(title: "Childrens", startTime: Date().plus(hours: 4), endTime: Date().plus(hours: 4).plus(minutes: 30), eventType: .personal)),
        .free(modeL: EmptyMeetModel(startTime: Date().plus(hours: 4).plus(minutes: 30), endTime: Date().plus(hours: 5))),
        .busy(model: MeetModel(title: "USA Meeting", startTime: Date().plus(hours: 5), endTime: Date().plus(hours: 6).plus(minutes: 30), eventType: .work))
    ]
    
}
