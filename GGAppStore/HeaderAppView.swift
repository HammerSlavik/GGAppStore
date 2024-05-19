//
//  HeaderAppView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct HeaderAppView: View {
	var model: HeaderAppViewModel
	var isLightBackground: Bool {
		UIImage(named: model.app.previewImageName)?.averageColor?.isLight() ?? false
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
			Text(model.app.previewTitle)
				.font(.title2)
			Text(model.app.previewSubtitle)
				.font(.title3)
				.foregroundStyle(.gray)
			Image(model.app.previewImageName)
				.resizable()
				.aspectRatio(1.55, contentMode: .fit)
				.overlay(alignment: .bottom) {
					Rectangle()
						.frame(height: 64)
						.foregroundStyle(.clear)
						.background(.ultraThinMaterial)
						.environment(\.colorScheme, bottomPanelAppearance.colorScheme)
						.mask(LinearGradient(gradient: Gradient(colors: [.black, .black.opacity(0.8), .black.opacity(0.75), .clear]), startPoint: .bottom, endPoint: .top))
					HStack {
						Image(model.app.iconName)
							.resizable()
							.frame(width: 36, height: 36)
							.clipShape(.rect(cornerRadius: 7))
							.overlay(
								RoundedRectangle(cornerRadius: 7)
									.strokeBorder(Color(white: 0.35).opacity(0.15), lineWidth: 1)
							)
						VStack(alignment: .leading) {
							Text(model.app.title)
								.font(.callout)
								.foregroundStyle(bottomPanelAppearance.titleColor)
							Text(model.app.subtitle)
								.font(.caption)
								.fontWeight(.light)
								.foregroundStyle(bottomPanelAppearance.subtitleColor)
						}
						Spacer()
						VStack(spacing: 3) {
							Spacer()
								.frame(height: 11)
							Button {
								
							} label: {
								Text("GET")
									.frame(width: 72, height: 28)
									.background(bottomPanelAppearance.buyButtonColor)
									.clipShape(Capsule())
									.font(.callout)
									.fontWeight(.bold)
									.foregroundStyle(.white)
							}
							Text("In-App Purchases")
								.font(.system(size: 8))
								.foregroundStyle(bottomPanelAppearance.inAppPurchaseColor)
						}
					}
					.frame(height: 36)
					.padding(.horizontal, 13)
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
    HeaderAppView(model: HeaderAppViewModel(app: MockData.apps[0]))
}
