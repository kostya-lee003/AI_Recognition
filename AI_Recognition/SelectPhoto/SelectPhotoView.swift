//
//  SelectPhotoView.swift
//  AI_Recognition
//
//  Created by Kostya Lee on 15/11/24.
//

import SwiftUI

struct SelectPhotoView: View {
    var body: some View {
        VStack {
            Text("AI Person Detection tool")
                .font(.title2).bold()
                .padding(8)
            Text("AI Person Detection tool allows you to extract foreground person from the input photo")
                .multilineTextAlignment(.center)
                .padding(.bottom, 40)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20.0, style: .continuous)
                        .padding()
                        .aspectRatio(1, contentMode: .fit)
                        .foregroundStyle(.gray).opacity(0.6)
                    Image("image")
                        .tint(.white)
                        .font(.title2)
                }
            })
            Text("Tap above to select photo")
                .padding(.bottom, 40)
                .foregroundStyle(.secondary)
            Button {
            } label: {
                Text("Extract")
                    .frame(maxWidth: .infinity)
                    .font(.title2)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .padding()
        }
    }
}

#Preview {
    SelectPhotoView()
}
