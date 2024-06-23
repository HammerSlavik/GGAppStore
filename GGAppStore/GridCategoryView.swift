//
//  GridCategoryView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

private let spacing: CGFloat = 10

struct GridCategoryView: View {
	var models: [AppInfo]
	let gridLayout: GridLayout
	var body: some View {
		VStack(spacing: 6) {
			HStack {
				Text("Must-Have Apps")
					.font(.title2)
					.fontWeight(.semibold)
				Spacer()
				Button(action: {}, label: {
					Text("See All")
				})
			}
			ScrollView(.horizontal) {
				let rows = gridLayout.rows
				LazyHGrid(rows: rows, spacing: spacing) {
					let cellRowsCount = rows.count / 2 + 1
					ForEach(Array(models.enumerated()), id: \.offset) { index, model in
						gridLayout.cell(model: model)
							.containerRelativeFrame(.horizontal)
						if index % cellRowsCount != (cellRowsCount - 1) {
							GridDivider()
								.padding(.leading, gridLayout.iconSize + spacing)
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
	GridCategoryView(models: MockData.apps, gridLayout: .small)
}
