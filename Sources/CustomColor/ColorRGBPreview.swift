//
//  ColorRGBPreview.swift
//  CustomColor
//
//  Created by Augment on 2025-11-22.
//

import SwiftUI

#Preview {
    NavigationStack {
        ColorRGBPreview()
    }
}

struct ColorRGBPreview: View {
    // Sort all colors by RGB values
    private var sortedColors: [CustomColor] {
        ColorPalette.colors.sorted { lhs, rhs in
            if lhs.red != rhs.red {
                return lhs.red < rhs.red
            } else if lhs.green != rhs.green {
                return lhs.green < rhs.green
            } else {
                return lhs.blue < rhs.blue
            }
        }
    }
    
    var body: some View {
        List {
            ForEach(sortedColors) { color in
                HStack(spacing: 12) {
                    // Color swatch
                    RoundedRectangle(cornerRadius: 8)
                        .fill(color.color)
                        .frame(width: 60, height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )
                    
                    VStack(alignment: .leading, spacing: 4) {
                        if let name = color.name {
                            Text(name)
                                .font(.headline)
                        }
                        
                        Text(color.hex)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .monospaced()
                        
                        Text("RGB(\(color.red), \(color.green), \(color.blue))")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        // Show color category
                        if let colorBit = ColorBits(rawValue: color.colorPreference) {
                            Text(colorBit.localizedName)
                                .font(.caption2)
                                .foregroundColor(.blue)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 2)
                                .background(Color.blue.opacity(0.1))
                                .cornerRadius(4)
                        }
                    }
                    
                    Spacer()
                }
                .padding(.vertical, 4)
            }
        }
        .navigationTitle("Colors by RGB")
        .navigationBarTitleDisplayMode(.large)
    }
}

