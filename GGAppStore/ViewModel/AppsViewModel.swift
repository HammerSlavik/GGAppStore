//
//  AppsViewModel.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 18.05.2024.
//

import Foundation

class AppsViewModel: ObservableObject {
	@Published var appInfos = [AppInfo]()
	
	private let service: AppViewService
	
	init(service: AppViewService) {
		self.service = service
		Task { await fetchHeaderAppViewModels() }
	}
	
	func fetchHeaderAppViewModels() async {
		do {
			appInfos = try await service.fetchHeaderAppViewModels()
		} catch {
			print("DEBUG: Failed to fetch headerAppViewModels with error: \(error)")
		}
	}
}
