//
//  LargeGridCategoryView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

private let iconSide: CGFloat = 88

struct LargeGridCategoryView: View {
	private var gridItemLayout = [GridItem(.fixed(iconSide)),
								  GridItem(.fixed(1/UIScreen.main.scale)),
								  GridItem(.fixed(iconSide))]
	var body: some View {
		VStack {
			HStack {
				Text("iPhone Essentials")
					.font(.title2)
					.fontWeight(.semibold)
				Spacer()
				Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
					Text("See All")
				})
			}
			ScrollView(.horizontal) {
				LazyHGrid(rows: gridItemLayout, spacing: 10) {
					ForEach(0..<7) { index in
						LargeGridAppView()
							.containerRelativeFrame(.horizontal)
						if index % 2 != 1 {
							GridDivider()
								.padding(.leading, iconSide + 8)
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
    LargeGridCategoryView()
}
