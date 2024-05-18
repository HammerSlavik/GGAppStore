//
//  PreviewAppView.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 18.05.2024.
//

import SwiftUI

struct PreviewAppView: View {
    var body: some View {
		VStack(alignment: .leading) {
			Image(.appPreviewPlantIn)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.clipShape(.rect(cornerRadius: 5))
				.overlay(
					RoundedRectangle(cornerRadius: 5)
						.strokeBorder(Color(white: 0.35).opacity(0.15), lineWidth: 1)
				)
			Text("Track Your Hearing Health in Mimi")
				.font(.system(size: 16, weight: .light))
		}
    }
}

#Preview {
    PreviewAppView()
}
