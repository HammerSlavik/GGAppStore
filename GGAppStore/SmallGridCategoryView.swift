//
//  SmallGridCategoryView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct SmallGridCategoryView: View {
	private var gridItemLayout = [GridItem(.fixed(62)), 
								  GridItem(.fixed(1/UIScreen.main.scale)),
								  GridItem(.fixed(62)),
								  GridItem(.fixed(1/UIScreen.main.scale)),
								  GridItem(.fixed(62))]
	var body: some View {
		VStack {
			HStack {
				Text("Must-Have Apps")
				Spacer()
				Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
					Text("See All")
				})
			}
			ScrollView(.horizontal) {
				LazyHGrid(rows: gridItemLayout) {
					ForEach(0..<7) { index in
						SmallGridAppView()
							.containerRelativeFrame(.horizontal)
						if index % 3 != 2 {
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
    SmallGridCategoryView()
}
