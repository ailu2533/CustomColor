//
//  File.swift
//  CustomColor
//
//  Created by ailu on 2024/8/3.
//

import Foundation

public enum ColorBits: Int32 {
    public typealias RawValue = Int32

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
}

public extension ColorBits {
    var rgbValue: (red: Int, green: Int, blue: Int) {
        switch self {
        case .black: return (0, 0, 0)
        case .white: return (255, 255, 255)
        case .gray: return (128, 128, 128)
        case .red: return (255, 0, 0)
        case .orange: return (255, 165, 0)
        case .yellow: return (255, 255, 0)
        case .pink: return (255, 192, 203)
        case .blue: return (0, 0, 255)
        case .cyan: return (0, 255, 255)
        case .green: return (0, 255, 0)
        case .purple: return (128, 0, 128)
        case .beige: return (245, 245, 220)
        case .khaki: return (240, 230, 140)
        case .brown: return (165, 42, 42)
        }
    }
}
