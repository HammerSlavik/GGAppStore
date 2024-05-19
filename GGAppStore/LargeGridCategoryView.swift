//
//  LargeGridCategoryView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

private let iconSide: CGFloat = 88
private let spacing: CGFloat = 10

struct LargeGridCategoryView: View {
	var models: [AppInfo]
	private let gridItemLayout = [GridItem(.fixed(iconSide)),
								  GridItem(.fixed(1/UIScreen.main.scale)),
								  GridItem(.fixed(iconSide))]
	var body: some View {
		VStack(spacing: 6) {
			HStack {
				Text("iPhone Essentials")
					.font(.title2)
					.fontWeight(.semibold)
				Spacer()
				Button(action: {}, label: {
					Text("See All")
				})
			}
			ScrollView(.horizontal) {
				LazyHGrid(rows: gridItemLayout, spacing: spacing) {
					ForEach(Array(models.enumerated()), id: \.offset) { index, model in
						LargeGridAppView(model: model)
							.containerRelativeFrame(.horizontal)
						if index % 2 != 1 {
							GridDivider()
								.padding(.leading, iconSide + spacing)
						}
					}
				}
			}
			.scrollTargetLayout()
			.scrollTargetBehavior(.viewAligned(limitBehavior: .always))
			.scrollIndicators(.hidden)
		}
	}
}

#Preview {
	LargeGridCategoryView(models: MockData.apps)
}
