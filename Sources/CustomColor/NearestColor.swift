//
//  File.swift
//  CustomColor
//
//  Created by ailu on 2024/8/3.
//

import ColorKit
import DominantColor
import Foundation
import UIKit

public struct ColorMatcher: Sendable {
    static func findClosestColor(in palette: [CustomColor], to targetColor: UIColor) -> CustomColor? {
        palette.min { color1, color2 in
            color1.uiColor.difference(from: targetColor) < color2.uiColor.difference(from: targetColor)
        }
    }

    public static func extractDominantColor(from image: UIImage) async -> (CustomColor?, Int) {
        guard let cgImage = image.cgImage else {
            return (nil, 0)
        }

        return await Task(priority: .userInitiated) {
            let dominantCGColors = dominantColorsInImage(cgImage)
            let dominantUIColors = dominantCGColors.map { UIColor(cgColor: $0) }
            
            let matchedColors = dominantUIColors.map {
                findClosestColor(in: ColorPalette.colors, to: $0)
            }

            let colorFrequency = matchedColors.reduce(into: [CustomColor: Int]()) { counts, color in
                counts[color, default: 0] += 1
            }

            guard let (mostFrequentColor, highestCount) = colorFrequency.max(by: { $0.value < $1.value }) else {
                return (nil, 0)
            }

            let majorityThreshold = dominantUIColors.count / 2
            return (mostFrequentColor, highestCount > majorityThreshold ? 1 : 0)
        }.value
    }
}
