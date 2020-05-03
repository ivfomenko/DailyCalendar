//
//  HostingController.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 12.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HomeHostringController: WKHostingController<HomeView> {
    override var body: HomeView {
        return HomeView()
    }
}

class CalendarSummaryHostingController: WKHostingController<CalendarSummaryView> {
    override var body: CalendarSummaryView {
        return CalendarSummaryView()
    }
}

class GoalsHostingController: WKHostingController<GoalsView> {
    override var body: GoalsView {
        return GoalsView()
    }
}
