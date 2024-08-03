//
//  File.swift
//  CustomColor
//
//  Created by ailu on 2024/8/3.
//

import Foundation
import UIKit

struct ColorPalette {
    static func nearestTwoColors(color: UIColor) -> (CustomColor?, CustomColor?, UIColor.ColorDifferenceResult, UIColor.ColorDifferenceResult) {
        var firstNearest: CustomColor?
        var secondNearest: CustomColor?
        var minDist1 = UIColor.ColorDifferenceResult.near(10)
        var minDist2 = UIColor.ColorDifferenceResult.near(10)

        for c in colors {
            let diff = c.uiColor.difference(from: color)
            if diff < minDist1 {
                secondNearest = firstNearest
                minDist2 = minDist1
                firstNearest = c
                minDist1 = diff
            } else if diff < minDist2 {
                secondNearest = c
                minDist2 = diff
            }
        }

        return (firstNearest, secondNearest, minDist1, minDist2)
    }

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
    ]

    static let colors: [CustomColor] = [
        CustomColor(name: "Red", red: 255, green: 0, blue: 0, colorPreference: ColorBits.red.rawValue),
        CustomColor(name: "Green", red: 0, green: 255, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Blue", red: 0, green: 0, blue: 255, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Yellow", red: 255, green: 255, blue: 0, colorPreference: ColorBits.yellow.rawValue),
        CustomColor(name: "Purple", red: 128, green: 0, blue: 128, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Cyan", red: 0, green: 255, blue: 255, colorPreference: ColorBits.cyan.rawValue),
        CustomColor(name: "Magenta", red: 255, green: 0, blue: 255, colorPreference: ColorBits.pink.rawValue),
        CustomColor(name: "Black", red: 0, green: 0, blue: 0, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "White", red: 255, green: 255, blue: 255, colorPreference: ColorBits.white.rawValue),
        CustomColor(name: "Gray", red: 128, green: 128, blue: 128, colorPreference: ColorBits.gray.rawValue),
        CustomColor(name: "Orange", red: 255, green: 165, blue: 0, colorPreference: ColorBits.orange.rawValue),
        CustomColor(name: "Brown", red: 165, green: 42, blue: 42, colorPreference: ColorBits.brown.rawValue),

        // 新增常见的衣服灰色
        CustomColor(name: "Dark Gray", red: 54, green: 69, blue: 79, colorPreference: ColorBits.gray.rawValue),
        CustomColor(name: "Slate Gray", red: 112, green: 128, blue: 144, colorPreference: ColorBits.gray.rawValue),
        CustomColor(name: "Gray", red: 128, green: 128, blue: 128, colorPreference: ColorBits.gray.rawValue),
        CustomColor(name: "Silver", red: 192, green: 192, blue: 192, colorPreference: ColorBits.gray.rawValue),
        CustomColor(name: "Pearl", red: 234, green: 234, blue: 234, colorPreference: ColorBits.white.rawValue),
        CustomColor(name: "Warm Gray", red: 128, green: 128, blue: 120, colorPreference: ColorBits.gray.rawValue),
        CustomColor(name: "Cool Gray", red: 144, green: 144, blue: 152, colorPreference: ColorBits.gray.rawValue),
        CustomColor(name: "Light Gray", red: 211, green: 211, blue: 211, colorPreference: ColorBits.gray.rawValue),
        CustomColor(name: "Gray Green", red: 128, green: 138, blue: 135, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Gray Purple", red: 128, green: 100, blue: 162, colorPreference: ColorBits.purple.rawValue),

        // 新增女装常用颜色
        CustomColor(name: "Champagne", red: 250, green: 214, blue: 165, colorPreference: ColorBits.beige.rawValue),
        CustomColor(name: "Sky Blue", red: 135, green: 206, blue: 235, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Light Gray Blue", red: 176, green: 196, blue: 222, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Rose Gold", red: 183, green: 110, blue: 121, colorPreference: ColorBits.pink.rawValue),
        CustomColor(name: "Light Yellow", red: 255, green: 255, blue: 224, colorPreference: ColorBits.yellow.rawValue),
        CustomColor(name: "Light Green", red: 144, green: 238, blue: 144, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Pastel Pink", red: 221, green: 160, blue: 221, colorPreference: ColorBits.pink.rawValue),
        CustomColor(name: "Burgundy", red: 128, green: 0, blue: 32, colorPreference: ColorBits.red.rawValue),
        CustomColor(name: "Vintage Blue", red: 70, green: 130, blue: 180, colorPreference: ColorBits.blue.rawValue),

        CustomColor(name: "Ivory", red: 234, green: 224, blue: 200, colorPreference: ColorBits.beige.rawValue),

        // 新增偏女性化的蓝色系颜色
        CustomColor(name: "Light Blue", red: 173, green: 216, blue: 230, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Tiffany Blue", red: 129, green: 216, blue: 208, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Jewel Blue", red: 15, green: 82, blue: 186, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Lavender", red: 181, green: 126, blue: 220, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Pale Blue", red: 224, green: 255, blue: 255, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Ocean Blue", red: 0, green: 119, blue: 190, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Pale Blue", red: 176, green: 224, blue: 230, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Ice Blue", red: 240, green: 248, blue: 255, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Lilac", red: 100, green: 149, blue: 237, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Blue Gray", red: 102, green: 153, blue: 204, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Dream Blue", red: 68, green: 166, blue: 209, colorPreference: ColorBits.blue.rawValue),

        // 新增黑色系颜色
        CustomColor(name: "Black", red: 0, green: 0, blue: 0, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Ebony", red: 75, green: 75, blue: 75, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Umber", red: 85, green: 65, blue: 45, colorPreference: ColorBits.brown.rawValue),
        CustomColor(name: "Jet Black", red: 10, green: 10, blue: 10, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Charcoal", red: 30, green: 30, blue: 30, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Charcoal", red: 16, green: 24, blue: 32, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Midnight", red: 25, green: 25, blue: 25, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Raven", red: 23, green: 23, blue: 23, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Deep Black", red: 5, green: 5, blue: 5, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Iron Black", red: 36, green: 36, blue: 36, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Smoke", red: 45, green: 45, blue: 45, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Carbon Black", red: 27, green: 27, blue: 27, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Onyx", red: 20, green: 20, blue: 20, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Velvet Black", red: 40, green: 40, blue: 40, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "Night Black", red: 15, green: 15, blue: 15, colorPreference: ColorBits.black.rawValue),
        CustomColor(name: "44,49,68", red: 44, green: 49, blue: 68, colorPreference: ColorBits.blue.rawValue),
        // 新增常用的衣服蓝色
        CustomColor(name: "Jeans Blue", red: 67, green: 110, blue: 238, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Sky Blue", red: 135, green: 206, blue: 235, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Plum", red: 75, green: 0, blue: 130, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Cerulean", red: 0, green: 127, blue: 255, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Prussian Blue", red: 0, green: 49, blue: 83, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Powder Blue", red: 135, green: 206, blue: 250, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Dark Blue", red: 0, green: 0, blue: 139, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Pale Blue", red: 174, green: 198, blue: 207, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Gray Blue", red: 104, green: 131, blue: 139, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Ice Blue", red: 188, green: 212, blue: 230, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Midnight Blue", red: 25, green: 25, blue: 112, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "#b7b596", red: 183, green: 181, blue: 150, colorPreference: ColorBits.beige.rawValue),
        CustomColor(name: "#486C57", red: 72, green: 108, blue: 87, colorPreference: ColorBits.green.rawValue),

        // 新增棕色系颜色
        CustomColor(name: "Chocolate", red: 210, green: 105, blue: 30, colorPreference: ColorBits.brown.rawValue),
        CustomColor(name: "Terra Cotta", red: 139, green: 69, blue: 19, colorPreference: ColorBits.brown.rawValue),
        CustomColor(name: "Khaki", red: 240, green: 230, blue: 140, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(name: "Dark Brown", red: 101, green: 67, blue: 33, colorPreference: ColorBits.brown.rawValue),
        CustomColor(name: "Light Brown", red: 181, green: 101, blue: 29, colorPreference: ColorBits.brown.rawValue),
        CustomColor(name: "Copper", red: 205, green: 127, blue: 50, colorPreference: ColorBits.brown.rawValue),

        // 新增红色系颜色
        CustomColor(name: "Cherry Red", red: 220, green: 20, blue: 60, colorPreference: ColorBits.red.rawValue),
        CustomColor(name: "Brick Red", red: 178, green: 34, blue: 34, colorPreference: ColorBits.red.rawValue),
        CustomColor(name: "Rose Red", red: 255, green: 0, blue: 127, colorPreference: ColorBits.pink.rawValue),

        // 新增粉红色系
        CustomColor(name: "Pink", red: 255, green: 192, blue: 203, colorPreference: ColorBits.pink.rawValue),
        CustomColor(name: "Pale Pink", red: 255, green: 228, blue: 225, colorPreference: ColorBits.pink.rawValue),
        CustomColor(name: "Rose Pink", red: 255, green: 102, blue: 204, colorPreference: ColorBits.pink.rawValue),
        CustomColor(name: "Light Rose", red: 255, green: 153, blue: 204, colorPreference: ColorBits.pink.rawValue),
        CustomColor(name: "Pink Coral", red: 240, green: 128, blue: 128, colorPreference: ColorBits.pink.rawValue),
        CustomColor(name: "Pink Mint", red: 245, green: 255, blue: 250, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Pastel Purple", red: 230, green: 190, blue: 210, colorPreference: ColorBits.purple.rawValue),

        // 紫色系颜色
        CustomColor(name: "Lavender", red: 216, green: 191, blue: 216, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Pale Purple", red: 218, green: 112, blue: 214, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Light Purple", red: 230, green: 190, blue: 255, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Light Lavender", red: 204, green: 204, blue: 255, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Pinkish Purple", red: 255, green: 153, blue: 255, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Royal Purple", red: 120, green: 81, blue: 169, colorPreference: ColorBits.purple.rawValue),
//        CustomColor(name: "Deep Purple", red: 58, green: 36, blue: 59, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Violet", red: 199, green: 21, blue: 133, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Blue Violet", red: 138, green: 43, blue: 226, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Purple Pink", red: 223, green: 115, blue: 255, colorPreference: ColorBits.purple.rawValue),
        CustomColor(name: "Ebony", red: 85, green: 26, blue: 139, colorPreference: ColorBits.purple.rawValue),

        // 黄色系颜色
        CustomColor(name: "Eggshell", red: 255, green: 228, blue: 181, colorPreference: ColorBits.yellow.rawValue),
        CustomColor(name: "Mango", red: 255, green: 204, blue: 51, colorPreference: ColorBits.yellow.rawValue),

        // 米色系颜色
        CustomColor(name: "Beige", red: 245, green: 245, blue: 220, colorPreference: ColorBits.beige.rawValue),
        CustomColor(name: "Ivory", red: 255, green: 255, blue: 240, colorPreference: ColorBits.beige.rawValue),
        CustomColor(name: "Linen", red: 250, green: 240, blue: 230, colorPreference: ColorBits.beige.rawValue),
        CustomColor(name: "Cold Beige", red: 245, green: 245, blue: 245, colorPreference: ColorBits.beige.rawValue),

        // 新增绿色系颜色
        CustomColor(name: "Emerald", red: 0, green: 168, blue: 107, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Pale Turquoise", red: 175, green: 238, blue: 238, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Dark Green", red: 0, green: 100, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Thyme", red: 143, green: 188, blue: 143, colorPreference: ColorBits.green.rawValue), // Dark Sea Green
        CustomColor(name: "Olive", red: 107, green: 142, blue: 35, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Olive", red: 85, green: 107, blue: 47, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Army Green", red: 75, green: 83, blue: 32, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Forest Green", red: 34, green: 139, blue: 34, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Mint", red: 152, green: 255, blue: 152, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Lime", red: 124, green: 252, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Lime Green", red: 50, green: 205, blue: 50, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Parrot Green", red: 0, green: 250, blue: 154, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Dark Green", red: 0, green: 100, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Light Green", red: 144, green: 238, blue: 144, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Pine", red: 0, green: 128, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Turquoise", red: 0, green: 255, blue: 127, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Dark Aquamarine", red: 0, green: 86, blue: 59, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Gray Green", red: 128, green: 138, blue: 135, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Ebony Green", red: 30, green: 49, blue: 36, colorPreference: ColorBits.green.rawValue),

        // 新增卡其色系颜色
        CustomColor(name: "Khaki", red: 195, green: 176, blue: 145, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(name: "Dark Khaki", red: 189, green: 183, blue: 107, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(name: "Desert", red: 237, green: 201, blue: 175, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(name: "Olive Khaki", red: 159, green: 161, blue: 122, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(name: "Tan", red: 193, green: 154, blue: 107, colorPreference: ColorBits.khaki.rawValue),

        // 新增橙色系颜色
        CustomColor(name: "Pumpkin", red: 255, green: 117, blue: 24, colorPreference: ColorBits.orange.rawValue),
        CustomColor(name: "Burnt Orange", red: 255, green: 69, blue: 0, colorPreference: ColorBits.orange.rawValue),
        CustomColor(name: "Orange Red", red: 255, green: 99, blue: 71, colorPreference: ColorBits.orange.rawValue),
        CustomColor(name: "Pale Orange", red: 255, green: 204, blue: 153, colorPreference: ColorBits.orange.rawValue),
        CustomColor(name: "Brown Orange", red: 204, green: 85, blue: 0, colorPreference: ColorBits.orange.rawValue),

        // 新增青色系颜色
        CustomColor(name: "Mint", red: 189, green: 252, blue: 201, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Turquoise", red: 64, green: 224, blue: 208, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Moss Green", red: 127, green: 255, blue: 212, colorPreference: ColorBits.green.rawValue),
        CustomColor(name: "Cerulean", red: 0, green: 191, blue: 255, colorPreference: ColorBits.blue.rawValue),

        // 新增牛仔裤常用颜色
        CustomColor(name: "Classic Jeans Blue", red: 67, green: 94, blue: 156, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Jeans Blue", red: 28, green: 48, blue: 92, colorPreference: ColorBits.blue.rawValue),
        CustomColor(name: "Light Jeans Blue", red: 132, green: 164, blue: 225, colorPreference: ColorBits.blue.rawValue),
//        CustomColor(name: "Navy Blue", red: 25, green: 25, blue: 112, colorPreference: ColorBits.blue.rawValue),
    ]

    static func getColor(byName name: String) -> UIColor? {
        return colors.first(where: { $0.name == name })?.uiColor
    }

    static func getAllColorNames() -> [String] {
        return colors.map { $0.name }
    }
}
