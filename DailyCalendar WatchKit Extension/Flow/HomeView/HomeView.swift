//
//  HomeView.swift
//  DailyCalendar WatchKit Extension
//
//  Created by Ivan Fomenko on 12.04.2020.
//  Copyright © 2020 com.ivanfomenko.social. All rights reserved.
//

import SwiftUI
import Combine

// MARK: - View
struct HomeView: View {
    
    // - Private Properties
    private let viewModel = HomeViewModel()
    
    // - Body
    var body: some View {
        VStack(spacing: 10.0) {
            HStack(alignment: .top) {
                VStack(spacing: 6.0) {
                    Text("\(viewModel.time)")
                        .font(.system(size: 48.0, weight: .medium, design: .rounded))
                    VStack(spacing: 2.0) {
                        Text("\(viewModel.day)")
                            .font(.system(size: 18.0, weight: .regular, design: .default))
                        Text("\(viewModel.dateString)")
                            .font(.system(size: 12.0, weight: .light, design: .default))
                            .foregroundColor(Color.gray)
                    }
                }
            }
            
            HStack {
                Button(action: {}) {
                    Image("ic_email")
                        .foregroundColor(.white)
                }
                .buttonStyle(PlainButtonStyle())
                .frame(minWidth: 0.0, maxWidth: 60.0, minHeight: 20.0, maxHeight: 60.0)
                .background(Color.gray.opacity(0.3).cornerRadius(4.0))
                
                
                ZStack {
                    Button(action: {}) {
                        Image("ic_notification")
                            .foregroundColor(.white)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .frame(minWidth: 0.0, maxWidth: 60.0, minHeight: 20.0, maxHeight: 60.0)
                    .background(Color.gray.opacity(0.3).cornerRadius(2.0))
                    
                    
                    
                    VStack {
                        Text(self.viewModel.notificationCount > 99 ? "99+" : "\(self.viewModel.notificationCount)")
                            .font(.system(size: 8.0, weight: .bold, design: .rounded))
                            .lineLimit(1)
                            .padding(.all, 4)
                    }
                    .background(Color(hex: "#046D14"))
                    .clipShape(Circle())
                    .padding(.leading, 15.0)
                    .padding(.bottom, 15.0)
                }
                
                
            }
        }
        .onAppear(perform: {
            self.viewModel.setUpDate()
        })
    }
}

// MARK: - PreviewProvider
#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
