//
//  HomeViewModel.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 12.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    
    // - Internal Properties
    @Published var time: String = ""
    @Published var day: String = ""
    @Published var dateString: String = ""
    @Published var notificationCount: Int = 2
    
    // - Inits
    init() {
        self.setUpDate()
    }
    
    // - Internal Updates
    internal func setUpDate() {
        let date = Date()
        let dateFormatter = DateFormatter()
        let weekDayFormatter = DateFormatter()
        let timeDayFormatter = DateFormatter()
        
        timeDayFormatter.dateFormat = "HH:mm"
        weekDayFormatter.dateFormat = "EEEE"
        dateFormatter.dateFormat = "dd MMMM yyyy"
        
        
        self.time = timeDayFormatter.string(from: date)
        self.dateString = dateFormatter.string(from: date)
        self.day = weekDayFormatter.string(from: date)
    }
    
}
