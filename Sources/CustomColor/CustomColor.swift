import ColorKit
import SwiftUI
import UIKit

public struct CustomColor: Identifiable {
    // MARK: Lifecycle

    init(name: LocalizedStringKey? = nil, red: Int16, green: Int16, blue: Int16, colorPreference: Int32) {
        self.name = name
        self.red = red
        self.green = green
        self.blue = blue
        self.colorPreference = colorPreference
    }

    // MARK: Public

    public let name: LocalizedStringKey?
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
}

extension CustomColor: Hashable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.red == rhs.blue &&
            lhs.green == rhs.green &&
            lhs.blue == rhs.blue
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(red)
        hasher.combine(green)
        hasher.combine(blue)
    }
}

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
