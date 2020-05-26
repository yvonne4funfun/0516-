//
//  ViewController.swift
//  0516問答題
//
//  Created by 黃芳致 on 2020/5/19.
//  Copyright © 2020年 黃郁方. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var QLabel: UILabel!  //問題
    @IBOutlet weak var Alabel: UILabel!  //答案
    @IBOutlet weak var countLabel: UILabel!  //第幾題
    var index = 0  //宣告index儲存到第幾題
    var questions = [question]() //產生array將問題存在array裡
 
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let question1 = question()
        question1.description = "最聰明的恐龍？"
        question1.answer = "傷齒龍"
        questions.append(question1)
        
        let question2 = question()
        question2.description = "最笨的恐龍？"
        question2.answer = "劍龍"
        questions.append(question2)
        
        
        
        let question3 = question()
        question3.description = "最兇猛的恐龍？"
        question3.answer = "暴龍"
        questions.append(question3)
        
        let question4 = question()
        question4.description = "第一個發現有毒牙的恐龍？"
        question4.answer = "中國鳥龍"
        questions.append(question4)
        
        let question5 = question()
        question5.description = "會照顧寶寶的恐龍？"
        question5.answer = "慈母龍"
        questions.append(question5)
        
        let question6 = question()
        question6.description = "第一個在南極洲發現的恐龍？"
        question6.answer = "冰冠龍"
        questions.append(question6)
        
        let question7 = question()
        question7.description = "第一個會挖洞的恐龍？"
        question7.answer = "掘奔龍"
        questions.append(question7)
        
        questions.shuffle()
        QLabel.text = questions[0].description
        Alabel.isHidden = true
        
        
        
        
    }
    @IBAction func AButton(_ sender: Any) {
        Alabel.text = questions[index].answer
        Alabel.isHidden = false
    }
    @IBAction func NextButton(_ sender: Any) {
        index = index + 1
        if index == questions.count{
            index = 0
        }
        if index < 5 {
            countLabel.text = String(index+1)
        nextQuestion()
        }
        else {
            questions.shuffle()
            index = 0
            countLabel.text = String(index+1)
            nextQuestion()
        }
        Alabel.isHidden = true
        
    }
    func nextQuestion(){
        QLabel.text = questions[index].description
        Alabel.text = questions[index].answer
        
       
    }

}


