//
//  GoalsCell.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 23.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI

struct GoalsCell: View {
    // - Internal propreties
    internal var goalTitle: String
    
    // - Private Proprties
    @State private var isSelected: Bool = false
    
    // - Body
    var body: some View {
        
        HStack(alignment: .center, spacing: 10.0) {
            Button(action:{
                self.isSelected = !self.isSelected
            }) {
                Rectangle()
                    .fill(isSelected ? Color(hex: "#046D14") : Color.clear).cornerRadius(8.0)
                    .frame(width: 24.0, height: 24.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.white, lineWidth: 4)
                )
            }
            .buttonStyle(PlainButtonStyle())
            
            Text(goalTitle)
                .font(.system(size: 14.0, weight: .light, design: .default))
            
            Spacer()
            
        }
        .padding(.all, 12.0)
        .background(Color.gray.opacity(0.3).cornerRadius(8.0))
        .buttonStyle(PlainButtonStyle())
    }
}

#if DEBUG
struct GoalsCell_Previews: PreviewProvider {
    static var previews: some View {
        GoalsCell(goalTitle: "Run in the morning")
    }
}
#endif
