//
//  MockData.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 18.05.2024.
//

import Foundation

struct MockData {
	
	static let apps: [AppInfo] = [
		.init(
			id: NSUUID().uuidString,
			title: "PlantIn: Plant Snap Identifier",
			subtitle: "Plants Identification & Care",
			previewTitle: "PlantIn: Plant Snap Identifier",
			previewSubtitle: "AI plant identifier",
			iconName: "App_Icon_PlantIn",
			previewImageName: "App_Preview_PlantIn"
		),
		.init(
			id: NSUUID().uuidString,
			title: "SnowRunner",
			subtitle: "Simulation",
			previewTitle: "Ditch the Road in SnowRunner",
			previewSubtitle: "Can you survive the drive?",
			iconName: "App_Icon_SnowRunner",
			previewImageName: "App_Preview_SnowRunner"
		),
		.init(
			id: NSUUID().uuidString,
			title: "Amazon Prime Video",
			subtitle: "Originals, movies, TV, sports",
			previewTitle: "Amazon Prime Video",
			previewSubtitle: "Originals, movies, TV, sports",
			iconName: "App_Icon_PrimeVideo",
			previewImageName: "App_Preview_PrimeVideo"
		),
		.init(
			id: NSUUID().uuidString,
			title: "Messenger",
			subtitle: "Text, Voice & Video chat",
			previewTitle: "Messenger",
			previewSubtitle: "Text, Voice & Video chat",
			iconName: "App_Icon_Messenger",
			previewImageName: "App_Preview_Messenger"
		),
		.init(
			id: NSUUID().uuidString,
			title: "Duolingo - Languages & More",
			subtitle: "Learn Spanish, French, German",
			previewTitle: "Duolingo",
			previewSubtitle: "A fun way to learn a language",
			iconName: "App_Icon_Duolingo",
			previewImageName: "App_Preview_Duolingo"
		)
	]
}
