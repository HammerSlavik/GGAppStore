//
//  GridLayout.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 28.05.2024.
//

import SwiftUI

enum GridLayout {
	case small
	case large
	
	var iconSize: CGFloat {
		switch self {
		case .small: 62
		case .large: 88
		}
	}
	
	var rows: [GridItem] {
		switch self {
		case .small: [GridItem(.fixed(iconSize)),
					  GridItem(.fixed(1/UIScreen.main.scale)),
					  GridItem(.fixed(iconSize)),
					  GridItem(.fixed(1/UIScreen.main.scale)),
					  GridItem(.fixed(iconSize))]
		case .large: [GridItem(.fixed(iconSize)),
					  GridItem(.fixed(1/UIScreen.main.scale)),
					  GridItem(.fixed(iconSize))]
		}
	}
	
	@ViewBuilder
	func cell(model: AppInfo) -> some View {
		switch self {
		case .small: SmallGridAppView(model: model)
		case .large: LargeGridAppView(model: model)
		}
	}
}
