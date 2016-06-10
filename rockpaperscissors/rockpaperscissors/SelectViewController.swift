//
//  ViewController.swift
//  rockpaperscissors
//
//  Created by CURTIS MCMILLIN on 6/10/16.
//  Copyright © 2016 CURTIS MCMILLIN. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playRock(){
        print("playRock happened")
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        vc.selectedItem = "Rock"
        presentViewController(vc, animated: true, completion: nil)

    }

    @IBAction func playPaper(){
        print("playPaper happened")
    }
    
    @IBAction func playScissors(){
        print("playScissors happened")
    }

}

