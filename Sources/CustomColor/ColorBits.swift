//
//  File.swift
//  CustomColor
//
//  Created by ailu on 2024/8/3.
//

import Foundation
import SwiftUI

// MARK: - BaseColors

struct BaseColors: OptionSet {
    // 基础颜色定义
    static let black = BaseColors(rawValue: 1) // 2^0
    static let white = BaseColors(rawValue: 2) // 2^1
    static let gray = BaseColors(rawValue: 4) // 2^2
    static let red = BaseColors(rawValue: 8) // 2^3
    static let orange = BaseColors(rawValue: 16) // 2^4
    static let yellow = BaseColors(rawValue: 32) // 2^5
    static let pink = BaseColors(rawValue: 64) // 2^6
    static let blue = BaseColors(rawValue: 128) // 2^7
    static let cyan = BaseColors(rawValue: 256) // 2^8
    static let green = BaseColors(rawValue: 512) // 2^9
    static let purple = BaseColors(rawValue: 1024) // 2^10
    static let beige = BaseColors(rawValue: 2048) // 2^11
    static let khaki = BaseColors(rawValue: 4096) // 2^12
    static let brown = BaseColors(rawValue: 8192) // 2^13
    static let camel = BaseColors(rawValue: 1 << 14) // 驼色
    static let magenta = BaseColors(rawValue: 1 << 15) // 洋红色
    static let teal = BaseColors(rawValue: 1 << 16) // 鸭绿色
    static let gold = BaseColors(rawValue: 1 << 17)
    static let silver = BaseColors(rawValue: 1 << 18)
    static let skyBlue = BaseColors(rawValue: 1 << 19) // 天空蓝
    static let denimBlue = BaseColors(rawValue: 1 << 20) // 牛仔蓝
    static let oliveGreen = BaseColors(rawValue: 1 << 21) // 橄榄绿

    let rawValue: Int64
}

// MARK: - ColorBits

public enum ColorBits: Int64, CaseIterable {
    case black = 1 // 2^0
    case white = 2 // 2^1
    case gray = 4 // 2^2
    case red = 8 // 2^3
    case orange = 16 // 2^4
    case yellow = 32 // 2^5
    case pink = 64 // 2^6
    case blue = 128 // 2^7
    case cyan = 256 // 2^8
    case green = 512 // 2^9
    case purple = 1024 // 2^10
    case beige = 2048 // 2^11
    case khaki = 4096 // 2^12
    case brown = 8192 // 2^13
    case camel = 16384
    case magenta = 32768
    case teal = 65536
    case gold = 131072
    case silver = 262144
    case skyBlue = 524288 // 天空蓝
    case denimBlue = 1048576 // 牛仔蓝
    // 橄榄绿
    case oliveGreen = 2097152

    // 可以根据需要添加更多颜色

    // MARK: Public

    public typealias RawValue = Int64

    public var color: Color {
        switch self {
        case .black:
            Color(.black)
        case .white:
            Color(.white)
        case .gray:
            Color(.gray)
        case .red:
            Color(.red)
        case .orange:
            Color(.orange)
        case .yellow:
            Color(.yellow)
        case .pink:
            Color(.pink)
        case .blue:
            Color(.blue)
        case .cyan:
            Color(.cyan)
        case .green:
            Color(.green)
        case .purple:
            Color(.purple)
        case .beige:
            Color(.beige)
        case .khaki:
            Color(.khaki)
        case .brown:
            Color(.brown)
        case .teal:
            Color(.teal)
        case .camel:
            Color(.camel)
        case .magenta:
            Color(.magenta)
        case .gold:
            Color(.gold)
        case .silver:
            Color(.silver)
        case .skyBlue:
            Color(.skyBlue)
        case .denimBlue:
            Color(.denimBlue)
        case .oliveGreen:
            Color(.oliveGreen)
        }
    }

    public var localizedName: String {
        switch self {
        case .black:
            String(localized: "Black")
        case .white:
            String(localized: "White")
        case .gray:
            String(localized: "Gray")
        case .red:
            String(localized: "Red")
        case .orange:
            String(localized: "Orange")
        case .yellow:
            String(localized: "Yellow")
        case .pink:
            String(localized: "Pink")
        case .blue:
            String(localized: "Blue")
        case .cyan:
            String(localized: "Cyan")
        case .green:
            String(localized: "Green")
        case .purple:
            String(localized: "Purple")
        case .beige:
            String(localized: "Beige")
        case .khaki:
            String(localized: "Khaki")
        case .brown:
            String(localized: "Brown")
        case .teal:
            String(localized: "Teal")
        case .camel:
            String(localized: "Camel")
        case .magenta:
            String(localized: "Magenta")
        case .gold:
            String(localized: "Gold")
        case .silver:
            String(localized: "Silver")
        case .skyBlue:
            String(localized: "SkyBlue")
        case .denimBlue:
            String(localized: "DenimBlue")
        case .oliveGreen:
            String(localized: "OliveGreen")
        }
    }
}

extension ColorBits {
    public static func decompose(_ value: Int64) -> [ColorBits] {
        var result: [ColorBits] = []
        // 遍历所有ColorBits的case
        for color in allCases {
            // 使用位与运算检查该位是否为1
            if value & color.rawValue != 0 {
                result.append(color)
            }
        }
        return result
    }
}
