//
//  EmptyEventView.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 03.05.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI

struct EmptyEventView: View {
    
    var model: EmptyMeetModel

    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(Color.gray.opacity(0.8))
                    .frame(width: 1.0)
                VStack(alignment: .leading, spacing: 4.0) {
                    Text(model.startTime.hoursAndMinutes())
                        .foregroundColor(Color.gray.opacity(0.8))
                        .font(.system(size: 8.0, weight: .thin, design: .default))
                    Spacer()
                    
                    Text(model.endTime.hoursAndMinutes())
                    .foregroundColor(Color.gray.opacity(0.8))
                    .font(.system(size: 8.0, weight: .thin, design: .default))
                }
                .padding(8.0)
                
                 Spacer()
            }
            .frame(height: 36.0)
           
        }
    }
}

#if DEBUG
struct EmptyEventView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyEventView(model: EmptyMeetModel(startTime: Date(), endTime: Date().plus(hours: 1)))
    }
}
#endif

