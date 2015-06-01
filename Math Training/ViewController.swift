



import UIKit



class ViewController: UIViewController {
    
    
    
    var proCounter = 0
    
    
    
    var pro = false
    
    
    
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
        
        if field.text == "lv5"{
            
            levelCalc = 5
            field.text = ""
            streak = 0
            
        } else if field.text == "reset"{
            
            levelCalc = 1
            field.text = ""
            streak = 0
            
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
            
            
            
            if levelCalc > 5 {
                
                
                
                levelCalc = Int(arc4random_uniform(5)) + 1
                
                
                
                pro = true
                
                
                
                proCounter += 2
                
                
                
            }
            
            
            
            createProblem()
            
            
            
            if pro == true {
                
                
                
                levelCalc = 5 + (proCounter / 5)
                
                
                
                pro = false
                
                
                
            }
            
            
            
        } else {
            
            
            
            streak = 0
            
            
            
            correctIncorrect.text = "Incorrect!!!"
            
            
            
            inARow.text = "\(streak) in a row."
            
            
            
            field.text = ""
            
            
            
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
                
                
                
                if randomNumber > randomNumber2 {
                    
                    
                    
                    answer = randomNumber - randomNumber2
                    
                    
                    
                    label.text = "\(randomNumber) - \(randomNumber2) = ?"
                    
                    
                    
                } else {
                    
                    
                    
                    answer = randomNumber2 - randomNumber
                    
                    
                    
                    label.text = "\(randomNumber2) - \(randomNumber) = ?"
                    
                    
                    
                }
                
                
                
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
                
                
                
                var array = [2, 4, 5, 10, 20, 50]
                
                
                
                randomNumber2 = Int(arc4random_uniform(10)) + 1
                
                
                
                var num = array[Int(arc4random_uniform(4))]
                
                
                
                randomNumber = randomNumber2 * num - randomNumber2
                
                
                
                var thing1 = 100 * randomNumber2
                
                
                
                var thing2 = randomNumber2 + randomNumber
                
                
                
                answer = thing1 / thing2
                
                
                
                label.text = "In a bag, there are \(randomNumber) blue marbles and \(randomNumber2) red marbles. What is the chance that you pick a red marble? (Answer in the form of a percent without the symbol.)"
                
                
                
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
            
            
            
        } else if levelCalc == 5 {
            
            
            
            var problemNumber:Int = Int(arc4random_uniform(16))
            
            
            
            if problemNumber == 0{
                
                
                
                answer = Int(5)
                
                
                
                label.text = " It is 7 o'clock in the morning. Lunch is served at 12 o'clock.How many hours until lunch time?"    }
            
            if problemNumber == 1{
                
                
                
                answer = 16
                
                
                
                label.text = "Shane sells golf balls. He sold 4 to Jack and 5 to Doug. He had 7 golf balls left. How many golf balls did Shane have at first?"}
            
            if problemNumber == 2{
                
                
                
                answer = Int(16)
                
                
                
                label.text = "Scott made 5 snowballs and 2 snowmen. Corey made 7 snowballs. Frankie made 4 snowballs and a snow fort. How many snowballs did the boys make?"}
            
            
            
            if problemNumber == 3{
                
                
                
                answer = Int(13)
                
                
                
                label.text = "24 second graders are learning to play the recorder. 11 second graders are learning to play the flute.  How many more students are learning the recorder?"
                
            }
            
            if problemNumber == 4{
                
                
                
                answer = Int(36)
                
                
                
                label.text = "There were 24 sailboats and 25 motor boats in the harbor. 13 boats sailed out to sea. How many boats remained in the harbor?"}
            
            if problemNumber == 5{
                
                
                
                answer = Int(82)
                
                
                
                label.text =  "Albert has books. He gave his friend 14 books and his little brother 8 books. Now Albert has 60 books. How many books did he have at first?"}
            
            if problemNumber == 6{
                
                
                
                answer = Int(24)
                
                
                
                label.text = "Kendra reads 12 new books each week. She needs to read 60 words. She has already learned 36 books. How many more books does Kendra need to read?"}
            
            if problemNumber == 7{
                
                
                
                answer = Int(6)
                
                
                
                label.text = "Maddie had 15 books. Luisa had 18 books. Together, Amy and Luisa had 9 more books than Maddie. How many books did Amy have?"}
            
            
            
            if problemNumber == 8{
                
                
                
                answer = Int(12)
                
                
                
                label.text = "At Pizza Palace, 1 large and 2 small pizzas cost the same as 5 small pizzas. A small pizza costs $4. What is the costin dollars of a large pizza?" }
            
            if problemNumber == 9{
                
                
                
                answer = Int(72)
                
                
                
                label.text = "Jeri is thinking of a mystery number. If she divides it by 9 and then subtracts 7 from it, the result is 1. What is Jeri's mystery number?"}
            
            if problemNumber == 10{
                
                
                
                answer = 2
                
                
                
                label.text = "Chrissy had 20 marshmallows. Missy had 24 marshmallows. Chrissy ate 1/5 of hers. Missy ate 1/4 of hers. How many more marshmallows does Missy have left?"}
            
            if problemNumber == 11{
                
                
                
                answer = 75
                
                
                
                label.text = "Kevin spent 1/2 of his money on a video game. He spent 1/4 of his money on a pen. What percent of his money did Kevin spend altogether?"}
            
            
            
            if problemNumber == 12{
                
                
                
                answer = 18
                
                
                
                label.text = "A pole is painted 3 colors. 1/3 of a pole is painted red. 1/2 of it is painted blue. Three feet of the pole is painted green. What is the height of the pole?"}
            
            if problemNumber == 13{
                
                
                
                answer = 45
                
                
                
                label.text = "Cameron bought ice skates that were on sale for 40% off the usual price. If the ice skates usually cost $75, what is the sale price?"}
            
            if problemNumber == 14{
                
                
                
                answer = 399
                
                label.text = "The bank pays 5% interest annually. Selena put $380 an account at the bank. At the end of one year, how much money will Selena have in her account?"}
            
            if problemNumber == 15{
                
                
                
                answer = 112
                
                label.text = "Maya bought a sweater at a discount of 12.5%. She saved $18. What was the sale price of the sweater?"}
            
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

