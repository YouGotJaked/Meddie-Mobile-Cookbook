//
//  Recipe.swift
//  Meddie
//
//  Created by Jake Day on 3/5/18.
//  Copyright © 2018 Jake Day. All rights reserved.
//

import Foundation

struct Ingredient {
    var name = ""
    var quantity = 0.0
    var measurement = ""
    
    public var description: String { return String(quantity) + " \(measurement) \(name)" }
}

class Recipe {
    var ingredients: [Ingredient] = []
    var steps: [String] = []
    var meal = ""
    
    func addIngredient(n: String, q: Double, m: String) {
        ingredients.append(Ingredient(name: n, quantity: q, measurement: m))
    }
    
    func addStep(step: String) {
        steps.append(step)
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
            print(ingredient)
        }
    }
    
    func displaySteps() {
        for step in steps {
            print(step)
        }
    }
    
    func displayMeal() {
        print(meal)
    }
}


