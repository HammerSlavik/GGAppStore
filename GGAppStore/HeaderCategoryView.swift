//
//  HeaderCategoryView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct HeaderCategoryView: View {
    var body: some View {
		ScrollView(.horizontal) {
			HStack(spacing: 10) {
				ForEach(0..<5) { index in
					HeaderAppView()
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
    HeaderCategoryView()
}
