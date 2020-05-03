//
//  CalendarSummaryView.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 21.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI

// MARK: - View
struct CalendarSummaryView: View {
    // - Internal Properties
    @ObservedObject var viewModel = CalendarSummaryViewModel()
    
    // - Private Proerties
    @State private var calendarViewNavigationState: Bool = false
    @State private var calendarViewNavigationState2: Bool = false
    
    // - Body
    var body: some View {
        VStack {
            
            Text("Calendar")
                .font(.system(size: 18.0, weight: .semibold, design: .rounded))
            Spacer()
            HStack(alignment: .center, spacing: 8.0) {
                VStack {
                    NavigationLink(destination: CalendarView(), isActive: self.$calendarViewNavigationState) {
                        Button(
                            action: {
                                self.calendarViewNavigationState.toggle()
                        },
                            label: {
                                VStack {
                                    Text("\(viewModel.workMeetingsCount)")
                                        .font(.system(size: 22.0, weight: .bold, design: .rounded))
                                    
                                    Rectangle()
                                        .frame(height: 1.0)
                                        .foregroundColor(Color.white.opacity(0.3))
                                    
                                    Text("Work")
                                        .font(.system(size: 12.0, weight: .light, design: .default))
                                }
                                .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
                        }
                        )
                            .buttonStyle(PlainButtonStyle())
                            .background(Color(hex: "#0A11F9").cornerRadius(8.0))
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                }
                
                VStack {
                    NavigationLink(destination: CalendarView(), isActive: self.$calendarViewNavigationState2) {
                        Button(
                            action: {
                                self.calendarViewNavigationState2.toggle()
                        },
                            label: {
                                VStack {
                                    Text("\(viewModel.personalMeetingsCount)")
                                        .font(.system(size: 22.0, weight: .bold, design: .rounded))
                                    
                                    Rectangle().frame(height: 1.0)
                                        .foregroundColor(Color.white.opacity(0.3))
                                    
                                    Text("Personal")
                                        .font(.system(size: 12.0, weight: .light, design: .default))
                                }
                                .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
                        }
                        )
                            .buttonStyle(PlainButtonStyle())
                            .background(Color(hex: "#046D14").cornerRadius(8.0))
                    }
                    .buttonStyle(PlainButtonStyle())
                }

                
                
            }
            
            Spacer()
            HStack {
                Text(self.viewModel.nearesMeetingTimeString.isEmpty ? "No Meetings today" : "→ Meeting \(self.viewModel.nearesMeetingTimeString)")
                    .font(.system(size: 12.0, weight: .light, design: .default))
            }
        }
    }
}

// MARK: - PreviewProvider
#if DEBUG
struct CalendarSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarSummaryView()
    }
}
#endif
