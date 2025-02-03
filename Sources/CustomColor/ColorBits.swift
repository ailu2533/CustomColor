//
//  File.swift
//  CustomColor
//
//  Created by ailu on 2024/8/3.
//

import Foundation
import SwiftUICore

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
