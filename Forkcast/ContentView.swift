//
//  ContentView.swift
//  ForkcastApp
//
//  Created by Tahmid Ahmed on 8/5/2025.
//

import SwiftUI

// Enum to control layout mode
enum LayoutMode {
    case grid, list
}

struct ContentView: View {
    @StateObject private var viewModel = RecipeViewModel()  // Holds recipes and filters
    @State private var layoutMode: LayoutMode = .list       // Default layout
    @State private var showFilters: Bool = false            // Show/hide filters

    let columns = [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    
                    // Title
                    Text("Forkcast")
                        .font(.system(size: 34, weight: .semibold, design: .rounded))
                        .foregroundColor(.primary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .padding(.top, 8)

                    // Buttons for Filters and Layout Toggle
                    HStack {
                        Button(action: { withAnimation { showFilters.toggle() } }) {
                            Image(systemName: "slider.horizontal.3")
                                .imageScale(.medium)
                                .padding(8)
                                .background(Color(UIColor.secondarySystemBackground))
                                .cornerRadius(8)
                        }

                        Spacer()

                        Button(action: {
                            layoutMode = layoutMode == .grid ? .list : .grid
                        }) {
                            Image(systemName: layoutMode == .grid ? "list.bullet" : "square.grid.2x2")
                                .imageScale(.medium)
                                .padding(8)
                                .background(Color(UIColor.secondarySystemBackground))
                                .cornerRadius(8)
                        }
                    }
                    .padding(.horizontal)

                    // Device Quick Filter Row
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(CookingDevice.allCases, id: \.self) { device in
                                Button(action: {
                                    viewModel.filterByDevice(device)
                                }) {
                                    Text(device.rawValue)
                                        .padding(8)
                                        .background(Color.accentColor.opacity(0.1))
                                        .cornerRadius(10)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }

                    // Filter Section
                    if showFilters {
                        VStack(alignment: .leading, spacing: 16) {
                            FilterChipsView<CuisineType>(
                                title: "Cuisine",
                                options: CuisineType.allCases,
                                selected: viewModel.selectedCuisine,
                                onSelect: viewModel.filterByCuisine
                            )
                            FilterChipsView<RecipeTag>(
                                title: "Mood/Goal",
                                options: RecipeTag.allCases,
                                selectedSet: viewModel.selectedTags,
                                onToggle: viewModel.toggleTag
                            )
                            FilterChipsView<CookingDevice>(
                                title: "Device",
                                options: CookingDevice.allCases,
                                selected: viewModel.selectedDevice,
                                onSelect: viewModel.filterByDevice
                            )
                            FilterChipsView<PrepTime>(
                                title: "Prep Time",
                                options: PrepTime.allCases,
                                selected: viewModel.selectedPrepTime,
                                onSelect: { viewModel.selectedPrepTime = $0 }
                            )
                            FilterChipsView<Difficulty>(
                                title: "Difficulty",
                                options: Difficulty.allCases,
                                selected: viewModel.selectedDifficulty,
                                onSelect: { viewModel.selectedDifficulty = $0 }
                            )
                        }
                        .padding()
                        .background(Color(UIColor.secondarySystemBackground))
                        .cornerRadius(16)
                        .shadow(radius: 1)
                        .padding(.horizontal)
                    }

                    // Search Bar
                    TextField("Search recipes or ingredients", text: $viewModel.searchText)
                        .padding(10)
                        .background(Color(UIColor.secondarySystemBackground))
                        .cornerRadius(10)
                        .padding(.horizontal)

                    // Surprise Me Button
                    Button(action: {
                        if let recipe = viewModel.getRandomRecipe() {
                            viewModel.selectedRandomRecipe = recipe
                        }
                    }) {
                        Text("Surprise Me")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal)

                    // Recipe List/Grid Display
                    if viewModel.filteredRecipes.isEmpty {
                        Text("No recipes found.")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                    } else {
                        Group {
                            if layoutMode == .grid {
                                LazyVGrid(columns: columns, spacing: 16) {
                                    ForEach(viewModel.filteredRecipes) { recipe in
                                        recipeCard(recipe: recipe, layout: .grid)
                                    }
                                }
                            } else {
                                VStack(spacing: 16) {
                                    ForEach(viewModel.filteredRecipes) { recipe in
                                        recipeCard(recipe: recipe, layout: .list)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .navigationDestination(for: Recipe.self) { recipe in
                RecipeDetailView(recipe: recipe)
            }
            // Sheet for Random Recipe (with NavigationStack so 'View Full Recipe' works)
            .sheet(item: $viewModel.selectedRandomRecipe) { recipe in
                NavigationStack {
                    RandomRecipeView(recipe: recipe) {
                        viewModel.selectedRandomRecipe = nil
                    }
                }
            }
        }
    }

    // Recipe Card Generator (for Grid/List modes)
    @ViewBuilder
    func recipeCard(recipe: Recipe, layout: LayoutMode) -> some View {
        NavigationLink(value: recipe) {
            Group {
                if layout == .grid {
                    VStack(spacing: 8) {
                        Image(recipe.imageName ?? "placeholder")
                            .resizable()
                            .aspectRatio(1, contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(10)

                        Text(recipe.name)
                            .font(.headline)
                            .lineLimit(1)
                            .multilineTextAlignment(.center)

                        Text(recipe.cuisine.rawValue)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineLimit(1)

                        Text("\(recipe.nutritionFacts.calories) kcal • \(recipe.ingredients.count) ingredients")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .lineLimit(1)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 180, maxHeight: 200)
                    .background(Color(UIColor.systemBackground))
                    .cornerRadius(16)
                    .shadow(radius: 2)
                } else {
                    HStack(spacing: 12) {
                        Image(recipe.imageName ?? "placeholder")
                            .resizable()
                            .aspectRatio(1, contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .cornerRadius(10)
                            .clipped()

                        VStack(alignment: .leading, spacing: 4) {
                            Text(recipe.name)
                                .font(.headline)

                            Text(recipe.cuisine.rawValue)
                                .font(.subheadline)
                                .foregroundColor(.secondary)

                            Text("\(recipe.nutritionFacts.calories) kcal • \(recipe.ingredients.count) ingredients")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }

                        Spacer()
                    }
                    .padding()
                    .background(Color(UIColor.systemBackground))
                    .cornerRadius(16)
                    .shadow(radius: 2)
                }
            }
        }
    }
}

