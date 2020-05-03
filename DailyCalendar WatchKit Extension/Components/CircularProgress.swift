//
//  c.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 21.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI

// MARK: - View
struct CircularProgress: View {
    
    @Binding var progress: Float
    var lineColor: Color
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 4.0)
                .opacity(0.3)
                .foregroundColor(lineColor)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 8.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(lineColor)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)

            Text(String(format: "%.0f %%", min(self.progress, 1.0) * 100.0))
                .font(.system(size: 28.0, weight: .bold, design: .default))
        }
    }
}

// MARK: - PreviewProvider
#if DEBUG
struct CircularProgress_Previews: PreviewProvider {
    
    @State static var progressValue: Float = 0.6
    
    static var previews: some View {
        CircularProgress(progress: $progressValue, lineColor: Color(hex: "#0A11F9"))
    }
}
#endif
