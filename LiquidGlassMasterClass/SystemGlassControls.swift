//
//  LiquidGlassControls.swift
//  LiquidGlassPractice
//
//  Created by axell solis on 06/09/25.
//
import SwiftUI

struct SystemGlassControls: View {
    @State private var sliderValue = 80.0

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [
                        Color.purple.opacity(0.3),
                        Color.pink.opacity(0.2),
                        Color.orange.opacity(0.1),
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack {
                    HStack {
                        Text("Volume")
                        Spacer()
                        Text("\(Int(sliderValue))%")
                    }
                    .accessibilityHidden(true)
                    
                    Slider(value: $sliderValue, in: 1...100)
                        .accessibilityValue("Valume \(sliderValue)%")
                }
            }
            .safeAreaPadding()
        }
    }
}

#Preview {
    SystemGlassControls()
}
