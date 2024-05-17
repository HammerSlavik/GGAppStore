//
//  LargeGridCategoryView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct LargeGridCategoryView: View {
	private var gridItemLayout = [GridItem(.fixed(88)),
								  GridItem(.fixed(1/UIScreen.main.scale)),
								  GridItem(.fixed(88))]
	var body: some View {
		VStack {
			HStack {
				Text("iPhone Essentials")
				Spacer()
				Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
					Text("See All")
				})
			}
			ScrollView(.horizontal) {
				LazyHGrid(rows: gridItemLayout) {
					ForEach(0..<7) { index in
						LargeGridAppView()
							.containerRelativeFrame(.horizontal)
						if index % 2 != 1 {
							GridDivider()
						}
					}
				}
			}
			.scrollTargetLayout()
			.scrollTargetBehavior(.viewAligned(limitBehavior: .always))
		}
	}
}

#Preview {
    LargeGridCategoryView()
}
