//
//  HeaderAppView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct HeaderAppView: View {
    var body: some View {
		VStack(alignment: .leading) {
			Text("FEATURED")
				.font(.caption2)
				.fontWeight(.medium)
				.foregroundStyle(.blue)
			Text("PlantIn: Plant Snap Identifier")
				.font(.title2)
			Text("AI plant identifier")
				.font(.title3)
				.foregroundStyle(.gray)
			Image(.appPreviewPlantIn)
				.resizable()
				.aspectRatio(1.55, contentMode: .fit)
				.overlay(alignment: .bottom) {
					Rectangle()
						.frame(height: 64)
						.foregroundStyle(.clear)
						.background(.ultraThinMaterial)
						.mask(LinearGradient(gradient: Gradient(colors: [.black, .black.opacity(0.7), .clear]), startPoint: .bottom, endPoint: .top))
					HStack {
						Image(.appIconPlantIn)
							.resizable()
							.frame(width: 36, height: 36)
							.clipShape(.rect(cornerRadius: 7))
							.overlay(
								RoundedRectangle(cornerRadius: 7)
									.strokeBorder(Color(white: 0.35).opacity(0.15), lineWidth: 1)
							)
						VStack(alignment: .leading) {
							Text("PlantIn: Plant Snap Identifier")
								.font(.callout)
							Text("AI plant identifier")
								.font(.caption)
								.fontWeight(.light)
						}
						VStack(spacing: 3) {
							Spacer()
								.frame(height: 12)
							Button {
								
							} label: {
								Text("GET")
									.frame(width: 72, height: 28)
									.background(Color(white: 0.35).opacity(0.65))
									.clipShape(Capsule())
									.font(.callout)
									.fontWeight(.bold)
									.foregroundStyle(.white)
							}
							Text("In-App Purchases")
								.font(.system(size: 8))
								.foregroundStyle(.gray)
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

#Preview {
    HeaderAppView()
}
