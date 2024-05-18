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
				Spacer()
					.frame(height: 30)
				Divider()
				SmallGridCategoryView()
				Spacer()
					.frame(height: 30)
				Divider()
				LargeGridCategoryView()
				Spacer()
					.frame(height: 30)
				Divider()
				PreviewCategoryView()
				Spacer()
					.frame(height: 30)
				Divider()
				SmallGridCategoryView()
				Spacer()
					.frame(height: 30)
				Divider()
				SmallGridCategoryView()
				Spacer()
					.frame(height: 30)
				Divider()
				PreviewCategoryView()
				Spacer()
					.frame(height: 30)
				Divider()
				SmallGridCategoryView()
				Spacer()
					.frame(height: 30)
				Divider()
				LargeGridCategoryView()
				Spacer()
					.frame(height: 30)
				Image(systemName: "globe")
					.imageScale(.large)
					.foregroundStyle(.tint)
				Text("Hello, world!")
			}
//			.scrollClipDisabled()
			.safeAreaPadding(.horizontal, 20)
		}
    }
}

#Preview {
    AppsView()
}
