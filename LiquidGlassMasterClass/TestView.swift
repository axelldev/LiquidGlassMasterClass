//
//  TestView.swift
//  LiquidGlassMasterClass
//
//  Created by axell solis on 06/09/25.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue.gradient)
                .ignoresSafeArea()

            VStack(spacing: 16) {
                Image(systemName: "globe")
                    .imageScale(.large)

                Text("Hello World")
                    .padding()
                    .glassEffect(.clear.tint(.green))

                Text("Hello World")
                    .padding()
                    .glassEffect(.clear.tint(.orange).interactive())

                Text("Hello World!")
                    .padding()
                    .glassEffect(
                        .regular.tint(.blue).interactive(),
                        in: .rect(cornerRadius: 10)
                    )

                Button {

                } label: {
                    Text("Press")
                }
                .buttonStyle(.borderedProminent)
                .foregroundStyle(.red)
                .tint(.white)

                Button {

                } label: {
                    Text("Press")
                }
                .buttonStyle(.glassProminent)
                .tint(.orange)
            }
        }
    }
}

#Preview {
    TestView()
}
