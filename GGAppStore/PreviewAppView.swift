//
//  PreviewAppView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 17.05.2024.
//

import SwiftUI

struct PreviewAppView: View {
	var model: AppInfo
    var body: some View {
		VStack(alignment: .leading) {
			Image(model.previewImageName)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.aspectRatio(16/10, contentMode: .fit)
				.containerRelativeFrame(.horizontal, { width, _ in width * 0.6 })
				.clipShape(.rect(cornerRadius: 5))
				.overlay(
					RoundedRectangle(cornerRadius: 5)
						.strokeBorder(Color(white: 0.35).opacity(0.15), lineWidth: 1)
				)
			Text(model.previewTitle)
				.font(.system(size: 16, weight: .light))
		}
		.containerRelativeFrame(.horizontal, { width, _ in width * 0.6 })
    }
}

#Preview {
    PreviewAppView(model: MockData.apps[5])
}
