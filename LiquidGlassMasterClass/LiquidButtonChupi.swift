//
//  LiquidButtonChupi.swift
//  LiquidGlassMasterClass
//
//  Created by axell solis on 06/09/25.
//

import SwiftUI

struct LiquidButtonChupi: View {
    @State private var expanded = false

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0..<20) { index in
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                LinearGradient(
                                    colors: [
                                        .blue.opacity(0.3),
                                        .purple.opacity(0.3),
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(height: 120)
                            .overlay {
                                Text("Card \(index + 1)")
                                    .font(.headline)
                                    .foregroundStyle(.primary)
                            }
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("LiquidGlassFAB")
            .navigationBarTitleDisplayMode(.large)
            .overlay(alignment: .bottomTrailing) {
                Button {
                    withAnimation {
                        expanded.toggle()
                    }
                } label: {
                    Image(systemName: expanded ? "xmark" : "plus")
                        .font(.title2)
                        .bold()
                        .rotationEffect(.degrees(expanded ? 90 : 0))
                }
                .padding()
                .buttonStyle(.glass)
                .buttonBorderShape(.circle)
                .controlSize(.large)
            }
        }
    }
}

#Preview {
    LiquidButtonChupi()
}
