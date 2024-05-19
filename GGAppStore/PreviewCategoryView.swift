//
//  PreviewCategoryView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct PreviewCategoryView: View {
	var models: [AppInfo]
    var body: some View {
		VStack(alignment: .leading, spacing: 6) {
			Text("Our Top Ten...")
				.font(.title2)
				.fontWeight(.semibold)
			ScrollView(.horizontal) {
				HStack(alignment: .top) {
					ForEach(models) { model in
						PreviewAppView(model: model)
					}
				}
			}
			.scrollTargetLayout()
			.scrollTargetBehavior(.viewAligned)
			.scrollIndicators(.hidden)
		}
    }
}

#Preview {
    PreviewCategoryView(models: MockData.apps)
}
