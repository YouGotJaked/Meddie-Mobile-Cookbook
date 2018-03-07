//
//  Recipe.swift
//  Meddie
//
//  Created by Jake Day on 3/5/18.
//  Copyright © 2018 Jake Day. All rights reserved.
//

import Foundation

struct Ingredient {
    var quantity = 0.0
    var measurement = ""
    var name = ""
    
    public var description: String { return displayWholeNumber(d: quantity) + " \(measurement) \(name)" }
}

class Recipe {
    var name: String
    var meal: String
    var difficulty: Int
    var ingredients: [Ingredient] = []
    var steps: [String] = []
    
    init(name: String, meal: String, difficulty: Int) {
        self.name = name
        self.meal = meal
        self.difficulty = difficulty

    }
    
    func addIngredient(q: Double, m: String, n: String) {
        ingredients.append(Ingredient(quantity: q, measurement: m, name: n))
    }
    
    func addStep(step: String) {
        steps.append(step)
    }
    
    func setMeal(m: String) {
        meal = m
    }
    
    func setDifficulity(d: Int) {
        difficulty = d
    }
    
    func getName() -> String {
        return name
    }
    
    func getIngredient(index: Int) -> Ingredient {
        return ingredients[index]
    }
    
    func getStep(index: Int) -> String {
        return steps[index]
    }
    
    func getMeal() -> String {
        return meal
    }
    
    func getDifficulty() -> String {
        return String(difficulty)
    }
    
    func getDifficulty() -> Int {
        return difficulty
    }
    
    func getIngredients() -> String {
        var out = ""
        for ingredient in ingredients {
            out.append(ingredient.description + "\n")
        }
        return out
    }
    
    func getSteps() -> String {
        var out = ""
        for (index, step) in steps.enumerated() {
            out.append(String(index + 1) + ". " + step + "\n")
        }
        return out
    }
    
    func compareIngredients(i1: Ingredient, i2: Ingredient) -> Bool {
        return i1.name.caseInsensitiveCompare(i2.name) == ComparisonResult.orderedSame
    }
    
    func containsIngredient(ingr: Ingredient) -> Bool {
        for ingredient in ingredients {
            if (compareIngredients(i1: ingredient, i2: ingr)) {
                return true
            }
        }
        return false
    }
    
    func displayIngredients() {
        for ingredient in ingredients {
            print(ingredient.description)
        }
    }
    
    func displaySteps() {
        for (index, step) in steps.enumerated() {
            print(String(index + 1) + ". " + step)
        }
    }
    
    func displayMeal() {
        print(meal)
    }
    
    func displayRecipe() -> String {
        var out = "Name: " + getName() + "\n"
        out.append("\nCategory: " + getMeal() + "\n")
        out.append("\nDifficulty: " + getDifficulty() + "\n")
        out.append("\nIngredients: \n" + getIngredients())
        out.append("\nDirections: \n" + getSteps())
        return out
    }
}

private func displayWholeNumber(d: Double) -> String {
    return d.truncatingRemainder(dividingBy: 1) == 0 ? String(Int(d)) : String(d)
}

