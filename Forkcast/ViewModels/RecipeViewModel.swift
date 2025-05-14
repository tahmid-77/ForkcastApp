//
//  RecipeViewModel.swift
//  ForkcastApp
//
//  Created by Tahmid Ahmed on 8/5/2025.
//

import Foundation
import SwiftUI

class RecipeViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe]
    @Published var searchText = ""
    @Published var selectedCuisine: CuisineType?
    @Published var selectedTags: [RecipeTag] = []
    @Published var selectedDevice: CookingDevice?
    @Published var selectedPrepTime: PrepTime?
    @Published var selectedDifficulty: Difficulty?
    @Published var selectedRandomRecipe: Recipe?
    @Published var recentRecipeIDs: [UUID] = []
    @Published var availableIngredients: [String] = []

    var filteredRecipes: [Recipe] {
        var filtered = recipes

        if !searchText.isEmpty {
            filtered = filtered.filter {
                $0.name.localizedCaseInsensitiveContains(searchText) ||
                $0.ingredients.contains { $0.name.localizedCaseInsensitiveContains(searchText) }
            }
        }

        if let cuisine = selectedCuisine {
            filtered = filtered.filter { $0.cuisine == cuisine }
        }

        if !selectedTags.isEmpty {
            filtered = filtered.filter { recipe in
                selectedTags.allSatisfy { recipe.tags.contains($0) }
            }
        }

        if let device = selectedDevice {
            filtered = filtered.filter { $0.cookingDevice == device }
        }

        if let prep = selectedPrepTime {
            filtered = filtered.filter { $0.prepTime == prep }
        }

        if let diff = selectedDifficulty {
            filtered = filtered.filter { $0.difficulty == diff }
        }

        if !availableIngredients.isEmpty {
            filtered = filtered.filter { recipe in
                recipe.ingredients.allSatisfy { ing in
                    availableIngredients.contains { $0.caseInsensitiveCompare(ing.name) == .orderedSame }
                }
            }
        }

        return filtered
    }

    init() {
        self.recipes = Recipe.sampleRecipes
    }

    func filterByCuisine(_ cuisine: CuisineType?) {
        selectedCuisine = cuisine
    }

    func toggleTag(_ tag: RecipeTag) {
        if selectedTags.contains(tag) {
            selectedTags.removeAll { $0 == tag }
        } else {
            selectedTags.append(tag)
        }
    }

    func filterByDevice(_ device: CookingDevice?) {
        selectedDevice = device
    }

    func getRandomRecipe() -> Recipe? {
        let recipe = Recipe.randomRecipe(excluding: recentRecipeIDs)
        if let recipe = recipe {
            recentRecipeIDs.append(recipe.id)
            selectedRandomRecipe = recipe
        }
        return recipe
    }

    func resetFilters() {
        searchText = ""
        selectedCuisine = nil
        selectedTags = []
        selectedDevice = nil
        selectedPrepTime = nil
        selectedDifficulty = nil
        availableIngredients = []
    }

    func filterByAvailableIngredients() {
        recipes = Recipe.sampleRecipes.filter { recipe in
            recipe.ingredients.allSatisfy { ing in
                availableIngredients.contains { $0.caseInsensitiveCompare(ing.name) == .orderedSame }
            }
        }
    }
}


