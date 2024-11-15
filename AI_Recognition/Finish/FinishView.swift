//
//  FinishView.swift
//  AI_Recognition
//
//  Created by Kostya Lee on 15/11/24.
//

import SwiftUI

struct FinishView: View {
    
    @State var sliderValue = 0.1
    
    var body: some View {
        VStack {
            Text("Done! ✅")
                .font(.title).bold()
                .padding(8)
            
            RoundedRectangle(cornerRadius: 20.0, style: .continuous)
                .padding()
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.gray).opacity(0.6)
            
            Text("85%")
                .font(.title).bold()
                .foregroundStyle(.blue)
            
            Slider(value: $sliderValue)
                .padding()
            
            Text("Drag the slider to see difference")
                .padding(.bottom, 40)
                .foregroundStyle(.secondary)
            
            HStack(spacing: 12) {
                Button {
                } label: {
                    Text("Extract more")
                        .frame(maxWidth: .infinity)
                        .font(.title2)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button {
                } label: {
                    Image("export")
                        .frame(width: 40, height: 40)
                }
                .buttonStyle(.bordered)
            }
            .padding()
            .frame(maxHeight: 50)
        }
    }
}

#Preview {
    FinishView()
}
