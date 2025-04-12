//
//  baseColors.swift
//  CustomColor
//
//  Created by Lu Ai on 2024/10/28.
//

import Foundation

public extension CustomColor {
    static let baseColors: [CustomColor] = [
        // 基本色系
        CustomColor(name: "Black", red: 0, green: 0, blue: 0, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "White", red: 255, green: 255, blue: 255, colorPreference: ColorBits.white.rawValue),
        CustomColor(name: "Gray", red: 128, green: 128, blue: 128, colorPreference: ColorBits.gray.rawValue),

        // 暖色系
        CustomColor(name: "Red", red: 255, green: 0, blue: 0, colorPreference: ColorBits.red.rawValue),
        CustomColor(name: "Orange", red: 255, green: 165, blue: 0, colorPreference: ColorBits.orange.rawValue),
        CustomColor(name: "Yellow", red: 255, green: 255, blue: 0, colorPreference: ColorBits.yellow.rawValue),
        CustomColor(name: "Pink", red: 255, green: 192, blue: 203, colorPreference: ColorBits.pink.rawValue),

        // 冷色系
        CustomColor(name: "Blue", red: 0, green: 0, blue: 255, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Cyan", red: 0, green: 255, blue: 255, colorPreference: ColorBits.cyan.rawValue),
        CustomColor(name: "Green", red: 0, green: 255, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Purple", red: 128, green: 0, blue: 128, colorPreference: ColorBits.purple.rawValue),

        // 中性色系
        CustomColor(name: "Beige", red: 245, green: 245, blue: 220, colorPreference: ColorBits.beige.rawValue),
        CustomColor(name: "Khaki", red: 240, green: 230, blue: 140, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(name: "Brown", red: 165, green: 42, blue: 42, colorPreference: ColorBits.brown.rawValue),

        CustomColor(name: "Camel", red: 193, green: 154, blue: 107, colorPreference: ColorBits.camel.rawValue),
        CustomColor(name: "Magenta", red: 255, green: 0, blue: 255, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(name: "Teal", red: 0, green: 128, blue: 128, colorPreference: ColorBits.teal.rawValue),
        CustomColor(name: "Gold", red: 255, green: 215, blue: 0, colorPreference: ColorBits.gold.rawValue),
        CustomColor(name: "Silver", red: 192, green: 192, blue: 192, colorPreference: ColorBits.silver.rawValue),
    ]

    static func localizedString(_ key: String) -> String {
        return Bundle.module.localizedString(forKey: key, value: key, table: nil)
    }
}
