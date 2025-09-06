//
//  LiquidButtonChupi.swift
//  LiquidGlassMasterClass
//
//  Created by axell solis on 06/09/25.
//

import SwiftUI

struct LiquidButtonChupi: View {
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

                } label: {
                    Image(systemName: "plus")
                        .font(.title2)
                        .bold()
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
