//
//  SmallGridAppView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 17.05.2024.
//

import SwiftUI

struct SmallGridAppView: View {
	var model: AppInfo
    var body: some View {
		HStack(spacing: 10) {
			Image(model.iconName)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.clipShape(.rect(cornerRadius: 14))
				.overlay(
					RoundedRectangle(cornerRadius: 14)
						.strokeBorder(Color(white: 0.35).opacity(0.15), lineWidth: 1)
				)
			VStack(alignment: .leading, spacing: 2) {
				Text(model.title)
					.font(.system(size: 18))
					.fontWeight(.regular)
				Text(model.subtitle)
					.font(.system(size: 14))
					.fontWeight(.regular)
					.foregroundStyle(.gray)
					.lineLimit(1)
			}
			.frame(maxWidth: .infinity, alignment: .leading)
			VStack(spacing: 5) {
				Spacer()
					.frame(height: 12)
				GetButton()
				Text("In-App Purchases")
					.font(.system(size: 8))
					.fontWeight(.light)
					.foregroundStyle(Color(white: 0.4))
			}
		}
		.frame(height: 62)
    }
}

#Preview {
    SmallGridAppView(model: MockData.apps[0])
}
