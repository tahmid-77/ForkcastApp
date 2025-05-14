//
//  Recipe.swift
//  ForkcastApp
//
//  Created by Tahmid Ahmed on 8/5/2025.
//


import Foundation

// Enum Types

enum PrepTime: String, CaseIterable, Hashable {
    case under15 = "<15 min"
    case under30 = "<30 min"
    case over30 = "30+ min"
}

enum Difficulty: String, CaseIterable, Hashable {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

enum CuisineType: String, CaseIterable, Hashable {
    case italian = "Italian"
    case mexican = "Mexican"
    case chinese = "Chinese"
    case japanese = "Japanese"
    case american = "American"
    case indian = "Indian"
    case middleEastern = "Middle Eastern"
    case french = "French"
    case spanish = "Spanish"
}

enum RecipeTag: String, CaseIterable, Hashable {
    case spicy = "Spicy"
    case sweet = "Sweet"
    case savoury = "Savoury"
    case bulking = "Bulking"
    case cutting = "Cutting"
    case comfort = "Comfort"
}

enum CookingDevice: String, CaseIterable, Hashable {
    case oven = "Oven"
    case microwave = "Microwave"
    case stove = "Stove"
    case airFryer = "Air Fryer"
    case riceCooker = "Rice Cooker"
    case toaster = "Toaster"
    case slowCooker = "Slow cooker"
}

// MARK: - Recipe Model

struct Recipe: Identifiable, Hashable {
    let id: UUID
    let name: String
    let cuisine: CuisineType
    let tags: [RecipeTag]
    let cookingDevice: CookingDevice
    let ingredients: [Ingredient]
    let instructions: [String]
    let nutritionFacts: NutritionFacts
    let imageName: String?
    let prepTime: PrepTime
    let difficulty: Difficulty

    init(
        id: UUID = UUID(),
        name: String,
        cuisine: CuisineType,
        tags: [RecipeTag],
        cookingDevice: CookingDevice,
        ingredients: [Ingredient],
        instructions: [String],
        nutritionFacts: NutritionFacts,
        imageName: String?,
        prepTime: PrepTime,
        difficulty: Difficulty
    ) {
        self.id = id
        self.name = name
        self.cuisine = cuisine
        self.tags = tags
        self.cookingDevice = cookingDevice
        self.ingredients = ingredients
        self.instructions = instructions
        self.nutritionFacts = nutritionFacts
        self.imageName = imageName
        self.prepTime = prepTime
        self.difficulty = difficulty
    }
}


// MARK: - Ingredient Model

struct Ingredient: Identifiable, Hashable {
    let id: UUID
    let name: String
    let amount: Double
    let unit: String

    init(id: UUID = UUID(), name: String, amount: Double, unit: String) {
        self.id = id
        self.name = name
        self.amount = amount
        self.unit = unit
    }
}

// MARK: - Nutrition Facts

struct NutritionFacts: Hashable {
    let calories: Int
    let protein: Double
    let carbs: Double
    let fats: Double
}



