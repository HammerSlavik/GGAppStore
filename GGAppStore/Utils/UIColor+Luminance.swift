//
//  UIColor+Luminance.swift
//  GGAppStore
//
//  Created by Sviatoslav Yakobchuk on 19.05.2024.
//

import UIKit

extension UIColor {
	func luminance() -> Double {
		var r, g, b, a: CGFloat
		(r, g, b, a) = (0, 0, 0, 0)
		getRed(&r, green: &g, blue: &b, alpha: &a)
		return 0.2126 * r + 0.7152 * g + 0.0722 * b
	}
	
	func isLight() -> Bool {
		luminance() > 0.5
	}
}
