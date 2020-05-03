//
//  EmptyMeetModel.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 03.05.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import Foundation

// MARK: - EmptyMeetModel
struct EmptyMeetModel {
    var startTime: Date
    var endTime: Date

}

// MARK: - EmptyMeetModel: Identifiable
extension EmptyMeetModel: Identifiable {
    var id: String {
        return UUID().uuidString
    }
}

// MARK: - MeetModel: Hashable
extension EmptyMeetModel: Hashable {
    
    static func == (lhs: EmptyMeetModel, rhs: EmptyMeetModel) -> Bool {
        return lhs.startTime == rhs.startTime && rhs.endTime == lhs.endTime
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(startTime)
        hasher.combine(endTime)
    }
    
}
