//
//  ViewController.swift
//  MAP PA1 Jeanette Ang 20
//
//  Created by JeanetteAng on 27/8/20.
//  Copyright © 2020 ITE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var scores:[Double] = []
    var average = 0.0
    @IBOutlet weak var txtTestScore: UITextField!
    @IBOutlet weak var txtInput: UILabel!
    
    @IBOutlet weak var txtAverage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtAverage.layer.borderWidth = 3
        txtAverage.layer.borderColor = #colorLiteral(red: 0.8501524604, green: 1, blue: 0.3220751114, alpha: 1)
        txtInput.layer.borderWidth = 3
        txtInput.layer.borderColor = #colorLiteral(red: 0.3762382669, green: 0.9273477157, blue: 0.2488984166, alpha: 1)
        txtTestScore.layer.borderWidth = 3
        txtTestScore.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }

    @IBAction func btnADD(_ sender: Any) {
        guard let score = Double(txtTestScore.text!) else {
            print("Not valid score: \(txtTestScore.text ?? "")")
            return
            
        }
        if txtTestScore.text != "" {
            scores = scores + [score]
        txtInput.text = "\(scores)"
        txtTestScore.text = ""
        CalculateAverage()
        
        return
        
    }
    }
    
        @IBAction func btnSUBTRACT(_ sender: Any) {
            if Double(scores.count)>=1{
                scores.removeLast()
                CalculateAverage()
                txtInput.text = "\(scores)"
                
            }
                
            if Double(scores.count) == 0{
                txtInput.text = "no value"
                txtAverage.text = "no value"
            }

    }
            
        
        @IBAction func btnCLEAR(_ sender: Any) {
        scores = []
        txtTestScore.text = ""
        txtInput.text = ""
        txtAverage.text = ""
    }
    
    func CalculateAverage(){
    var total = 0.0
    for score in scores {
    total += Double(score)
    }
    let scoresTotal = Double(scores.count)
    if txtInput != nil {
        txtAverage.text = String(total/Double(scoresTotal))
    }
    else{
        txtAverage.text = "Not vaild score"
    }

}

}
