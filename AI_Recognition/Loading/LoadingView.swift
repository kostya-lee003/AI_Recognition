//
//  LoadingView.swift
//  AI_Recognition
//
//  Created by Kostya Lee on 15/11/24.
//

import SwiftUI

struct LoadingView: View {
    
    @State var progress: CGFloat = 0.0
    
    var body: some View {
        CircularProgressView(progress: $progress)
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    progress = 0.75
                }
            })
    }
}

#Preview {
    LoadingView()
}
