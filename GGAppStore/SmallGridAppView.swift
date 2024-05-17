//
//  SmallGridAppView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 17.05.2024.
//

import SwiftUI

struct SmallGridAppView: View {
    var body: some View {
		HStack(alignment: .bottom) {
			Image(.appIconPlantIn)
				.resizable()
				.aspectRatio(contentMode: .fit)
			VStack(alignment: .leading) {
				Text("PlantIn: Plant Snap Identifier saasdasdf asd sadasdsa dsad asd asd asd asd asd")
					.font(.callout)
				Text("AI plant identifier sad asd asd sad asdasd asd sad sa dadasdasda")
					.font(.caption)
					.foregroundStyle(.gray)
			}
			VStack {
				Button {
					
				} label: {
					Text("GET")
						.frame(width: 72, height: 28)
						.background(Color.gray.opacity(0.2))
						.clipShape(Capsule())
						.font(.system(size: 14))
						.fontWeight(.semibold)
				}
				Text("In-App Purchases")
					.font(.system(size: 8))
					.foregroundStyle(.gray)
			}
		}
		.frame(height: 62)
    }
}

#Preview {
    SmallGridAppView()
}
