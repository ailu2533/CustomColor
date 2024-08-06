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

public struct ColorMatcherResult: Sendable {
    public let predictColor: CustomColor?
    public let status: Int
    // DominantColor解析出的颜色
    public let extractedDominatorColors: [UIColor]

    init(predictColor: CustomColor? = nil, status: Int = 0, extractedDominatorColors: [UIColor] = []) {
        self.predictColor = predictColor
        self.status = status
        self.extractedDominatorColors = extractedDominatorColors
    }
}

public struct ColorMatcher: Sendable {
    private static func findClosestColor(in palette: [CustomColor], to targetColor: UIColor) -> CustomColor? {
        palette.min { color1, color2 in
            color1.uiColor.difference(from: targetColor) < color2.uiColor.difference(from: targetColor)
        }
    }

    public static func extractDominantColor(from image: UIImage) async -> ColorMatcherResult {
        guard let cgImage = image.cgImage else {
            return ColorMatcherResult()
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
                return ColorMatcherResult()
            }
            let majorityThreshold = dominantUIColors.count / 2
            let status = highestCount > majorityThreshold ? 1 : 0

            return ColorMatcherResult(predictColor: mostFrequentColor, status: status, extractedDominatorColors: dominantUIColors)
        }.value
    }
}
