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
			HStack(spacing: 15) {
				HeaderAppView()
				HeaderAppView()
				HeaderAppView()
				HeaderAppView()
			}
		}
    }
}

#Preview {
    HeaderCategoryView()
}
