#!/usr/bin/env swift

import Foundation

// Simple script to find duplicate RGB values in ColorPalette

struct SimpleColor {
    let name: String?
    let red: Int
    let green: Int
    let blue: Int
    let hex: String
    let category: String
}

// Read the ColorPalette.swift file
let fileURL = URL(fileURLWithPath: "Sources/CustomColor/ColorPalette.swift")
guard let content = try? String(contentsOf: fileURL) else {
    print("❌ Could not read ColorPalette.swift")
    exit(1)
}

// Parse CustomColor entries
var colors: [SimpleColor] = []
let lines = content.components(separatedBy: .newlines)

for line in lines {
    // Match pattern: CustomColor(name: ..., red: X, green: Y, blue: Z, colorPreference: ...)
    // or: CustomColor(red: X, green: Y, blue: Z, colorPreference: ...)
    
    if line.contains("CustomColor(") && line.contains("red:") && line.contains("green:") && line.contains("blue:") {
        // Extract RGB values
        let components = line.components(separatedBy: ",")
        var red = 0, green = 0, blue = 0
        var name: String? = nil
        var category = "Unknown"
        
        for component in components {
            let trimmed = component.trimmingCharacters(in: .whitespaces)
            
            if trimmed.contains("name:") {
                // Extract name
                if let start = trimmed.range(of: "\""),
                   let end = trimmed.range(of: "\"", range: start.upperBound..<trimmed.endIndex) {
                    name = String(trimmed[start.upperBound..<end.lowerBound])
                }
            } else if trimmed.contains("red:") {
                if let value = Int(trimmed.components(separatedBy: ":").last?.trimmingCharacters(in: .whitespaces) ?? "") {
                    red = value
                }
            } else if trimmed.contains("green:") {
                if let value = Int(trimmed.components(separatedBy: ":").last?.trimmingCharacters(in: .whitespaces) ?? "") {
                    green = value
                }
            } else if trimmed.contains("blue:") {
                if let value = Int(trimmed.components(separatedBy: ":").last?.trimmingCharacters(in: .whitespaces) ?? "") {
                    blue = value
                }
            } else if trimmed.contains("ColorBits.") {
                // Extract category
                if let start = trimmed.range(of: "ColorBits."),
                   let end = trimmed.range(of: ".rawValue") {
                    category = String(trimmed[start.upperBound..<end.lowerBound])
                }
            }
        }
        
        let hex = String(format: "#%02X%02X%02X", red, green, blue)
        colors.append(SimpleColor(name: name, red: red, green: green, blue: blue, hex: hex, category: category))
    }
}

print("📊 Total colors found: \(colors.count)\n")

// Group by RGB
var rgbGroups: [String: [SimpleColor]] = [:]
for color in colors {
    let key = "\(color.red),\(color.green),\(color.blue)"
    rgbGroups[key, default: []].append(color)
}

// Find duplicates
let duplicates = rgbGroups.filter { $0.value.count > 1 }.sorted { $0.key < $1.key }

if duplicates.isEmpty {
    print("✅ No duplicate RGB values found!")
} else {
    print("⚠️  Found \(duplicates.count) duplicate RGB value(s):\n")
    
    for (index, (rgb, colors)) in duplicates.enumerated() {
        print("[\(index + 1)] RGB(\(rgb)) - \(colors.count) duplicates:")
        for color in colors {
            let displayName = color.name ?? "Unnamed"
            print("   - \(displayName) (\(color.hex)) - Category: \(color.category)")
        }
        print()
    }
}

