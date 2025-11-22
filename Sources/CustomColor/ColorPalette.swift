//
//  File.swift
//  CustomColor
//
//  Created by ailu on 2024/8/3.
//

import ColorKit
import Foundation
import UIKit

public struct ColorPalette {
    public static let colors: [CustomColor] = [
        CustomColor(red: 255, green: 0, blue: 0, colorPreference: ColorBits.red.rawValue),
        CustomColor(red: 0, green: 255, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 0, green: 0, blue: 255, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 255, green: 255, blue: 0, colorPreference: ColorBits.yellow.rawValue),
        CustomColor(red: 128, green: 0, blue: 128, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 0, green: 255, blue: 255, colorPreference: ColorBits.cyan.rawValue),
        CustomColor(red: 255, green: 255, blue: 255, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 255, green: 165, blue: 0, colorPreference: ColorBits.orange.rawValue),
        CustomColor(red: 165, green: 42, blue: 42, colorPreference: ColorBits.brown.rawValue),

        // 新增常见的衣服白色
        CustomColor(red: 255, green: 253, blue: 208, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 255, green: 250, blue: 250, colorPreference: ColorBits.white.rawValue),
        // 新增10种白色
        CustomColor(red: 250, green: 235, blue: 215, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 255, green: 245, blue: 238, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 248, green: 248, blue: 255, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 254, green: 254, blue: 250, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 240, green: 255, blue: 240, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 245, green: 255, blue: 250, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 240, green: 255, blue: 255, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 240, green: 248, blue: 255, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 234, green: 234, blue: 234, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 245, green: 245, blue: 245, colorPreference: ColorBits.white.rawValue),
        CustomColor(red: 255, green: 255, blue: 240, colorPreference: ColorBits.white.rawValue),

        // 新增常见的衣服灰色
        CustomColor(red: 54, green: 69, blue: 79, colorPreference: ColorBits.gray.rawValue),
        CustomColor(red: 112, green: 128, blue: 144, colorPreference: ColorBits.gray.rawValue),
        CustomColor(red: 128, green: 128, blue: 128, colorPreference: ColorBits.gray.rawValue),
        CustomColor(red: 128, green: 128, blue: 120, colorPreference: ColorBits.gray.rawValue),
        CustomColor(red: 144, green: 144, blue: 152, colorPreference: ColorBits.gray.rawValue),
        CustomColor(red: 211, green: 211, blue: 211, colorPreference: ColorBits.gray.rawValue),
        CustomColor(red: 128, green: 138, blue: 135, colorPreference: ColorBits.green.rawValue),

        // 新增女装常用颜色
        CustomColor(red: 250, green: 214, blue: 165, colorPreference: ColorBits.beige.rawValue),
        CustomColor(red: 183, green: 110, blue: 121, colorPreference: ColorBits.pink.rawValue),
        CustomColor(red: 255, green: 255, blue: 224, colorPreference: ColorBits.yellow.rawValue),
        CustomColor(red: 221, green: 160, blue: 221, colorPreference: ColorBits.pink.rawValue),
        CustomColor(red: 128, green: 0, blue: 32, colorPreference: ColorBits.red.rawValue),

        CustomColor(red: 234, green: 224, blue: 200, colorPreference: ColorBits.beige.rawValue),

        // 新增偏女性化的蓝色系颜色
        CustomColor(red: 15, green: 82, blue: 186, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 224, green: 255, blue: 255, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 0, green: 119, blue: 190, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 102, green: 153, blue: 204, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 68, green: 166, blue: 209, colorPreference: ColorBits.blue.rawValue),

        // 新增黑色系颜色
        CustomColor(red: 0, green: 0, blue: 0, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 75, green: 75, blue: 75, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 85, green: 65, blue: 45, colorPreference: ColorBits.brown.rawValue),
        CustomColor(red: 10, green: 10, blue: 10, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 30, green: 30, blue: 30, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 16, green: 24, blue: 32, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 25, green: 25, blue: 25, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 23, green: 23, blue: 23, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 5, green: 5, blue: 5, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 36, green: 36, blue: 36, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 45, green: 45, blue: 45, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 27, green: 27, blue: 27, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 20, green: 20, blue: 20, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 40, green: 40, blue: 40, colorPreference: ColorBits.black.rawValue),
        CustomColor(red: 15, green: 15, blue: 15, colorPreference: ColorBits.black.rawValue),

        // 新增常用的衣服蓝色
        CustomColor(red: 44, green: 49, blue: 68, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 67, green: 110, blue: 238, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 0, green: 127, blue: 255, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 0, green: 49, blue: 83, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 0, green: 0, blue: 139, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 174, green: 198, blue: 207, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 104, green: 131, blue: 139, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 188, green: 212, blue: 230, colorPreference: ColorBits.blue.rawValue),
        CustomColor(red: 183, green: 181, blue: 150, colorPreference: ColorBits.beige.rawValue),
        CustomColor(red: 72, green: 108, blue: 87, colorPreference: ColorBits.green.rawValue),

        // 新增棕色系颜色
        CustomColor(red: 210, green: 105, blue: 30, colorPreference: ColorBits.brown.rawValue),
        CustomColor(red: 139, green: 69, blue: 19, colorPreference: ColorBits.brown.rawValue),
        CustomColor(red: 240, green: 230, blue: 140, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(red: 101, green: 67, blue: 33, colorPreference: ColorBits.brown.rawValue),
        CustomColor(red: 181, green: 101, blue: 29, colorPreference: ColorBits.brown.rawValue),
        CustomColor(red: 205, green: 127, blue: 50, colorPreference: ColorBits.brown.rawValue),

        // 新增红色系颜色
        CustomColor(red: 220, green: 20, blue: 60, colorPreference: ColorBits.red.rawValue),
        CustomColor(red: 178, green: 34, blue: 34, colorPreference: ColorBits.red.rawValue),

        // 新增粉红色系
        CustomColor(red: 255, green: 192, blue: 203, colorPreference: ColorBits.pink.rawValue),
        CustomColor(red: 255, green: 228, blue: 225, colorPreference: ColorBits.pink.rawValue),
        CustomColor(red: 255, green: 102, blue: 204, colorPreference: ColorBits.pink.rawValue),
        CustomColor(red: 255, green: 153, blue: 204, colorPreference: ColorBits.pink.rawValue),
        CustomColor(red: 240, green: 128, blue: 128, colorPreference: ColorBits.pink.rawValue),
        CustomColor(red: 255, green: 0, blue: 127, colorPreference: ColorBits.pink.rawValue),

        // 紫色系颜色
        CustomColor(red: 216, green: 191, blue: 216, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 218, green: 112, blue: 214, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 230, green: 190, blue: 255, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 204, green: 204, blue: 255, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 255, green: 153, blue: 255, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 120, green: 81, blue: 169, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 199, green: 21, blue: 133, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 138, green: 43, blue: 226, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 223, green: 115, blue: 255, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 85, green: 26, blue: 139, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 181, green: 126, blue: 220, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 230, green: 190, blue: 210, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 128, green: 100, blue: 162, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 54, green: 55, blue: 98, colorPreference: ColorBits.purple.rawValue),
        CustomColor(red: 87, green: 57, blue: 111, colorPreference: ColorBits.purple.rawValue),

        // 黄色系颜色
        CustomColor(red: 255, green: 228, blue: 181, colorPreference: ColorBits.yellow.rawValue),
        CustomColor(red: 255, green: 204, blue: 51, colorPreference: ColorBits.yellow.rawValue),

        // 米色系颜色
        CustomColor(red: 245, green: 245, blue: 220, colorPreference: ColorBits.beige.rawValue),
        CustomColor(red: 250, green: 240, blue: 230, colorPreference: ColorBits.beige.rawValue),

        // 新增绿色系颜色
        CustomColor(red: 0, green: 168, blue: 107, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 0, green: 100, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 143, green: 188, blue: 143, colorPreference: ColorBits.green.rawValue), // Dark Sea Green
        CustomColor(red: 34, green: 139, blue: 34, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 152, green: 255, blue: 152, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 124, green: 252, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 50, green: 205, blue: 50, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 0, green: 250, blue: 154, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 144, green: 238, blue: 144, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 0, green: 128, blue: 0, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 0, green: 255, blue: 127, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 0, green: 86, blue: 59, colorPreference: ColorBits.green.rawValue),
        CustomColor(red: 30, green: 49, blue: 36, colorPreference: ColorBits.green.rawValue),

        // 橄榄绿系列
        CustomColor(red: 128, green: 128, blue: 0, colorPreference: ColorBits.oliveGreen.rawValue), // 标准橄榄绿
        CustomColor(red: 107, green: 142, blue: 35, colorPreference: ColorBits.oliveGreen.rawValue), // 橄榄军绿
        CustomColor(red: 85, green: 107, blue: 47, colorPreference: ColorBits.oliveGreen.rawValue), // 深橄榄绿
        CustomColor(red: 154, green: 205, blue: 50, colorPreference: ColorBits.oliveGreen.rawValue), // 黄绿色
        CustomColor(red: 173, green: 255, blue: 47, colorPreference: ColorBits.oliveGreen.rawValue), // 绿黄色
        CustomColor(red: 124, green: 138, blue: 114, colorPreference: ColorBits.oliveGreen.rawValue), // 军绿色
        CustomColor(red: 95, green: 101, blue: 79, colorPreference: ColorBits.oliveGreen.rawValue), // 暗橄榄绿
        CustomColor(red: 128, green: 128, blue: 105, colorPreference: ColorBits.oliveGreen.rawValue), // 灰橄榄色
        CustomColor(red: 143, green: 151, blue: 121, colorPreference: ColorBits.oliveGreen.rawValue), // 浅橄榄绿
        CustomColor(red: 75, green: 83, blue: 32, colorPreference: ColorBits.oliveGreen.rawValue),
        CustomColor(red: 87, green: 57, blue: 111, colorPreference: ColorBits.oliveGreen.rawValue),
        CustomColor(red: 37, green: 150, blue: 190, colorPreference: ColorBits.oliveGreen.rawValue),
        CustomColor(red: 51, green: 56, blue: 44, colorPreference: ColorBits.oliveGreen.rawValue),

        // 新增卡其色系颜色
        CustomColor(red: 195, green: 176, blue: 145, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(red: 189, green: 183, blue: 107, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(red: 237, green: 201, blue: 175, colorPreference: ColorBits.khaki.rawValue),
        CustomColor(red: 159, green: 161, blue: 122, colorPreference: ColorBits.khaki.rawValue),

        // 新增橙色系颜色
        CustomColor(red: 255, green: 117, blue: 24, colorPreference: ColorBits.orange.rawValue),
        CustomColor(red: 255, green: 69, blue: 0, colorPreference: ColorBits.orange.rawValue),
        CustomColor(red: 255, green: 99, blue: 71, colorPreference: ColorBits.orange.rawValue),
        CustomColor(red: 255, green: 204, blue: 153, colorPreference: ColorBits.orange.rawValue),
        CustomColor(red: 204, green: 85, blue: 0, colorPreference: ColorBits.orange.rawValue),

        // 新增青色系颜色
        CustomColor(red: 189, green: 252, blue: 201, colorPreference: ColorBits.cyan.rawValue),
        CustomColor(red: 64, green: 224, blue: 208, colorPreference: ColorBits.cyan.rawValue),
        CustomColor(red: 127, green: 255, blue: 212, colorPreference: ColorBits.cyan.rawValue),
        CustomColor(red: 0, green: 191, blue: 255, colorPreference: ColorBits.cyan.rawValue),

        // 新增驼色系颜色
        CustomColor(red: 193, green: 154, blue: 107, colorPreference: ColorBits.camel.rawValue),
        CustomColor(red: 173, green: 138, blue: 99, colorPreference: ColorBits.camel.rawValue),
        CustomColor(red: 154, green: 123, blue: 85, colorPreference: ColorBits.camel.rawValue),
        CustomColor(red: 135, green: 107, blue: 74, colorPreference: ColorBits.camel.rawValue),

        // 洋红色
        CustomColor(red: 255, green: 0, blue: 255, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(red: 229, green: 0, blue: 229, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(red: 204, green: 0, blue: 204, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(red: 255, green: 0, blue: 191, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(red: 255, green: 25, blue: 255, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(red: 255, green: 50, blue: 255, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(red: 255, green: 76, blue: 255, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(red: 179, green: 0, blue: 134, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(red: 223, green: 0, blue: 134, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(red: 255, green: 0, blue: 204, colorPreference: ColorBits.magenta.rawValue),
        CustomColor(red: 252, green: 15, blue: 192, colorPreference: ColorBits.magenta.rawValue),

        // 鸭绿色
        CustomColor(red: 0, green: 128, blue: 128, colorPreference: ColorBits.teal.rawValue),
        CustomColor(red: 1, green: 249, blue: 198, colorPreference: ColorBits.teal.rawValue),
        CustomColor(red: 0, green: 76, blue: 76, colorPreference: ColorBits.teal.rawValue),
        CustomColor(red: 0, green: 102, blue: 102, colorPreference: ColorBits.teal.rawValue),
        CustomColor(red: 0, green: 115, blue: 115, colorPreference: ColorBits.teal.rawValue),
        CustomColor(red: 0, green: 145, blue: 147, colorPreference: ColorBits.teal.rawValue),
        CustomColor(red: 25, green: 140, blue: 140, colorPreference: ColorBits.teal.rawValue),
        CustomColor(red: 50, green: 153, blue: 153, colorPreference: ColorBits.teal.rawValue),
        CustomColor(red: 76, green: 166, blue: 166, colorPreference: ColorBits.teal.rawValue),

        // 金色
        CustomColor(red: 255, green: 215, blue: 0, colorPreference: ColorBits.gold.rawValue),
        CustomColor(red: 255, green: 219, blue: 25, colorPreference: ColorBits.gold.rawValue),
        CustomColor(red: 229, green: 193, blue: 0, colorPreference: ColorBits.gold.rawValue),

        // 银色
        CustomColor(red: 192, green: 192, blue: 192, colorPreference: ColorBits.silver.rawValue),
        CustomColor(red: 172, green: 172, blue: 172, colorPreference: ColorBits.silver.rawValue),
        CustomColor(red: 198, green: 198, blue: 198, colorPreference: ColorBits.silver.rawValue),

        // 天空蓝系列
        CustomColor(red: 135, green: 206, blue: 235, colorPreference: ColorBits.skyBlue.rawValue), // 标准天空蓝
        CustomColor(red: 176, green: 224, blue: 230, colorPreference: ColorBits.skyBlue.rawValue), // 粉蓝色
        CustomColor(red: 137, green: 207, blue: 240, colorPreference: ColorBits.skyBlue.rawValue), // 浅天空蓝
        CustomColor(red: 173, green: 216, blue: 230, colorPreference: ColorBits.skyBlue.rawValue), // 淡蓝色
        CustomColor(red: 135, green: 206, blue: 250, colorPreference: ColorBits.skyBlue.rawValue), // 亮天空蓝
        CustomColor(red: 176, green: 196, blue: 222, colorPreference: ColorBits.skyBlue.rawValue), // 淡钢蓝
        CustomColor(red: 175, green: 238, blue: 238, colorPreference: ColorBits.skyBlue.rawValue), // 淡青色
        CustomColor(red: 95, green: 158, blue: 160, colorPreference: ColorBits.skyBlue.rawValue), // 军服蓝
        CustomColor(red: 130, green: 199, blue: 229, colorPreference: ColorBits.skyBlue.rawValue), // #82c7e5
        CustomColor(red: 142, green: 204, blue: 231, colorPreference: ColorBits.skyBlue.rawValue), // #8ecce7
        CustomColor(red: 155, green: 210, blue: 234, colorPreference: ColorBits.skyBlue.rawValue), // #9bd2ea
        CustomColor(red: 167, green: 215, blue: 236, colorPreference: ColorBits.skyBlue.rawValue), // #a7d7ec
        CustomColor(red: 180, green: 221, blue: 239, colorPreference: ColorBits.skyBlue.rawValue), // #b4ddef
        CustomColor(red: 192, green: 227, blue: 242, colorPreference: ColorBits.skyBlue.rawValue), // #c0e3f2
        CustomColor(red: 205, green: 232, blue: 244, colorPreference: ColorBits.skyBlue.rawValue), // #cde8f4
        CustomColor(red: 217, green: 238, blue: 247, colorPreference: ColorBits.skyBlue.rawValue), // #d9eef7
        CustomColor(red: 230, green: 243, blue: 249, colorPreference: ColorBits.skyBlue.rawValue), // #e6f3f9
        CustomColor(red: 144, green: 213, blue: 255, colorPreference: ColorBits.skyBlue.rawValue), // #90d5ff
        CustomColor(red: 87, green: 185, blue: 255, colorPreference: ColorBits.skyBlue.rawValue), // #57b9ff

        // 牛仔蓝系列
        CustomColor(red: 67, green: 107, blue: 149, colorPreference: ColorBits.denimBlue.rawValue), // 标准牛仔蓝
        CustomColor(red: 29, green: 53, blue: 87, colorPreference: ColorBits.denimBlue.rawValue), // 深牛仔蓝
        CustomColor(red: 67, green: 94, blue: 156, colorPreference: ColorBits.denimBlue.rawValue), // 中牛仔蓝
        CustomColor(red: 28, green: 48, blue: 92, colorPreference: ColorBits.denimBlue.rawValue), // 深靛蓝
        CustomColor(red: 100, green: 149, blue: 237, colorPreference: ColorBits.denimBlue.rawValue), // 浅牛仔蓝
        CustomColor(red: 70, green: 130, blue: 180, colorPreference: ColorBits.denimBlue.rawValue), // 钢蓝色
        CustomColor(red: 65, green: 105, blue: 225, colorPreference: ColorBits.denimBlue.rawValue), // 皇家蓝
        CustomColor(red: 25, green: 25, blue: 112, colorPreference: ColorBits.denimBlue.rawValue), // 午夜蓝
        CustomColor(red: 0, green: 0, blue: 128, colorPreference: ColorBits.denimBlue.rawValue), // 海军蓝
        CustomColor(red: 60, green: 96, blue: 134, colorPreference: ColorBits.denimBlue.rawValue), // #3c6086
        CustomColor(red: 53, green: 85, blue: 119, colorPreference: ColorBits.denimBlue.rawValue), // #355577
        CustomColor(red: 46, green: 74, blue: 104, colorPreference: ColorBits.denimBlue.rawValue), // #2e4a68
        CustomColor(red: 40, green: 64, blue: 89, colorPreference: ColorBits.denimBlue.rawValue), // #284059
        CustomColor(red: 33, green: 53, blue: 74, colorPreference: ColorBits.denimBlue.rawValue), // #21354a
        CustomColor(red: 132, green: 164, blue: 225, colorPreference: ColorBits.denimBlue.rawValue),
    ]

    public static func nearestTwoColors(color: UIColor) -> (
        CustomColor?,
        CustomColor?,
        UIColor.ColorDifferenceResult,
        UIColor.ColorDifferenceResult
    ) {
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
}
