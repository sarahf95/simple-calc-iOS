//
//  ViewController.swift
//  SimpleCalc-iOS
//
//  Created by Sarah Feldmann on 10/24/17.
//  Copyright © 2017 Sarah Feldmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions

    var action = false
    var num = 0
    var operation = ""
    var nums = [Int]()
    
    // Numbers
    @IBAction func clickZero(_ sender: Any) {
        if result.text == "0" || action {
            result.text = "0"
        } else {
            result.text = result.text! + "0"
        }    }
    @IBAction func clickOne(_ sender: Any) {
        if result.text == "0" || action  {
            result.text = "1"
        } else {
            result.text = result.text! + "1"
        }
    }
    @IBAction func clickTwo(_ sender: Any) {
        if result.text == "0" || action {
            result.text = "2"
        } else {
            result.text = result.text! + "2"
        }
    }
    @IBAction func clickThree(_ sender: Any) {
        if result.text == "0" || action {
            result.text = "3"
        } else {
            result.text = result.text! + "3"
        }
    }
    @IBAction func clickFour(_ sender: Any) {
        if result.text == "0" || action {
            result.text = "4"
        } else {
            result.text = result.text! + "4"
        }
    }
    @IBAction func clickFive(_ sender: Any) {
        if result.text == "0" || action {
            result.text = "5"
        } else {
            result.text = result.text! + "5"
        }
    }
    @IBAction func clickSix(_ sender: Any) {
        if result.text == "0" || action {
            result.text = "6"
        } else {
            result.text = result.text! + "6"
        }
    }
    @IBAction func clickSeven(_ sender: Any) {
        if result.text == "0" || action {
            result.text = "7"
        } else {
            result.text = result.text! + "7"
        }
    }
    @IBAction func clickEight(_ sender: Any) {
        if result.text == "0" || action {
            result.text = "8"
        } else {
            result.text = result.text! + "8"
        }
    }
    @IBAction func clickNine(_ sender: Any) {
        if result.text == "0" || action {
            result.text = "9"
        } else {
            result.text = result.text! + "9"
        }
    }
    
    // Clear
    @IBAction func clickClear(_ sender: Any) {
        result.text = "0"
        num = 0
        nums = [Int]()
    }
    
    // Operations
    @IBAction func clickPlus(_ sender: Any) {
        action = true
        num = (result.text! as NSString).integerValue
        operation = "add"
    }
    @IBAction func clickSub(_ sender: Any) {
        action = true
        num = (result.text! as NSString).integerValue
        operation = "sub"
    }
    @IBAction func clickTimes(_ sender: Any) {
        action = true
        num = (result.text! as NSString).integerValue
        operation = "mult"
    }
    @IBAction func clickDiv(_ sender: Any) {
        action = true
        num = (result.text! as NSString).integerValue
        operation = "div"
    }
    @IBAction func clickMod(_ sender: Any) {
        action = true
        num = (result.text! as NSString).integerValue
        operation = "mod"
    }
    @IBAction func clickCount(_ sender: Any) {
        action = true
        nums.append((result.text! as NSString).integerValue)
        operation = "count"
    }
    
    @IBAction func clickAvg(_ sender: Any) {
        action = true
        nums.append((result.text! as NSString).integerValue)
        operation = "avg"
    }
    @IBAction func clickFact(_ sender: Any) {
        action = true
        nums.append((result.text! as NSString).integerValue)
        operation = "fact"
    }
    // Equals
   
    
    @IBAction func clickEquals(_ sender: Any) {
        if action {
            switch operation{
                case "add":
                result.text = String(Int(num) + Int((result.text! as NSString).integerValue))
                action = false
            case "sub":
                result.text = String(Int(num) -
                    Int((result.text! as NSString).integerValue))
                action = false
            case "mult":
                result.text = String(Int(num) * Int((result.text! as NSString).integerValue))
            case "div":
                result.text = String(Int(num) / Int((result.text! as NSString).integerValue))
                action = false
            case "mod":
                result.text = String(Int(Double(num).truncatingRemainder(dividingBy: Double((result.text! as NSString).integerValue))))
                    action = false
            case "count":
                if(nums.count == 1){
                    result.text = "1"
                } else {
                    result.text = String(nums.count + 1)
                }
                nums = [Int]()
            case "avg":
                nums.append((result.text! as NSString).integerValue)
                var total = 0
                for i in 0...nums.count-1 {
                    total += nums[i]
                }
                result.text = String(total/nums.count)
                nums = [Int]()
            case "fact":
                if nums.count > 1 || String(nums[0]) != result.text{
                    result.text = "ERROR"
                } else {
                    var total = 1
                    for i in 1...nums[0] {
                        total *= i
                    }
                    result.text = String(total)
                }
            default:
                result.text = result.text
            }
        }
    }
}

