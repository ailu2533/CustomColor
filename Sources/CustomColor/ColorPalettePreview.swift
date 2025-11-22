//
//  ColorPalettePreview.swift
//  CustomColor
//
//  Created by Augment on 2025-11-22.
//

import SwiftUI

#Preview {
    ColorPalettePreview()
}

struct ColorPalettePreview: View {
    // Group colors by colorPreference
    private var groupedColors: [(colorPreference: Int64, colorName: String, colors: [CustomColor])] {
        let grouped = Dictionary(grouping: ColorPalette.colors) { $0.colorPreference }
        
        return grouped.map { (preference, colors) in
            // Sort colors within each group by RGB values
            let sortedColors = colors.sorted { lhs, rhs in
                if lhs.red != rhs.red {
                    return lhs.red < rhs.red
                } else if lhs.green != rhs.green {
                    return lhs.green < rhs.green
                } else {
                    return lhs.blue < rhs.blue
                }
            }
            
            // Get color name from ColorBits enum
            let colorName = "Unknow"
            
            return (preference, colorName, sortedColors)
        }
        .sorted { $0.colorPreference < $1.colorPreference }
    }
    
    var body: some View {
        List {
            ForEach(groupedColors, id: \.colorPreference) { group in
                Section {
                    ForEach(group.colors) { color in
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
                            }
                            
                            Spacer()
                        }
                        .padding(.vertical, 4)
                    }
                } header: {
                    HStack {
                        Text(group.colorName)
                            .font(.headline)
                        
                        Text("(\(group.colors.count))")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
        .navigationTitle("Color Palette")
        .navigationBarTitleDisplayMode(.large)
    }
}

