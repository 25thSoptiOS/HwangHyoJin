import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var NumShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var newOper = true
    
    func AddNum(number: String){
        var textNum = String(NumShow.text!)
        
        if newOper {
            textNum = ""
            newOper = false
        }
        
        textNum = textNum + number
        NumShow.text = textNum
    }
    
    @IBAction func btn0(_ sender: UIButton) {
        AddNum(number: "0")
    }
    @IBAction func btn1(_ sender: UIButton) {
        AddNum(number: "1")
    }
    @IBAction func btn2(_ sender: UIButton) {
        AddNum(number: "2")
    }
    @IBAction func btn3(_ sender: UIButton) {
        AddNum(number: "3")
    }
    @IBAction func btn4(_ sender: UIButton) {
        AddNum(number: "4")
    }
    @IBAction func btn5(_ sender: UIButton) {
        AddNum(number: "5")
    }
    @IBAction func btn6(_ sender: UIButton) {
        AddNum(number: "6")
    }
    @IBAction func btn7(_ sender: UIButton) {
        AddNum(number: "7")
    }
    @IBAction func btn8(_ sender: UIButton) {
        AddNum(number: "8")
    }
    @IBAction func btn9(_ sender: UIButton) {
        AddNum(number: "9")
    }
    
    var op = "+"
    var number1 : Double?
    
    @IBAction func btnMul(_ sender: UIButton) {
        op = "*"
        number1 = Double(NumShow.text!)
        newOper = true
    }
    
    @IBAction func btnEqual(_ sender: UIButton) {
        let number2 = Double(NumShow.text!)
        var results : Double?
        
        switch op {
        case "*":
            results = number1! * number2!
        case "/":
            results = number1! / number2!
        case "-":
            results = number1! - number2!
        case "+":
            results = number1! + number2!
        default:
            results = 0.0
        }
        
        NumShow.text = String(results!)
        newOper = true;
    }
    
    @IBAction func btnDiv(_ sender: UIButton) {
        op = "/"
        number1 = Double(NumShow.text!)
        newOper = true
    }
    
    @IBAction func btnSub(_ sender: UIButton) {
        op = "-"
        number1 = Double(NumShow.text!)
        newOper = true
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        op = "+"
        number1 = Double(NumShow.text!)
        newOper = true
    }
    @IBAction func btnAC(_ sender: UIButton) {
        NumShow.text = "0"
        newOper = true
    }
    
    var boolian = true;
    
}
