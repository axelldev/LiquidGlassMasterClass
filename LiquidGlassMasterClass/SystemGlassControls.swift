//
//  LiquidGlassControls.swift
//  LiquidGlassPractice
//
//  Created by axell solis on 06/09/25.
//
import SwiftUI

struct SystemGlassControls: View {
    @State private var sliderValue = 80.0
    @State private var isOn = false
    @State private var selectedOption = 0

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

                ScrollView {
                    scroll
                    scroll
                    scroll
                    scroll
                }

            }
            .safeAreaPadding()
            .navigationTitle("Elements")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup {
                    Button {

                    } label: {
                        Label("Speaker", systemImage: "plus")
                    }

                    Button {

                    } label: {
                        Label("Speaker", systemImage: "minus")
                    }
                }

                ToolbarItem(placement: .topBarLeading) {
                    Button {

                    } label: {
                        Label("Speaker", systemImage: "speaker")
                    }
                }

                ToolbarSpacer(.fixed, placement: .topBarLeading)

                ToolbarItem(placement: .topBarLeading) {
                    Button {

                    } label: {
                        Label("Speaker", systemImage: "speaker.slash")
                    }
                }

                ToolbarItem(placement: .bottomBar) {
                    Button {
                        
                    } label: {
                        Label("Speaker", systemImage: "speaker.slash")
                    }
                }
                
                ToolbarSpacer(placement: .bottomBar)
                
                ToolbarItemGroup(placement: .bottomBar) {
                    Button {

                    } label: {
                        Label("Speaker", systemImage: "plus")
                    }
                    Button {

                    } label: {
                        Label("Speaker", systemImage: "minus")
                    }
                }
            }
        }
    }

    var scroll: some View {
        VStack {
            HStack {
                Text("Volume")
                Spacer()
                Text("\(Int(sliderValue))%")
            }
            .accessibilityHidden(true)

            Slider(value: $sliderValue, in: 1...100)
                .accessibilityValue("Valume \(sliderValue)%")

            Toggle(isOn: $isOn) {
                Text("Enabled")
            }

            Picker("Select an option", selection: $selectedOption) {
                Text("Option 1").tag(5)
                Text("Option 2").tag(1)
                Text("Option 3").tag(2)
            }
            .pickerStyle(.segmented)
        }
        .padding()
        .glassEffect(.clear, in: .rect(cornerRadius: 10))
    }
}

#Preview {
    SystemGlassControls()
}
