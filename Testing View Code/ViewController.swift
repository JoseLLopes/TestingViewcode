//
//  ViewController.swift
//  Testing View Code
//
//  Created by jose vitor lopes on 26/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    let diceImages = [ #imageLiteral(resourceName: "diceOne"), #imageLiteral(resourceName: "diceTwo"), #imageLiteral(resourceName: "diceThree"), #imageLiteral(resourceName: "diceFour"), #imageLiteral(resourceName: "diceFive"), #imageLiteral(resourceName: "diceSix")]
    
    private lazy var diceScreenView: DiceScreenView = {
        return DiceScreenView()
    }()
    
    override func loadView() {
        super.loadView()
        self.view = diceScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceScreenView.setup()
        bindRollDicesActions()
    }
    
    private func bindRollDicesActions()
    {
        
        diceScreenView.pressedRollButton = {
            
            return self.diceImages.randomElement()!
        }
    }


}

