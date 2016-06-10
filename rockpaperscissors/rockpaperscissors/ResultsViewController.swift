//
//  ResultsViewController.swift
//  rockpaperscissors
//
//  Created by Curtis McMillin on 6/10/16.
//  Copyright © 2016 CURTIS MCMILLIN. All rights reserved.
//

import UIKit

class ResultsViewController:UIViewController {
    
    var selectedItem:String!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var opponentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = compareToOpponent()
        
    }
    
    private func compareToOpponent() -> String {
        let opponent = generateRandomOpponent()
        print("opponent was \(opponent)")
        opponentLabel.text = opponent
        switch selectedItem {
            case "Rock - Code Only":
                switch opponent {
                    case "Paper":
                        return "Paper Covers Rock, You Lose."
                    case "Rock":
                        return "It's a Tie!"
                    case "Scissors":
                        return "Rock Dulls Scissors, You Win!"
                    default:
                        return "Not sure what happend!?"

            }
            case "Paper - Code and Segue":
                switch opponent {
                    case "Paper":
                        return "It's a Tie!"
                    case "Rock":
                        return "Paper Covers Rock, You Win!"
                    case "Scissors":
                        return "Scissors Cut Paper, You Lose."
                    default:
                        return "Not sure what happend!?"

            }
            case "Scissors - Segue Only":
                switch opponent {
                    case "Paper":
                        return "Scissors Cut Paper, You Win!"
                    case "Rock":
                        return "Rock Dulls Scissors, You Lose."
                    case "Scissors":
                        return "It's a Tie!"
                    default:
                        return "Not sure what happend!?"
                    
            }
            default:
                return "Not sure what happend!?"
        }
    }
    
    private func generateRandomOpponent() -> String {
        
        let shapes = ["Rock", "Paper", "Scissors"]
        let randomChoice = shapes[Int(arc4random_uniform(3))]
        return randomChoice
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playAgain(){
        dismissViewControllerAnimated(true, completion: nil)
    }

    
}
