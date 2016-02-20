//
//  ResultsViewController.swift
//  407hw1
//
//  Created by Rebecca Hajduk on 2/17/16.
//  Copyright © 2016 Rebecca Hajduk. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var numCorrect = 0
    var firstAnswer:String = ""
    var secondAnswer:String = ""
    
    @IBAction func RestartBtn(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateResults(firstAnswer,second: secondAnswer);
        resultLabel.text = String(numCorrect)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculateResults(first: String, second: String){
        if first.lowercaseString == "wisconsin" {
            numCorrect++
        }
        if second.lowercaseString == "umbrella" {
            numCorrect++
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
