//
//  MeetingDetailsView.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 03.05.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI

struct MeetingDetailsView: View {
    
    // - Private moked Values
    private var participants: [String] = ["1","2","3"]
    
    // - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 16.0) {
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("Meeting with Jony Catsvil")
                        .lineLimit(3)
                        .font(.system(size: 18.0, weight: .bold, design: .rounded))
                        .foregroundColor(Color.white)
                    
                    Text("\(Date().hoursAndMinutes()) - \(Date().plus(hours: 2).hoursAndMinutes())")
                        .lineLimit(3)
                        .font(.system(size: 12.0, weight: .thin, design: .default))
                        .foregroundColor(Color.gray.opacity(0.8))
                }
                
                VStack(alignment: .leading, spacing: 8.0, content: {
                    HStack(spacing: 4.0) {
                        Text("Place:")
                            .font(.system(size: 12.0, weight: .medium, design: .default))
                            .foregroundColor(Color.white)
                        Text("Somewhere")
                            .font(.system(size: 12.0, weight: .light, design: .default))
                            .foregroundColor(Color.white)
                    }
                    
                    HStack(spacing: 0.0) {
                        ForEach(0..<participants.count) { index in
                            Image("profile").resizable().frame(width: 32.0, height: 32.0).clipShape(Circle()).padding(.leading, index > 0 ? -12.0 : 0.0)
                        }
                    }
                })
            }
        }
    }
}

#if DEBUG
struct MeetingDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingDetailsView()
    }
}
#endif
