//
//  AppViewService.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 18.05.2024.
//

import Foundation

struct AppViewService {
	func fetchHeaderAppViewModels() async throws -> [AppInfo] {
		MockData.apps
	}
}
