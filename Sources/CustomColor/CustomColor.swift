import ColorKit
import SwiftUI
import UIKit

public struct CustomColor: Identifiable, Sendable, Hashable {
    public let name: String
    public let red: Int16
    public let green: Int16
    public let blue: Int16

    public let colorPreference: Int32

    public var hex: String {
        let r = String(format: "%02X", red)
        let g = String(format: "%02X", green)
        let b = String(format: "%02X", blue)
        return "#\(r)\(g)\(b)"
    }

    public var id: String {
        return hex
    }

    public var uiColor: UIColor {
        return UIColor(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1)
    }

    public var color: Color {
        Color(uiColor: uiColor)
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(red)
        hasher.combine(green)
        hasher.combine(blue)
    }

    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.red == rhs.blue &&
            lhs.green == rhs.green &&
            lhs.blue == rhs.blue
    }
}

//public extension CustomColor {
//    var diffs: [CGFloat] {
//        let currentColor = uiColor
//        return ColorPalette.baseColors.map { baseColor in
//            currentColor.difference(from: baseColor.uiColor).associatedValue
//        }
//    }
//
//    func calculateColorDifferences() -> [String: Float] {
//        var colorDiffs: [String: Float] = [:]
//
////        let t = CIE2000SquaredColorDifference()
//
//        for baseColor in ColorPalette.baseColors {
//            let diff = uiColor.difference(from: baseColor.uiColor).associatedValue
//            colorDiffs[baseColor.name] = Float(diff)
//        }
//
//        return colorDiffs
//    }
//}

public func sortByHue(_ colors: [CustomColor]) -> [CustomColor] {
    return colors.sorted { color1, color2 in
        let hue1 = color1.hue
        let hue2 = color2.hue
        return hue1 < hue2
    }
}

public func customSort(_ colors: [CustomColor]) -> [CustomColor] {
    return colors.sorted { color1, color2 in
        let hue1 = color1.hue
        let hue2 = color2.hue
        if abs(hue1 - hue2) < 0.3 { // 如果色相相近
            return color1.brightnessComponent < color2.brightnessComponent
        }
        return hue1 < hue2
    }
}

extension CustomColor {
    var hue: CGFloat {
        var hue: CGFloat = 0
        uiColor.getHue(&hue, saturation: nil, brightness: nil, alpha: nil)
        return hue
    }
}

public extension CustomColor {
    var brightnessComponent: CGFloat {
        var brightness: CGFloat = 0
        uiColor.getHue(nil, saturation: nil, brightness: &brightness, alpha: nil)
        return brightness
    }
}

public extension ColorPalette {
    static let baseSearchColors: [CustomColor] = [
        // 基本色系
        CustomColor(name: "黑色", red: 0, green: 0, blue: 0, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "白色", red: 255, green: 255, blue: 255, colorPreference: ColorBits.white.rawValue),
        CustomColor(name: "灰色", red: 128, green: 128, blue: 128, colorPreference: ColorBits.gray.rawValue),

        // 暖色系
        CustomColor(name: "红色", red: 255, green: 0, blue: 0, colorPreference: ColorBits.red.rawValue),
        CustomColor(name: "橙色", red: 255, green: 165, blue: 0, colorPreference: ColorBits.orange.rawValue),
        CustomColor(name: "黄色", red: 255, green: 255, blue: 0, colorPreference: ColorBits.yellow.rawValue),
        CustomColor(name: "粉色", red: 255, green: 192, blue: 203, colorPreference: ColorBits.pink.rawValue),

        // 冷色系
        CustomColor(name: "蓝色", red: 0, green: 0, blue: 255, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "青色", red: 0, green: 255, blue: 255, colorPreference: ColorBits.cyan.rawValue),
        CustomColor(name: "绿色", red: 0, green: 255, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "紫色", red: 128, green: 0, blue: 128, colorPreference: ColorBits.purple.rawValue),

        // 中性色系
        CustomColor(name: "米色", red: 245, green: 245, blue: 220, colorPreference: ColorBits.beige.rawValue),
        CustomColor(name: "卡其色", red: 240, green: 230, blue: 140, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(name: "棕色", red: 165, green: 42, blue: 42, colorPreference: ColorBits.brown.rawValue),
    ]
}
