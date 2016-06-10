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
    
    @IBAction func playRock(sender:UIButton){
        print("playRock happened")
        
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        vc.selectedItem = getSelectedItem(sender)
        
        presentViewController(vc, animated: true, completion: nil)
    }

    @IBAction func playPaper(sender:UIButton){
        print("playPaper happened")
        
        performSegueWithIdentifier("play", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "play" {
            let vc = segue.destinationViewController as! ResultsViewController
            vc.selectedItem = getSelectedItem(sender as! UIButton)
        }
    }
    
    // MARK: Utilities
    
    private func getSelectedItem(sender: UIButton) -> String {
        // Titles are set to one of: Rock, Paper, or Scissors
        return sender.titleForState(.Normal)!
    }


}

