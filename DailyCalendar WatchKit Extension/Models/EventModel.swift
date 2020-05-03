//
//  EventModel.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 03.05.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import Foundation
import SwiftUI

// MARK: - EventModel
enum EventModel {
    case busy(model: MeetModel)
    case free(modeL: EmptyMeetModel)

}

// MARK: - EventModel: Identifiable
extension EventModel: Identifiable {
    var id: String {
        return UUID().uuidString
    }
}

// MARK: - EventModel: Hashable
extension EventModel: Hashable {
    static func == (lhs: EventModel, rhs: EventModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: - EventType
enum EventType: String {
    case personal
    case work
    
    var backgroundColor: Color {
        switch self {
        case .work:
            return Color(hex: "#0A11F9")
        case .personal:
           return Color(hex: "#046D14")
        }
    }
}
