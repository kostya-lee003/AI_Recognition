//
//  CircularProgressView.swift
//  AI_Recognition
//
//  Created by Kostya Lee on 15/11/24.
//

import Foundation
import SwiftUI

struct CircularProgressView: View {
    @Binding var progress: CGFloat
    
    private let progressSize = 200.0
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray.opacity(0.3), lineWidth: 10)
                .frame(width: progressSize, height: progressSize)
            
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .frame(width: progressSize, height: progressSize)
                .rotationEffect(.degrees(-90))
                .animation(.bouncy(duration: 1.0), value: progress)
            
            Text("\(Int(progress * 100))%")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color.blue)
        }
    }
}
