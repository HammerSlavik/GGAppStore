//
//  LargeGridAppView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 18.05.2024.
//

import SwiftUI

struct LargeGridAppView: View {
    var body: some View {
		HStack(spacing: 10) {
			Image(.appIconPlantIn)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.clipShape(.rect(cornerRadius: 20))
				.overlay(
					RoundedRectangle(cornerRadius: 20)
						.strokeBorder(Color(white: 0.35).opacity(0.15), lineWidth: 1)
				)
			VStack(alignment: .leading) {
				Text("PlantIn: Plant Snap Identifier saasdasdf asd sadasdsa dsad asd asd asd asd asd")
					.font(.system(size: 18))
					.fontWeight(.regular)
				Spacer()
					.frame(height: 2)
				Text("AI plant identifier sad asd asd sad asdasd asd sad sa dadasdasda")
					.font(.system(size: 14))
					.fontWeight(.regular)
					.foregroundStyle(.gray)
				Spacer()
				HStack {
					Button {
						
					} label: {
						Text("GET")
							.frame(width: 72, height: 28)
							.background(Color.gray.opacity(0.15))
							.clipShape(Capsule())
							.font(.callout)
							.fontWeight(.bold)
					}
					Text("In-App\nPurchases")
						.font(.system(size: 8))
						.foregroundStyle(.gray)
				}
			}
		}
		.frame(height: 88)
    }
}

#Preview {
    LargeGridAppView()
}
