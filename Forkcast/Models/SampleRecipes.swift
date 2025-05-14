//
//  SampleRecipes.swift
//  ForkcastApp
//
//  Created by Tahmid Ahmed on 8/5/2025.
//

import Foundation

extension Recipe {
    static let sampleRecipes: [Recipe] = [
        Recipe(
            name: "Spaghetti Carbonara",
            cuisine: CuisineType.italian,
            tags: [RecipeTag.savoury, RecipeTag.comfort],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "Spaghetti", amount: 200, unit: "g"),
                Ingredient(name: "Eggs", amount: 2, unit: "whole"),
                Ingredient(name: "Parmesan cheese", amount: 50, unit: "g"),
                Ingredient(name: "Cooked ham", amount: 75, unit: "g"),
                Ingredient(name: "Black pepper", amount: 1, unit: "tsp"),
                Ingredient(name: "Salt", amount: 0.5, unit: "tsp")
            ],
            instructions: [
                "Boil water in a large pot, add salt, and cook spaghetti until al dente.",
                "Dice the ham and gently fry in a non-stick pan for 2-3 minutes until warmed through.",
                "In a bowl, whisk together eggs, grated Parmesan cheese, and black pepper.",
                "Drain the spaghetti, reserving a little cooking water.",
                "Quickly toss the hot spaghetti with the ham, then remove from heat.",
                "Add the egg and cheese mixture, stirring quickly to create a creamy sauce. Add a splash of reserved pasta water if needed.",
                "Season with extra black pepper and serve immediately."
            ],
            nutritionFacts: NutritionFacts(calories: 510, protein: 27, carbs: 62, fats: 18),
            imageName: "SpaghettiCarbonara",
            prepTime: PrepTime.under30,
            difficulty: Difficulty.medium
        ),
        Recipe(
            name: "Chicken Stir Fry",
            cuisine: CuisineType.chinese,
            tags: [RecipeTag.cutting, RecipeTag.savoury],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "Chicken", amount: 250, unit: "g"),
                Ingredient(name: "Mixed Veggies", amount: 1, unit: "cup"),
                Ingredient(name: "Soy Sauce", amount: 2, unit: "tbsp"),
                Ingredient(name: "Oil", amount: 1, unit: "tbsp")
            ],
            instructions: [
                "Cut and season chicken.",
                "Stir fry chicken in oil.",
                "Add vegetables and cook.",
                "Add soy sauce and serve."
            ],
            nutritionFacts: NutritionFacts(calories: 350, protein: 30, carbs: 15, fats: 12),
            imageName: "ChickenStirFry",
            prepTime: PrepTime.under30,
            difficulty: Difficulty.easy
        ),
        Recipe(
            name: "Avocado Toast",
            cuisine: CuisineType.american,
            tags: [RecipeTag.cutting, RecipeTag.sweet],
            cookingDevice: CookingDevice.toaster,
            ingredients: [
                Ingredient(name: "Bread", amount: 2, unit: "slices"),
                Ingredient(name: "Avocado", amount: 1, unit: "whole"),
                Ingredient(name: "Lemon Juice", amount: 1, unit: "tsp"),
                Ingredient(name: "Chili Flakes", amount: 0.5, unit: "tsp")
            ],
            instructions: [
                "Toast bread.",
                "Mash avocado with lemon.",
                "Spread on toast.",
                "Sprinkle chili flakes and serve."
            ],
            nutritionFacts: NutritionFacts(calories: 280, protein: 6, carbs: 25, fats: 18),
            imageName: "AvocadoToast",
            prepTime: PrepTime.under15,
            difficulty: Difficulty.easy
        ),
        Recipe(
            name: "Miso Soup",
            cuisine: CuisineType.japanese,
            tags: [RecipeTag.cutting, RecipeTag.comfort],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "Miso Paste", amount: 2, unit: "tbsp"),
                Ingredient(name: "Tofu", amount: 100, unit: "g"),
                Ingredient(name: "Seaweed", amount: 0.25, unit: "cup"),
                Ingredient(name: "Green Onion", amount: 1, unit: "whole")
            ],
            instructions: [
                "Boil water, dissolve miso paste.",
                "Add tofu, seaweed, and green onions."
            ],
            nutritionFacts: NutritionFacts(calories: 180, protein: 12, carbs: 10, fats: 8),
            imageName: "MisoSoup",
            prepTime: PrepTime.under15,
            difficulty: Difficulty.easy
        ),
        Recipe(
            name: "Egg Fried Rice",
            cuisine: CuisineType.chinese,
            tags: [RecipeTag.comfort, RecipeTag.savoury],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "Cooked Rice", amount: 1.5, unit: "cups"),
                Ingredient(name: "Eggs", amount: 2, unit: "whole"),
                Ingredient(name: "Soy Sauce", amount: 1, unit: "tbsp"),
                Ingredient(name: "Peas", amount: 0.5, unit: "cup")
            ],
            instructions: [
                "Scramble eggs.",
                "Add rice, peas, soy sauce.",
                "Stir fry until hot and serve."
            ],
            nutritionFacts: NutritionFacts(calories: 500, protein: 15, carbs: 60, fats: 20),
            imageName: "EggFriedRice",
            prepTime: PrepTime.under30,
            difficulty: Difficulty.easy
        ),
        Recipe(
            name: "Garlic Bread",
            cuisine: CuisineType.italian,
            tags: [RecipeTag.comfort, RecipeTag.savoury],
            cookingDevice: CookingDevice.oven,
            ingredients: [
                Ingredient(name: "Bread", amount: 1, unit: "loaf"),
                Ingredient(name: "Garlic", amount: 3, unit: "cloves"),
                Ingredient(name: "Butter", amount: 2, unit: "tbsp"),
                Ingredient(name: "Parsley", amount: 1, unit: "tbsp")
            ],
            instructions: [
                "Mix garlic and butter.",
                "Spread on bread and bake.",
                "Sprinkle parsley and serve."
            ],
            nutritionFacts: NutritionFacts(calories: 400, protein: 8, carbs: 45, fats: 20),
            imageName: "GarlicBread",
            prepTime: PrepTime.under30,
            difficulty: Difficulty.easy
        ),
        Recipe(
            name: "Spicy Chicken with Couscous",
            cuisine: CuisineType.middleEastern,
            tags: [RecipeTag.spicy, RecipeTag.bulking, RecipeTag.savoury],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "Chicken breast", amount: 250, unit: "g"),
                Ingredient(name: "Couscous", amount: 100, unit: "g"),
                Ingredient(name: "Red chili", amount: 1, unit: "pc"),
                Ingredient(name: "Olive oil", amount: 1, unit: "tbsp"),
                Ingredient(name: "Garlic", amount: 2, unit: "cloves"),
                Ingredient(name: "Lemon juice", amount: 1, unit: "tbsp"),
                Ingredient(name: "Salt", amount: 0.5, unit: "tsp"),
                Ingredient(name: "Black pepper", amount: 0.5, unit: "tsp")
            ],
            instructions: [
                "Dice chicken and season with salt, pepper, and lemon juice.",
                "Heat olive oil in a pan, add garlic and chili, sauté for 1 min.",
                "Add chicken, cook until browned.",
                "Prepare couscous as per packet instructions.",
                "Serve chicken over couscous."
            ],
            nutritionFacts: NutritionFacts(calories: 420, protein: 38, carbs: 40, fats: 12),
            imageName: "SpicyChickenCouscous",
            prepTime: PrepTime.under30,
            difficulty: Difficulty.easy
        ),

        Recipe(
            name: "Chickpea Curry",
            cuisine: CuisineType.indian,
            tags: [RecipeTag.cutting, RecipeTag.savoury, RecipeTag.comfort],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "Canned chickpeas", amount: 400, unit: "g"),
                Ingredient(name: "Onion", amount: 1, unit: "pc"),
                Ingredient(name: "Garlic", amount: 2, unit: "cloves"),
                Ingredient(name: "Ginger", amount: 1, unit: "tbsp"),
                Ingredient(name: "Curry powder", amount: 1, unit: "tbsp"),
                Ingredient(name: "Chopped tomatoes", amount: 400, unit: "g"),
                Ingredient(name: "Coconut milk", amount: 100, unit: "ml"),
                Ingredient(name: "Spinach", amount: 1, unit: "cup"),
                Ingredient(name: "Olive oil", amount: 1, unit: "tbsp"),
                Ingredient(name: "Salt", amount: 0.5, unit: "tsp")
            ],
            instructions: [
                "Sauté onion, garlic, and ginger in oil.",
                "Add curry powder, cook 1 min.",
                "Add tomatoes, chickpeas, and coconut milk. Simmer 10 min.",
                "Stir in spinach, cook until wilted."
            ],
            nutritionFacts: NutritionFacts(calories: 350, protein: 12, carbs: 52, fats: 10),
            imageName: "ChickpeaCurry",
            prepTime: PrepTime.under30,
            difficulty: Difficulty.easy
        ),

        Recipe(
            name: "Bodybuilder’s Steak & Grilled Cheese Sandwich",
            cuisine: CuisineType.american,
            tags: [RecipeTag.bulking, RecipeTag.savoury, RecipeTag.comfort],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "Sirloin steak", amount: 100, unit: "g"),
                Ingredient(name: "Whole grain bread", amount: 2, unit: "slices"),
                Ingredient(name: "Pepper jack cheese", amount: 40, unit: "g"),
                Ingredient(name: "Bell pepper", amount: 0.5, unit: "pc"),
                Ingredient(name: "Onion", amount: 0.5, unit: "pc"),
                Ingredient(name: "Olive oil", amount: 1, unit: "tsp")
            ],
            instructions: [
                "Grill steak, slice thinly.",
                "Sauté peppers and onions in oil.",
                "Layer steak, cheese, peppers, and onions between bread.",
                "Grill sandwich until cheese melts."
            ],
            nutritionFacts: NutritionFacts(calories: 480, protein: 32, carbs: 35, fats: 22),
            imageName: "SteakGrilledCheese",
            prepTime: PrepTime.under30,
            difficulty: Difficulty.medium
        ),

        Recipe(
            name: "Clean Kung Pao Chicken",
            cuisine: CuisineType.chinese,
            tags: [RecipeTag.spicy, RecipeTag.cutting, RecipeTag.savoury],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "Chicken breast", amount: 200, unit: "g"),
                Ingredient(name: "Bell pepper", amount: 1, unit: "pc"),
                Ingredient(name: "Zucchini", amount: 1, unit: "pc"),
                Ingredient(name: "Soy sauce", amount: 2, unit: "tbsp"),
                Ingredient(name: "Sriracha", amount: 1, unit: "tsp"),
                Ingredient(name: "Chili paste", amount: 1, unit: "tsp"),
                Ingredient(name: "Garlic", amount: 1, unit: "clove"),
                Ingredient(name: "Olive oil", amount: 1, unit: "tbsp")
            ],
            instructions: [
                "Cube chicken, season with soy sauce.",
                "Stir fry chicken in oil, add garlic.",
                "Add veggies, stir fry 3 min.",
                "Add sriracha and chili paste, cook 2 min."
            ],
            nutritionFacts: NutritionFacts(calories: 320, protein: 34, carbs: 18, fats: 10),
            imageName: "KungPaoChicken",
            prepTime: PrepTime.under30,
            difficulty: Difficulty.easy
        ),

        Recipe(
            name: "Braised Jackfruit Chilli",
            cuisine: CuisineType.mexican,
            tags: [RecipeTag.spicy, RecipeTag.comfort, RecipeTag.savoury],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "Canned jackfruit", amount: 400, unit: "g"),
                Ingredient(name: "Red pepper", amount: 1, unit: "pc"),
                Ingredient(name: "Yellow pepper", amount: 1, unit: "pc"),
                Ingredient(name: "Kidney beans", amount: 400, unit: "g"),
                Ingredient(name: "Tomato puree", amount: 2, unit: "tbsp"),
                Ingredient(name: "Onion", amount: 1, unit: "pc"),
                Ingredient(name: "Garlic", amount: 2, unit: "cloves"),
                Ingredient(name: "Chili powder", amount: 1, unit: "tbsp"),
                Ingredient(name: "Olive oil", amount: 1, unit: "tbsp"),
                Ingredient(name: "Dark chocolate", amount: 10, unit: "g")
            ],
            instructions: [
                "Sauté onion and garlic in oil.",
                "Add peppers, cook 3 min.",
                "Add jackfruit, kidney beans, tomato puree, and chili powder.",
                "Simmer 15 min, stir in chocolate."
            ],
            nutritionFacts: NutritionFacts(calories: 360, protein: 14, carbs: 56, fats: 8),
            imageName: "JackfruitChilli",
            prepTime: PrepTime.under30,
            difficulty: Difficulty.medium
        ),

        Recipe(
            name: "Slow Cooker Flank Steak",
            cuisine: CuisineType.american,
            tags: [RecipeTag.bulking, RecipeTag.savoury, RecipeTag.comfort],
            cookingDevice: CookingDevice.slowCooker,
            ingredients: [
                Ingredient(name: "Flank steak", amount: 500, unit: "g"),
                Ingredient(name: "Chili powder", amount: 1, unit: "tbsp"),
                Ingredient(name: "Smoked paprika", amount: 1, unit: "tsp"),
                Ingredient(name: "Cumin", amount: 1, unit: "tsp"),
                Ingredient(name: "Garlic powder", amount: 1, unit: "tsp"),
                Ingredient(name: "Brown sugar", amount: 1, unit: "tbsp"),
                Ingredient(name: "Olive oil", amount: 1, unit: "tbsp"),
                Ingredient(name: "Salt", amount: 1, unit: "tsp")
            ],
            instructions: [
                "Mix spices, rub onto steak.",
                "Place steak in slow cooker, drizzle with oil.",
                "Cook on low 6-8 hours."
            ],
            nutritionFacts: NutritionFacts(calories: 520, protein: 48, carbs: 6, fats: 32),
            imageName: "SlowCookerFlankSteak",
            prepTime: PrepTime.over30,
            difficulty: Difficulty.easy
        ),
        Recipe(
            name: "Chocolate Lava Cake",
            cuisine: CuisineType.french,
            tags: [RecipeTag.sweet, RecipeTag.comfort],
            cookingDevice: CookingDevice.oven,
            ingredients: [
                Ingredient(name: "Dark chocolate", amount: 100, unit: "g"),
                Ingredient(name: "Butter", amount: 100, unit: "g"),
                Ingredient(name: "Eggs", amount: 2, unit: "whole"),
                Ingredient(name: "Sugar", amount: 50, unit: "g"),
                Ingredient(name: "Plain flour", amount: 40, unit: "g")
            ],
            instructions: [
                "Preheat oven to 200°C (180°C fan). Grease two ramekins.",
                "Melt chocolate and butter together, then let cool slightly.",
                "Whisk eggs and sugar until pale and thick.",
                "Fold melted chocolate mixture into eggs, then sift in flour and fold gently.",
                "Divide batter between ramekins and bake for 10-12 minutes until just set outside but gooey in the center.",
                "Let it cool for 1 minute, then turn out onto plates and serve immediately."
            ],
            nutritionFacts: NutritionFacts(calories: 480, protein: 7, carbs: 38, fats: 34),
            imageName: "ChocolateLavaCake",
            prepTime: PrepTime.under30,
            difficulty: Difficulty.medium
        ),
        Recipe(
            name: "Homemade Pork Dumplings",
            cuisine: CuisineType.chinese,
            tags: [RecipeTag.savoury, RecipeTag.comfort],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "All-purpose flour", amount: 200, unit: "g"),
                Ingredient(name: "Water", amount: 100, unit: "ml"),
                Ingredient(name: "Ground pork", amount: 250, unit: "g"),
                Ingredient(name: "Ginger", amount: 1, unit: "tbsp"),
                Ingredient(name: "Garlic", amount: 2, unit: "cloves"),
                Ingredient(name: "Green onion", amount: 2, unit: "pcs"),
                Ingredient(name: "Soy sauce", amount: 2, unit: "tbsp"),
                Ingredient(name: "Sesame oil", amount: 1, unit: "tsp"),
                Ingredient(name: "Salt", amount: 0.5, unit: "tsp"),
                Ingredient(name: "White pepper", amount: 0.25, unit: "tsp")
            ],
            instructions: [
                "Mix flour and water to form a dough. Knead until smooth, cover, and rest for 30 minutes.",
                "Combine pork, ginger, garlic, green onion, soy sauce, sesame oil, salt, and pepper for the filling.",
                "Roll dough into a log, cut into pieces, and roll each into a thin circle.",
                "Place filling in the center of each wrapper. Fold and pleat to seal.",
                "Boil dumplings in salted water until they float, or pan-fry until golden and steam to finish.",
                "Serve with dipping sauce."
            ],
            nutritionFacts: NutritionFacts(calories: 420, protein: 22, carbs: 45, fats: 16),
            imageName: "PorkDumplings",
            prepTime: PrepTime.over30,
            difficulty: Difficulty.hard
        ),
        Recipe(
            name: "Shrimp and Chorizo Paella",
            cuisine: CuisineType.spanish,
            tags: [RecipeTag.savoury, RecipeTag.spicy, RecipeTag.comfort],
            cookingDevice: CookingDevice.stove,
            ingredients: [
                Ingredient(name: "Short-grain rice", amount: 250, unit: "g"),
                Ingredient(name: "Shrimp", amount: 200, unit: "g"),
                Ingredient(name: "Chorizo", amount: 100, unit: "g"),
                Ingredient(name: "Chicken broth", amount: 750, unit: "ml"),
                Ingredient(name: "Onion", amount: 1, unit: "pc"),
                Ingredient(name: "Red bell pepper", amount: 1, unit: "pc"),
                Ingredient(name: "Garlic", amount: 2, unit: "cloves"),
                Ingredient(name: "Tomato", amount: 1, unit: "whole"),
                Ingredient(name: "Saffron", amount: 0.25, unit: "tsp"),
                Ingredient(name: "Paprika", amount: 1, unit: "tsp"),
                Ingredient(name: "Olive oil", amount: 2, unit: "tbsp"),
                Ingredient(name: "Salt", amount: 1, unit: "tsp"),
                Ingredient(name: "Black pepper", amount: 0.5, unit: "tsp")
            ],
            instructions: [
                "Heat oil in a large pan. Sauté onion, garlic, and bell pepper until soft.",
                "Add chorizo and cook until browned. Stir in rice, paprika, and saffron.",
                "Add grated tomato and cook until absorbed.",
                "Pour in broth, bring to a simmer. Cook without stirring for 10 minutes.",
                "Add shrimp on top. Continue cooking until rice is tender and socarrat forms.",
                "Rest for 5 minutes before serving."
            ],
            nutritionFacts: NutritionFacts(calories: 600, protein: 32, carbs: 70, fats: 22),
            imageName: "ShrimpChorizoPaella",
            prepTime: PrepTime.over30,
            difficulty: Difficulty.hard
        )
    ]

    static func randomRecipe(excluding ids: [UUID]) -> Recipe? {
        let remaining = sampleRecipes.filter { !ids.contains($0.id) }
        return remaining.randomElement() ?? sampleRecipes.randomElement()
    }
}




