//
//  FilterChipsView.swift
//  ForkcastApp
//
//  Created by Tahmid Ahmed on 8/5/2025.
//

import SwiftUI

// Generic chip view supporting single or multiple selection
struct FilterChipsView<Option: Hashable & RawRepresentable & CaseIterable>: View where Option.RawValue == String {
    let title: String
    let options: [Option]
    var selected: Option? = nil
    var selectedSet: [Option] = []
    var onSelect: ((Option?) -> Void)? = nil
    var onToggle: ((Option) -> Void)? = nil

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.subheadline)
                .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    if let onSelect = onSelect {
                        Button(action: { onSelect(nil) }) {
                            Text("All")
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(selected == nil ? Color.blue : Color.gray.opacity(0.2))
                                .foregroundColor(selected == nil ? .white : .primary)
                                .cornerRadius(16)
                        }
                    }

                    ForEach(options, id: \.self) { option in
                        Button(action: {
                            if let onSelect = onSelect {
                                onSelect(option)
                            } else if let onToggle = onToggle {
                                onToggle(option)
                            }
                        }) {
                            Text(option.rawValue)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(
                                    (selected == option || selectedSet.contains(option))
                                        ? Color.blue
                                        : Color.gray.opacity(0.2)
                                )
                                .foregroundColor(
                                    (selected == option || selectedSet.contains(option))
                                        ? .white
                                        : .primary
                                )
                                .cornerRadius(16)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

