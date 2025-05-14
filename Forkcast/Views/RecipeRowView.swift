
import SwiftUI

struct RecipeRowView: View {
    let recipe: Recipe?

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            if let recipe = recipe {
                // Display normal recipe details
                Text(recipe.name)
                    .font(.headline)

                Text(recipe.cuisine.rawValue)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                HStack {
                    Text("\(recipe.nutritionFacts.calories) kcal")
                    Text("\(recipe.ingredients.count) ingredients")
                }
                .font(.caption)
                .foregroundColor(.gray)
            } else {
                // Display placeholder when recipe is nil (empty state)
                Text("No recipe found")
                    .font(.headline)
                    .foregroundColor(.red)
                Text("Try adding some recipes!")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.vertical, 6)
    }
}


