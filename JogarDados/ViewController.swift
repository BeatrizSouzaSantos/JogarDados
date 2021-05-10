//
//  ViewController.swift
//  JogarDados
//
//  Created by Andre Ramos on 03/05/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dadoImageView1: UIImageView!
    @IBOutlet weak var dadoImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dadoImageView1.image = #imageLiteral(resourceName: "DiceOne")
        dadoImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        
    }
    //MARK: - Actions
    
    @IBAction func rollDicesPressed(_ sender: UIButton) {
        
        let dado = [UIImage(named: "DiceOne")!, UIImage(named: "DiceTwo")!, UIImage(named: "DiceThree")!, UIImage(named: "DiceFour")!, UIImage(named: "DiceFive")!, UIImage(named: "DiceSix")!]
        
        (dadoImageView1.image, dadoImageView2.image) = (dado.randomElement(), dado.randomElement())
        
    }
}

