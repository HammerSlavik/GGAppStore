//
//  GetButton.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 28.05.2024.
//

import SwiftUI

struct GetButton: View {
	var background: Color?
	init(background: Color? = nil) {
		self.background = background
	}
    var body: some View {
		Button {
			
		} label: {
			Text("GET")
				.frame(width: 72, height: 28)
				.background(background ?? Color.gray.opacity(0.15))
				.clipShape(Capsule())
				.font(.callout)
				.fontWeight(.bold)
		}
    }
}

#Preview {
	GetButton()
}
