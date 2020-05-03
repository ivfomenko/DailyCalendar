//
//  GoalsViewModel.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 21.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI
import Combine

class GoalsViewModel: ObservableObject {
    
    // - Internal Properties
    @Published var goalsProgress: Float = 0.4
    @Published var unfinisherGoalsCouns: Int = 4
    
    // - Private Properties
    private var totalGoalsCount: Int
    
    init(totalGoalsCount: Int) {
        self.totalGoalsCount = totalGoalsCount
        self.calculateGoalsParametrs()
    }
    
    private func calculateGoalsParametrs() {
        self.goalsProgress = Float((totalGoalsCount - unfinisherGoalsCouns)) / Float(totalGoalsCount)
    }
    
}
