//
//  RecipeDetailView.swift
//  ForkcastApp
//
//  Created by Tahmid Ahmed on 8/5/2025.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Image (optional)
                if let imageName = recipe.imageName {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()
                        .cornerRadius(12)
                        .padding(.horizontal)
                }

                // Recipe title and cuisine
                VStack(alignment: .leading, spacing: 4) {
                    Text(recipe.name)
                        .font(.largeTitle)
                        .bold()

                    Text(recipe.cuisine.rawValue)
                        .font(.title3)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)

                // Nutrition facts
                VStack(alignment: .leading, spacing: 12) {
                    Text("Nutrition Facts")
                        .font(.title2)
                        .bold()

                    HStack(spacing: 20) {
                        NutritionItemView(title: "Calories", value: "\(recipe.nutritionFacts.calories) kcal")
                        NutritionItemView(title: "Protein", value: String(format: "%.1fg", recipe.nutritionFacts.protein))
                        NutritionItemView(title: "Carbs", value: String(format: "%.1fg", recipe.nutritionFacts.carbs))
                        NutritionItemView(title: "Fats", value: String(format: "%.1fg", recipe.nutritionFacts.fats))
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(12)
                .padding(.horizontal)

                // Ingredients
                VStack(alignment: .leading, spacing: 12) {
                    Text("Ingredients")
                        .font(.title2)
                        .bold()

                    ForEach(recipe.ingredients) { ingredient in
                        Text("• \(String(format: "%.1f", ingredient.amount)) \(ingredient.unit) \(ingredient.name)")
                            .foregroundColor(.primary)
                    }
                }
                .padding(.horizontal)

                // Instructions
                VStack(alignment: .leading, spacing: 12) {
                    Text("Instructions")
                        .font(.title2)
                        .bold()

                    ForEach(Array(recipe.instructions.enumerated()), id: \.offset) { index, instruction in
                        HStack(alignment: .top) {
                            Text("\(index + 1).")
                                .font(.headline)
                                .foregroundColor(.blue)
                            Text(instruction)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

// Subview for nutrition facts
struct NutritionItemView: View {
    let title: String
    let value: String

    var body: some View {
        VStack(spacing: 4) {
            Text(title)
                .font(.caption)
                .foregroundColor(.secondary)
            Text(value)
                .font(.headline)
        }
    }
}
