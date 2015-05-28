//
//  ViewController.swift
//  Math Training
//
//  Created by JAM2 on 5/27/15.
//  Copyright (c) 2015 JAM2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var levelCalc = 1
    
    var streak = 0
    
    var randomNumber = 0
    
    var randomNumber2 = 0
    
    var operationNumber = 0
    
    var answer = 0
    
    @IBOutlet var inARow: UILabel!
    
    @IBOutlet var level: UILabel!

    @IBOutlet var correctIncorrect: UILabel!
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var field: UITextField!
    
    @IBAction func button(sender: UIButton) {
        
        if field.text == "p" {
            
            levelCalc = 4
            
            createProblem()
            
            level.text = "Level: \(levelCalc)"
            
            field.text = ""
            
        } else if field.text == "" {
            
            
            
        } else if field.text == "\(answer)" {
            
            field.text = ""
            
            correctIncorrect.text = "Correct!!!"
            
            streak += 1
            
            if streak % 5 == 0 {
                
                levelCalc += 1
                
            }
            
            inARow.text = "\(streak) in a row."
            
            level.text = "Level: \(levelCalc)"
            
            createProblem()
            
        } else {
            
            streak = 0
            
            correctIncorrect.text = "Incorrect!!!"
            
            inARow.text = "\(streak) in a row."
            
        }
        
    }
    
    func createProblem() {
        
        if levelCalc == 1 {
            
            randomNumber = Int(arc4random_uniform(100))
            
            randomNumber2 = Int(arc4random_uniform(100))
            
            operationNumber = Int(arc4random_uniform(3))
            
            if operationNumber == 0 {
                
                answer = randomNumber + randomNumber2
                
                label.text = "\(randomNumber) + \(randomNumber2) = ?"
                
            } else if operationNumber == 1 {
                
                answer = randomNumber - randomNumber2
                
                label.text = "\(randomNumber) - \(randomNumber2) = ?"
                
            } else if operationNumber == 2 {
                
                randomNumber = Int(arc4random_uniform(10))
                
                randomNumber2 = Int(arc4random_uniform(10))
                
                answer = randomNumber * randomNumber2
                
                label.text = "\(randomNumber2) x \(randomNumber) = ?"
                
            }
            
        } else if levelCalc == 2 {
            
            var problemType:Int = Int(arc4random_uniform(2))
            
            if problemType == 0 {
                
                randomNumber = Int(arc4random_uniform(100)) + 1
            
                randomNumber2 = randomNumber * Int(arc4random_uniform(10))
                
                answer = randomNumber2 / randomNumber
                
                label.text = "\(randomNumber2) / \(randomNumber) = ?"
                
            } else {
                
                randomNumber = Int(arc4random_uniform(100))
                
                var numberForUse:Double = Double(randomNumber) / Double(arc4random_uniform(10) + 1)
                
                randomNumber2 = Int(arc4random_uniform(90) + 10)
                
                var numberForUse2:Double = Double(randomNumber2) - numberForUse
                
                answer = randomNumber2
                
                label.text = "\(numberForUse2) + \(numberForUse) = ?"
                
            }
            
        } else if levelCalc == 3 {
            
            var problemType:Int = Int(arc4random_uniform(2))
            
            if problemType == 0 {
                
                randomNumber = Int(arc4random_uniform(20)) * 5
                
                println(randomNumber)
                
                randomNumber2 = Int(arc4random_uniform(10)) * 20
                
                println(randomNumber2)
                
                answer = (randomNumber * randomNumber2) / 100
                
                println(answer)
                
                label.text = "What is \(randomNumber)% of \(randomNumber2) = ?"
                
            } else {
                
                var array = [2, 4, 5, 8]
                
                randomNumber2 = Int(arc4random_uniform(10))
                
                var num = array[Int(arc4random_uniform(4))]
                
                randomNumber = randomNumber2 * num - randomNumber2
                
                answer = 100 * randomNumber2 / (randomNumber2 + randomNumber)
                
                label.text = "In a bag, there are \(randomNumber) green marbles and \(randomNumber2) red marbles. What is the chance that you pick a red marble? (Answer in the form of a percent without the symbol.)"
                
            }
            
        } else if levelCalc == 4 {
            
            var problemType:Int = Int(arc4random_uniform(3))
            
            if problemType == 0 {
                
                randomNumber = Int(arc4random_uniform(100))
                
                randomNumber2 = Int(arc4random_uniform(100))
                
                var xNum = arc4random_uniform(10)
                
                var thing = randomNumber * Int(xNum)
                
                var thing2 = thing + randomNumber2
                
                answer = Int(xNum)
                
                label.text = "\(randomNumber)x + \(randomNumber2) = \(thing2)                  x = ?"
                
            } else if problemType == 1 {
                
                randomNumber = Int(arc4random_uniform(20))
                
                randomNumber2 = Int(arc4random_uniform(20))
                
                answer = randomNumber * randomNumber2
                
                label.text = "A rectangle is \(randomNumber) tall and \(randomNumber2) wide. What is its area?"
                
            } else if problemType == 2 {
                
                randomNumber = Int(arc4random_uniform(20))
                
                randomNumber2 = Int(arc4random_uniform(20))
                
                answer = 2 * (randomNumber + randomNumber2)
                
                label.text = "A rectangle is \(randomNumber) tall and \(randomNumber2) wide. What is its perimeter?"
                
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createProblem()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

