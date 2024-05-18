//
//  SmallGridAppView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 17.05.2024.
//

import SwiftUI

struct SmallGridAppView: View {
    var body: some View {
		HStack(spacing: 10) {
			Image(.appIconPlantIn)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.clipShape(.rect(cornerRadius: 14))
				.overlay(
					RoundedRectangle(cornerRadius: 14)
						.strokeBorder(Color(white: 0.35).opacity(0.15), lineWidth: 1)
				)
			VStack(alignment: .leading, spacing: 2) {
				Text("VivaVideo - Video Editor&Maker")
					.font(.system(size: 18))
					.fontWeight(.regular)
				Text("Photo Media Maker with Multiple something")
					.font(.system(size: 14))
					.fontWeight(.regular)
					.foregroundStyle(.gray)
					.lineLimit(1)
			}
			VStack(spacing: 5) {
				Spacer()
					.frame(height: 12)
				Button {
					
				} label: {
					Text("GET")
						.frame(width: 72, height: 28)
						.background(Color.gray.opacity(0.15))
						.clipShape(Capsule())
						.font(.system(size: 14))
						.fontWeight(.bold)
				}
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
    SmallGridAppView()
}
