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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = self.selectedItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playAgain(){
        dismissViewControllerAnimated(true, completion: nil)
    }

    
}
