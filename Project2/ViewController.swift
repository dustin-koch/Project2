//
//  ViewController.swift
//  Project2
//
//  Created by Dustin Koch on 2/18/20.
//  Copyright © 2020 example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    var countries: [String] = []
    var score = 0
    
    // MARK: - Outlets
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    
    
    // MARK: - Lifecycle functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCountries()
        setupUI()
        askQuestion()
    }
    
    // MARK: - CRUD functions
    func askQuestion() {
        buttonOne.setImage(UIImage(named: countries[0]), for: .normal)
        buttonTwo.setImage(UIImage(named: countries[1]), for: .normal)
        buttonThree.setImage(UIImage(named: countries[2]), for: .normal)
    }


} // END OF CLASS

// MARK: - Helper function extensions
extension ViewController {
    
    func setupCountries() {
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
    }
    
    func setupUI() {
        buttonOne.layer.borderWidth = 1
        buttonTwo.layer.borderWidth = 1
        buttonThree.layer.borderWidth = 1

        buttonOne.layer.borderColor = UIColor.lightGray.cgColor
        buttonTwo.layer.borderColor = UIColor.lightGray.cgColor
        buttonThree.layer.borderColor = UIColor.lightGray.cgColor
    }
    
}
