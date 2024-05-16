//
//  ContentView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct AppsView: View {
    var body: some View {
		ScrollView {
			VStack {
				HeaderCategoryView()
				SmallGridCategoryView()
				LargeGridCategoryView()
				PreviewCategoryView()
				SmallGridCategoryView()
				SmallGridCategoryView()
				PreviewCategoryView()
				SmallGridCategoryView()
				LargeGridCategoryView()
				Image(systemName: "globe")
					.imageScale(.large)
					.foregroundStyle(.tint)
				Text("Hello, world!")
			}
//			.padding()
		}
    }
}

#Preview {
    AppsView()
}
