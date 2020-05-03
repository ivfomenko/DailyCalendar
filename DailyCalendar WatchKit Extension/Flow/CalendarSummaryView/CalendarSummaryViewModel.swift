//
//  CalendarSummaryViewModel.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 21.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI
import Combine

class CalendarSummaryViewModel: ObservableObject {
    
    // - Internal Properties
    @Published var workMeetingsCount: Int = 21
    @Published var personalMeetingsCount: Int = 2
    
    @Published var nearesMeetingTimeString: String = ""
    
    init() {
        self.getNearestMeetingTime()
    }
    
    // - Private BL
    private func getNearestMeetingTime() {
        let date = Date()
        let timeFormatter = DateFormatter()
        
        timeFormatter.dateFormat = "HH:mm"
        
        self.nearesMeetingTimeString = timeFormatter.string(from: date)
    }
    
}
