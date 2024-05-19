//
//  SmallGridCategoryView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

private let iconSide: CGFloat = 62
private let spacing: CGFloat = 10

struct SmallGridCategoryView: View {
	var models: [AppInfo]
	private let gridItemLayout = [GridItem(.fixed(iconSide)),
								  GridItem(.fixed(1/UIScreen.main.scale)),
								  GridItem(.fixed(iconSide)),
								  GridItem(.fixed(1/UIScreen.main.scale)),
								  GridItem(.fixed(iconSide))]
	var body: some View {
		VStack(spacing: 6) {
			HStack {
				Text("Must-Have Apps")
					.font(.title2)
					.fontWeight(.semibold)
				Spacer()
				Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
					Text("See All")
				})
			}
			ScrollView(.horizontal) {
				LazyHGrid(rows: gridItemLayout, spacing: spacing) {
					ForEach(Array(models.enumerated()), id: \.offset) { index, model in
						SmallGridAppView(model: model)
							.containerRelativeFrame(.horizontal)
						if index % 3 != 2 {
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
	SmallGridCategoryView(models: MockData.apps)
}
