import ColorKit
import SwiftUI
import UIKit

struct CustomColor: Identifiable {
    let name: String
    let red: Int16
    let green: Int16
    let blue: Int16

    let colorPreference: Int32

    var hex: String {
        let r = String(format: "%02X", red)
        let g = String(format: "%02X", green)
        let b = String(format: "%02X", blue)
        return "#\(r)\(g)\(b)"
    }

    var id: String {
        return hex
    }

    var uiColor: UIColor {
        return UIColor(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1)
    }

    var color: Color {
        Color(uiColor: uiColor)
    }
}

extension CustomColor {
    var diffs: [CGFloat] {
        let currentColor = uiColor
        return ColorPalette.baseColors.map { baseColor in
            currentColor.difference(from: baseColor.uiColor).associatedValue
        }
    }



    func calculateColorDifferences() -> [String: Float] {
        var colorDiffs: [String: Float] = [:]

//        let t = CIE2000SquaredColorDifference()

        for baseColor in ColorPalette.baseColors {
            let diff = uiColor.difference(from: baseColor.uiColor).associatedValue
            colorDiffs[baseColor.name] = Float(diff)
        }

        return colorDiffs
    }
}


func sortByHue(_ colors: [CustomColor]) -> [CustomColor] {
    return colors.sorted { color1, color2 in
        let hue1 = color1.hue
        let hue2 = color2.hue
        return hue1 < hue2
    }
}

func customSort(_ colors: [CustomColor]) -> [CustomColor] {
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

extension CustomColor {
    var brightnessComponent: CGFloat {
        var brightness: CGFloat = 0
        uiColor.getHue(nil, saturation: nil, brightness: &brightness, alpha: nil)
        return brightness
    }
}
