//
//  ViewController.swift
//  Final Grade CALCULATOR
//  Created by Dylan Keenan on 10/4/18.
//  Copyright © 2018 Dylan Keenan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gradeNeededOnExam: UILabel!
    @IBOutlet weak var finalGradeWeight: UITextField!
    @IBOutlet weak var desiredGrade: UILabel!
    @IBOutlet weak var myGrade: UITextField!
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func ifButtonIsPressed(_ sender: UIButton){
        if let currentGrade = Double(myGrade.text!){
            if let gradeWanted = Double(desiredGrade.text!){
                if let examWeight = Double(finalGradeWeight.text!){
                    if(examWeight != 0){
                        view.endEditing(true)
                        
                        var neededFinalExamGrade = (100 * gradeWanted - (100 - examWeight) * currentGrade) / examWeight
                        if neededFinalExamGrade < 0{neededFinalExamGrade = 0.0}
                        print(neededFinalExamGrade)
                        
                        if neededFinalExamGrade > 100 {
                            view.backgroundColor = .green
                        }
                        desiredGrade.text = String(neededFinalExamGrade)
                        
                        if neededFinalExamGrade > 100 {
                            view.backgroundColor = .red
                        }else{
                            view.backgroundColor = .green
                        }
                        if Int(desiredGrade.text!)! < 0 {
                            _ = 0
                        }
                        
                        desiredGrade.text = String(neededFinalExamGrade)
                    }
                    else{
                        desiredGrade.text = String(currentGrade)
                    }
                }
            }
        }
    }
    // let needed = (desired -(current*((100-finalPercent)/100))) / (finalPercent/
    
    @IBAction func segmentController(_ sender: UISegmentedControl) {
        if(segmentController.selectedSegmentIndex == 0)
        {
            desiredGrade.text = String(90)
        }
        if(segmentController.selectedSegmentIndex == 1){
            desiredGrade.text = String(80)
        }
        if (segmentController.selectedSegmentIndex == 2){
            desiredGrade.text = String(70)
        }
        if (segmentController.selectedSegmentIndex == 3){
            desiredGrade.text = String(60)
        }
        if (segmentController.selectedSegmentIndex == 4){
            desiredGrade.text = String(50)
        }
        if let currentGrade = Double(myGrade.text!){
            if let gradeWanted = Double(desiredGrade.text!){
                if let examWeight = Double(finalGradeWeight.text!){
                    if(examWeight != 0){
                        view.endEditing(true)
                        
                        let neededFinalExamGrade = (100 * gradeWanted - (100 - examWeight) * currentGrade) / examWeight
                        print(neededFinalExamGrade)
                        
                        if neededFinalExamGrade > 100 {
                            view.backgroundColor = .green
                        }
                        desiredGrade.text = String(neededFinalExamGrade)
                        
                        if neededFinalExamGrade > 100 {
                            view.backgroundColor = .red
                        }else{
                            view.backgroundColor = .green
                        }
                        desiredGrade.text = String(neededFinalExamGrade)
                    }
                    else{
                        desiredGrade.text = String(currentGrade)
                    }
                }
            }
        }
    }
}




