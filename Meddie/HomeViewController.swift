//
//  HomeViewController.swift
//  Meddie
//
//  Created by Jake Day on 2/20/18.
//  Copyright © 2018 Jake Day. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    // Mark: Properties
    @IBOutlet weak var appNameView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBackground(filename: "home_bg.JPG")
        addTitle(textView: appNameView, appName: "MOBILE COOKBOOK", color: .white)
        //addSubtitle(desc: "A")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addBackground(filename: String) {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: filename)
        addImageBlur(image: backgroundImage)
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    func addImageBlur(image: UIImageView) {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = image.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        image.addSubview(blurEffectView)
    }
    
    func addTitle(textView: UITextView!, appName: String, color: UIColor) {
        textView.text = appName
        textView.font = (UIFont .boldSystemFont(ofSize: view.frame.size.width / 8))
        textView.textColor = color
        textView.textAlignment = .center
    }
    
    func addSubtitle(desc: String) {
        
    }
}

