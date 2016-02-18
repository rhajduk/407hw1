//
//  SecondQuestionViewController.swift
//  407hw1
//
//  Created by Rebecca Hajduk on 2/17/16.
//  Copyright © 2016 Rebecca Hajduk. All rights reserved.
//

import UIKit

class SecondQuestionViewController: UIViewController {

    
    @IBOutlet weak var secondAnswerField: UITextField!
    
    var firstAnswer:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowResults"{
            let resultsViewController = segue.destinationViewController as! ResultsViewController
            resultsViewController.secondAnswer = secondAnswerField.text!
            resultsViewController.firstAnswer = firstAnswer
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
