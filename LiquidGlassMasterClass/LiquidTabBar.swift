//
//  LiquidTabBar.swift
//  LiquidGlassMasterClass
//
//  Created by axell solis on 06/09/25.
//

import SwiftUI

struct LiquidTabBar: View {
    @State private var search = ""

    var body: some View {
        TabView {
            Tab("Library", systemImage: "books.vertical") {
                ScrollView {
                    LazyVGrid(
                        columns: [GridItem(.adaptive(minimum: 100))],
                    ) {
                        ForEach(1..<50) { _ in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.blue)
                                .frame(width: 100, height: 100)
                        }
                    }
                }
            }

            Tab("Documents", systemImage: "document") {
                Text("Documents")
            }

            Tab(role: .search) {
                NavigationStack {
                    Text("Search")
                }
            }
        }
        .searchable(text: $search)
        .tabBarMinimizeBehavior(.onScrollDown)
    }
}

#Preview {
    LiquidTabBar()
}
