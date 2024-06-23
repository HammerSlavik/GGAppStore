//
//  HeaderAppView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct HeaderAppView: View {
	var model: AppInfo
	var isLightBackground: Bool {
		UIImage(named: model.previewImageName)?.averageColor?.isLight() ?? false
	}
	var bottomPanelAppearance: BottomPanelAppearance {
		isLightBackground ? BottomPanelDarkAppearance() : BottomPanelLightAppearance()
	}
    var body: some View {
		VStack(alignment: .leading) {
			Text("FEATURED")
				.font(.caption2)
				.fontWeight(.medium)
				.foregroundStyle(.blue)
			Text(model.previewTitle)
				.font(.title2)
			Text(model.previewSubtitle)
				.font(.title3)
				.foregroundStyle(.gray)
			Image(model.previewImageName)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.aspectRatio(16/10, contentMode: .fit)
				.containerRelativeFrame(.horizontal)
				.overlay(alignment: .bottom) {
					Rectangle()
						.frame(height: 68)
						.foregroundStyle(.clear)
						.background(.ultraThinMaterial)
						.environment(\.colorScheme, bottomPanelAppearance.colorScheme)
						.mask(LinearGradient(gradient: Gradient(colors: [.black, .black.opacity(0.8), .black.opacity(0.75), .clear]), startPoint: .bottom, endPoint: .top))
					HStack {
						Image(model.iconName)
							.resizable()
							.frame(width: 36, height: 36)
							.clipShape(.rect(cornerRadius: 7))
							.overlay(
								RoundedRectangle(cornerRadius: 7)
									.strokeBorder(Color(white: 0.35).opacity(0.15), lineWidth: 1)
							)
						VStack(alignment: .leading) {
							Text(model.title)
								.font(.callout)
								.foregroundStyle(bottomPanelAppearance.titleColor)
							Text(model.subtitle)
								.font(.caption)
								.fontWeight(.light)
								.foregroundStyle(bottomPanelAppearance.subtitleColor)
						}
						Spacer()
						VStack(spacing: 4) {
							Spacer()
								.frame(height: 10)
							GetButton(background: bottomPanelAppearance.buyButtonColor)
								.foregroundStyle(.white)
							Text("In-App Purchases")
								.font(.system(size: 8))
								.foregroundStyle(bottomPanelAppearance.inAppPurchaseColor)
						}
					}
					.frame(height: 36)
					.padding(.horizontal, 14)
				}
				.clipShape(.rect(cornerRadius: 5))
				.overlay(
					RoundedRectangle(cornerRadius: 5)
						.strokeBorder(Color(white: 0.35).opacity(0.15), lineWidth: 1)
				)
		}
    }
}

protocol BottomPanelAppearance {
	var titleColor: Color { get }
	var subtitleColor: Color { get }
	var buyButtonColor: Color { get }
	var inAppPurchaseColor: Color { get }
	var colorScheme: ColorScheme { get }
}

struct BottomPanelLightAppearance: BottomPanelAppearance {
	var titleColor = Color.white
	var subtitleColor = Color.white
	var buyButtonColor = Color(white: 0.8).opacity(0.65)
	var inAppPurchaseColor = Color(white: 0.9)
	var colorScheme = ColorScheme.dark
}

struct BottomPanelDarkAppearance: BottomPanelAppearance {
	var titleColor = Color.black
	var subtitleColor = Color.black
	var buyButtonColor = Color(white: 0.35).opacity(0.65)
	var inAppPurchaseColor = Color(white: 0.35)
	var colorScheme = ColorScheme.light
}

#Preview {
    HeaderAppView(model: MockData.apps[0])
}
