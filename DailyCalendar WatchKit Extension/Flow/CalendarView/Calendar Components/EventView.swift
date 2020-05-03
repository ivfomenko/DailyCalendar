//
//  EventView.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 03.05.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//
import SwiftUI

struct EventView: View {
    
    // - Model
    var model: MeetModel
    
    // - Private Properties
    @State private var detailsEventNavigationPublisher = false

    // - Body
    var body: some View {
        NavigationLink(
            destination: MeetingDetailsView(),
            isActive: self.$detailsEventNavigationPublisher) {
                Button(action: {
                    self.detailsEventNavigationPublisher.toggle()
                }) {
                    VStack {
                        HStack {
                            Rectangle().fill(Color.gray.opacity(0.5)).frame(width: 1.0)
                            
                            VStack(alignment: .leading, spacing: 4.0) {
                                Text(model.title)
                                    .lineLimit(3)
                                    .lineSpacing(2.0)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14.0, weight: .bold, design: .rounded))
                                
                                Text(model.startTime.hoursAndMinutes() + " - " + model.endTime.hoursAndMinutes())
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 10.0, weight: .thin, design: .default))
                            }
                            .padding(8.0)
                            
                            Spacer()
                        }
                        .background(
                            model.eventType.backgroundColor
                                .cornerRadius(8.0, corners: [.topRight, .bottomRight])
                        )
                            .frame(height: 75.0)
                    }
                }
                .buttonStyle(PlainButtonStyle())
                
        }
        .buttonStyle(PlainButtonStyle())
       
    }
}

#if DEBUG
struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(model: MeetModel(title: "Meeting with Andrew Matsons", startTime: Date(), endTime: Date().plus(hours: 2), eventType: .personal))
    }
}
#endif
