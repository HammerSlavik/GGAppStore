//
//  PreviewCategoryView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct PreviewCategoryView: View {
    var body: some View {
		VStack(alignment: .leading) {
			Text("Designed for Accessibility")
			ScrollView(.horizontal) {
				HStack {
					ForEach(0..<5) { index in
						PreviewAppView()
							.frame(width: UIScreen.main.bounds.width * 0.58)
					}
				}
			}
			.scrollTargetLayout()
			.scrollTargetBehavior(.viewAligned)
		}
    }
}

#Preview {
    PreviewCategoryView()
}
