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
        CustomColor(name: String(localized: "Black"), red: 0, green: 0, blue: 0, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: String(localized: "White"), red: 255, green: 255, blue: 255, colorPreference: ColorBits.white.rawValue),
        CustomColor(name: String(localized: "Gray"), red: 128, green: 128, blue: 128, colorPreference: ColorBits.gray.rawValue),

        // 暖色系
        CustomColor(name: String(localized: "Red"), red: 255, green: 0, blue: 0, colorPreference: ColorBits.red.rawValue),
        CustomColor(name: String(localized: "Magenta"), red: 255, green: 0, blue: 255, colorPreference: ColorBits.magenta.rawValue),

        CustomColor(name: String(localized: "Orange"), red: 255, green: 165, blue: 0, colorPreference: ColorBits.orange.rawValue),
        CustomColor(name: String(localized: "Yellow"), red: 255, green: 255, blue: 0, colorPreference: ColorBits.yellow.rawValue),
        CustomColor(name: String(localized: "Pink"), red: 255, green: 192, blue: 203, colorPreference: ColorBits.pink.rawValue),

        // 冷色系
        CustomColor(name: String(localized: "Blue"), red: 0, green: 0, blue: 255, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: String(localized: "SkyBlue"), red: 130, green: 200, blue: 229, colorPreference: ColorBits.skyBlue.rawValue),
        CustomColor(name: String(localized: "DenimBlue"), red: 68, green: 109, blue: 146, colorPreference: ColorBits.denimBlue.rawValue),
        CustomColor(name: String(localized: "Teal"), red: 0, green: 128, blue: 128, colorPreference: ColorBits.teal.rawValue),
        CustomColor(name: String(localized: "Green"), red: 0, green: 255, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: String(localized: "Cyan"), red: 0, green: 255, blue: 255, colorPreference: ColorBits.cyan.rawValue),
        CustomColor(name: String(localized: "Purple"), red: 128, green: 0, blue: 128, colorPreference: ColorBits.purple.rawValue),

        // 中性色系
        CustomColor(name: String(localized: "Beige"), red: 245, green: 245, blue: 220, colorPreference: ColorBits.beige.rawValue),
        CustomColor(name: String(localized: "Khaki"), red: 240, green: 230, blue: 140, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(name: String(localized: "Brown"), red: 165, green: 42, blue: 42, colorPreference: ColorBits.brown.rawValue),
        CustomColor(name: String(localized: "Camel"), red: 193, green: 154, blue: 107, colorPreference: ColorBits.camel.rawValue),
        CustomColor(name: String(localized: "Gold"), red: 255, green: 215, blue: 0, colorPreference: ColorBits.gold.rawValue),
        CustomColor(name: String(localized: "Silver"), red: 192, green: 192, blue: 192, colorPreference: ColorBits.silver.rawValue),
    ]

    static func localizedString(_ key: String) -> String {
        return Bundle.module.localizedString(forKey: key, value: key, table: nil)
    }
}
