//
//  RandomRecipeView.swift
//  ForkcastApp
//
//  Created by Tahmid Ahmed on 8/5/2025.
//

import SwiftUI

struct RandomRecipeView: View {
    let recipe: Recipe
    var onClose: (() -> Void)?

    var body: some View {
        VStack(spacing: 16) {
            // Header Title
            Text("Surprise Dish!")
                .font(.largeTitle)
                .bold()
                .padding(.top)

            // Recipe Image (if available)
            if let imageName = recipe.imageName {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .cornerRadius(12)
                    .clipped()
                    .padding(.horizontal)
            }

            // Recipe Name & Cuisine
            VStack(spacing: 4) {
                Text(recipe.name)
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)

                Text(recipe.cuisine.rawValue)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Text("\(recipe.nutritionFacts.calories) kcal")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)

            Spacer()

            // View Full Recipe
            NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                Text("View Full Recipe")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)

            // Close Button
            Button("Close") {
                onClose?()
            }
            .foregroundColor(.red)
            .padding(.bottom, 20)
        }
        .navigationBarHidden(true)
    }
}

