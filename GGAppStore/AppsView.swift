//
//  ContentView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct AppsView: View {
	@StateObject var viewModel = AppsViewModel(service: AppViewService())
    var body: some View {
		ScrollView {
			VStack {
				HeaderCategoryView(models: viewModel.appInfos.shuffled())
				Spacer()
					.frame(height: 30)
				Divider()
				GridCategoryView(models: viewModel.appInfos.shuffled(), gridLayout: .small)
				Spacer()
					.frame(height: 30)
				Divider()
				GridCategoryView(models: viewModel.appInfos.shuffled(), gridLayout: .large)
				Spacer()
					.frame(height: 30)
				Divider()
				PreviewCategoryView(models: viewModel.appInfos.shuffled())
				Spacer()
					.frame(height: 30)
				Divider()
				GridCategoryView(models: viewModel.appInfos.shuffled(), gridLayout: .small)
				Spacer()
					.frame(height: 30)
				Divider()
				GridCategoryView(models: viewModel.appInfos.shuffled(), gridLayout: .small)
				Spacer()
					.frame(height: 30)
				Divider()
				PreviewCategoryView(models: viewModel.appInfos.shuffled())
				Spacer()
					.frame(height: 30)
				Divider()
				GridCategoryView(models: viewModel.appInfos.shuffled(), gridLayout: .large)
				Spacer()
					.frame(height: 30)
				Divider()
				GridCategoryView(models: viewModel.appInfos.shuffled(), gridLayout: .small)
				Spacer()
					.frame(height: 30)
			}
			.safeAreaPadding(.horizontal, 20)
		}
    }
}

#Preview {
    AppsView()
}
