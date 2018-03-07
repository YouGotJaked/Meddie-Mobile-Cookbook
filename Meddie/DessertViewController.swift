//
//  DessertViewController.swift
//  Meddie
//
//  Created by Jake Day on 2/20/18.
//  Copyright © 2018 Jake Day. All rights reserved.
//

import UIKit

class DessertViewController: UIViewController {
    
    // Mark: Properties
    @IBOutlet weak var recipeView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // cinnamon toast crunch shot
        let ctc = Recipe(name: "Cinnamon Toast Crunch Shot", meal: "Drink", difficulty: 1)
        ctc.addIngredient(q: 2, m: "oz", n: "Rum Chata")
        ctc.addIngredient(q: 1, m: "oz", n: "Fireball")
        ctc.addIngredient(q: 1, m: "pinch", n: "cinnamon")
        ctc.addIngredient(q: 3, m: "pinch", n: "sugar")
        ctc.addStep(step: "Mix cinnamon and sugar together.")
        ctc.addStep(step: "Rim shot glass with cinnamon sugar mixture.")
        ctc.addStep(step: "Add ice to shaker and pour in liquor.")
        ctc.addStep(step: "Shake and strain into shot glass.")
        
        print(ctc.displayIngredients())
        print(ctc.displaySteps())
        
        recipeView.isEditable = false
        recipeView.text = ctc.displayRecipe()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
