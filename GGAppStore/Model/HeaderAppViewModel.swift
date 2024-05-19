//
//  HeaderAppViewModel.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 18.05.2024.
//

import Foundation

struct HeaderAppViewModel {
	let app: AppInfo
}

extension HeaderAppViewModel: Identifiable {
	var id: String { app.id }
}
