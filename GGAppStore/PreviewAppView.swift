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
			Text("Track Your Hearing Health in Mimi")
		}
    }
}

#Preview {
    PreviewAppView()
}
