//
//  HeaderAppView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 16.05.2024.
//

import SwiftUI

struct HeaderAppView: View {
	private var width: CGFloat {
		UIScreen.main.bounds.width - 40
	}
	private var height: CGFloat {
		width / 1.55
	}
    var body: some View {
		VStack(alignment: .leading) {
			Text("PlantIn: Plant Snap Identifier")
				.font(.title2)
			Text("AI plant identifier")
				.font(.title3)
				.foregroundStyle(.gray)
			ZStack(alignment: .bottom) {
				Image(.appPreviewPlantIn)
					.resizable()
				HStack {
					Image(.appIconPlantIn)
						.resizable()
						.frame(width: 32, height: 32)
					VStack(alignment: .leading) {
						Text("PlantIn: Plant Snap Identifier")
							.font(.callout)
						Text("AI plant identifier")
							.font(.caption)
							.foregroundStyle(.gray)
					}
					VStack {
						Button {
							
						} label: {
							Text("GET")
								.frame(width: 72, height: 28)
								.background(Color.gray.opacity(0.75))
								.clipShape(Capsule())
								.font(.system(size: 14))
								.fontWeight(.semibold)
								.foregroundStyle(.white)
						}
						Text("In-App Purchases")
							.font(.system(size: 8))
							.foregroundStyle(.gray)
					}
				}
				.frame(height: 32)
				.padding()
			}
			.frame(width: width, height: height)
		}
    }
}

#Preview {
    HeaderAppView()
}
