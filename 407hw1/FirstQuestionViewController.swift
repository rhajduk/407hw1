//
//  FirstQuestionViewController.swift
//  407hw1
//
//  Created by Rebecca Hajduk on 2/17/16.
//  Copyright © 2016 Rebecca Hajduk. All rights reserved.
//

import UIKit

class FirstQuestionViewController: UIViewController {

    @IBOutlet weak var firstAnswerField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowSecondQuestion" {
            let secondQuestionViewController = segue.destinationViewController as! SecondQuestionViewController
            secondQuestionViewController.testString = firstAnswerField.text!
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
