//
//  DuplicateColorFinder.swift
//  CustomColor
//
//  Created by Augment on 2025-11-22.
//

import SwiftUI

#Preview {
    NavigationStack {
        DuplicateColorFinderView()
    }
}

// MARK: - Duplicate Color Finder View

struct DuplicateColorFinderView: View {
    private var duplicateGroups: [(rgb: String, colors: [CustomColor])] {
        findDuplicateColors()
    }
    
    var body: some View {
        List {
            if duplicateGroups.isEmpty {
                Section {
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                            .font(.title2)
                        Text("No duplicate RGB values found!")
                            .font(.headline)
                    }
                    .padding()
                }
            } else {
                Section {
                    Text("Found \(duplicateGroups.count) duplicate RGB value(s)")
                        .font(.headline)
                        .foregroundColor(.orange)
                } header: {
                    Text("Summary")
                }
                
                ForEach(duplicateGroups, id: \.rgb) { group in
                    Section {
                        ForEach(group.colors) { color in
                            HStack(spacing: 12) {
                                // Color swatch
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(color.color)
                                    .frame(width: 50, height: 50)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                    )
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    if let name = color.name {
                                        Text(name)
                                            .font(.headline)
                                    } else {
                                        Text("Unnamed")
                                            .font(.headline)
                                            .foregroundColor(.secondary)
                                    }
                                    
                                    Text(color.hex)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                        .monospaced()
                                    
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
                    } header: {
                        HStack {
                            Image(systemName: "exclamationmark.triangle.fill")
                                .foregroundColor(.orange)
                            Text("RGB(\(group.rgb)) - \(group.colors.count) duplicates")
                                .font(.subheadline)
                        }
                    }
                }
            }
        }
        .navigationTitle("Duplicate Colors")
        .navigationBarTitleDisplayMode(.large)
        .onAppear {
            printDuplicateColors()
        }
    }
    
    private func findDuplicateColors() -> [(rgb: String, colors: [CustomColor])] {
        // Group colors by RGB values
        let grouped = Dictionary(grouping: ColorPalette.colors) { color in
            "\(color.red),\(color.green),\(color.blue)"
        }
        
        // Filter groups that have more than one color
        let duplicates = grouped.filter { $0.value.count > 1 }
        
        // Convert to array and sort by RGB
        return duplicates.map { (rgb: $0.key, colors: $0.value) }
            .sorted { $0.rgb < $1.rgb }
    }
    
    private func printDuplicateColors() {
        let duplicates = findDuplicateColors()
        
        if duplicates.isEmpty {
            print("✅ No duplicate RGB values found!")
            return
        }
        
        print("\n⚠️ Found \(duplicates.count) duplicate RGB value(s):\n")
        
        for (index, group) in duplicates.enumerated() {
            print("[\(index + 1)] RGB(\(group.rgb)) - \(group.colors.count) duplicates:")
            for color in group.colors {
                let name = color.name ?? "Unnamed"
                let category = ColorBits(rawValue: color.colorPreference)?.localizedName ?? "Unknown"
                print("   - \(name) (\(color.hex)) - Category: \(category)")
            }
            print()
        }
    }
}

