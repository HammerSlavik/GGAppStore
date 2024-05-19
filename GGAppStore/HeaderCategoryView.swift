//
//  HeaderCategoryView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct HeaderCategoryView: View {
	var models: [AppInfo]
    var body: some View {
		ScrollView(.horizontal) {
			HStack(spacing: 10) {
				ForEach(models) { model in
					HeaderAppView(model: model)
						.containerRelativeFrame(.horizontal)
				}
			}
		}
		.scrollTargetLayout()
		.scrollTargetBehavior(.viewAligned(limitBehavior: .always))
		.scrollIndicators(.hidden)
    }
}

#Preview {
	HeaderCategoryView(models: MockData.apps)
}
