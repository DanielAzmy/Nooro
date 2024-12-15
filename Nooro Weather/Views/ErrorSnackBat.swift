//
//  ErrorSnackBat.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import SwiftUI


struct SnackbarView: View {
    let message: String
    let duration: TimeInterval
    let onDismiss: () -> Void
    @State var isVisible: Bool

    var body: some View {
        VStack {
            Spacer()
            if isVisible {
                Text(message)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(8)
                    .shadow(radius: 5)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                            withAnimation {
                                isVisible = false
                            }
                            onDismiss()
                        }
                    }
            }
        }
        .padding(.bottom, 20)
        .onAppear {
            withAnimation {
                isVisible = true
            }
        }
    }
}
