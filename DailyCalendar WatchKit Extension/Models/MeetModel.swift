//
//  MeetModel.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 03.05.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import Foundation

// MARK: - MeetModel
struct MeetModel {
    var title: String
    var startTime: Date
    var endTime: Date
    var eventType: EventType
}

extension MeetModel: Identifiable {
    var id: String {
        return title
    }
}

// MARK: - MeetModel: Hashable
extension MeetModel: Hashable {
    
    static func == (lhs: MeetModel, rhs: MeetModel) -> Bool {
        return lhs.title == rhs.title && lhs.startTime == rhs.startTime && rhs.endTime == lhs.endTime
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(startTime)
        hasher.combine(endTime)
    }
    
}

