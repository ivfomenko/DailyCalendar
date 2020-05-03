//
//  Goal.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 23.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import Foundation

// MARK: - Goal
struct Goal {
    var content: String
}

// MARK: - Goal: Hashable
extension Goal: Hashable {
    static func == (lhs: Goal, rhs: Goal) -> Bool {
        return lhs.content == rhs.content
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(content)
    }
    
}
