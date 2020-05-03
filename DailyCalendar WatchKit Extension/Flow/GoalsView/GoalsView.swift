//
//  GoalsView.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 21.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI

// MARK: - View
struct GoalsView: View {

    // - Internal properties
    @ObservedObject var viewModel: GoalsViewModel = GoalsViewModel(totalGoalsCount: 12)
    
    // - Private Properties
    @State private var goalsListNavigationPublisher = false
    
    // - Body
    var body: some View {
        NavigationLink(
            destination: GoalsListView(),
            isActive: self.$goalsListNavigationPublisher
        ) {
                Button(action: {
                    self.goalsListNavigationPublisher.toggle()
                }) {
                    VStack(spacing: 12.0) {
                        Text("Goals")
                            .font(.system(size: 18.0, weight: .semibold, design: .rounded))
                        CircularProgress(progress: self.$viewModel.goalsProgress, lineColor: Color(hex: "#0A11F9"))
                        
                        Text("\(viewModel.unfinisherGoalsCouns) goals to do")
                            .font(.system(size: 12.0, weight: .light, design: .default))
                    }
                }
                .buttonStyle(PlainButtonStyle())
                .padding(.zero)
        }.buttonStyle(PlainButtonStyle())
    }
}

// MARK: - PreviewProvider
#if DEBUG
struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView()
    }
}
#endif
