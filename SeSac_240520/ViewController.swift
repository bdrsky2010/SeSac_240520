//
//  ViewController.swift
//  SeSac_240520
//
//  Created by Minjae Kim on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    
    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // (): 함수 호출 연산자
        
        // labelName: 매개변수(Parameter)
        // oneLabel, twoLabel...: 전달인자(Argument)
        designLebelUI(oneLabel, textColor: .red)
        designLebelUI(twoLabel, textColor: .green)
        designLebelUI(threeLabel, textColor: .blue)
        
        designButtonUI(oneButton, titleColor: .red, title: "1")
        designButtonUI(twoButton, titleColor: .green, title: "2")
        designButtonUI(threeButton, titleColor: .blue, title: "3")
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        guard let buttonTitle = sender.titleLabel?.text else { return }
        
        if buttonTitle == "1" {
            self.oneLabel.text = "123"
        } else if buttonTitle == "2" {
            self.twoLabel.text = "456"
        } else if buttonTitle == "3" {
            self.threeLabel.text = "789"
        }
    }
    
    // 매개변수(parameter)
    // 외부 매개변수(Argument Label) ex. textColor
    // 내부 매개변수(Parameter Name) ex. color
    // _: 와일드카드식별자
    func designLebelUI(_ label: UILabel,
                       textColor color: UIColor) {

        label.text = "0"
        label.textColor = color
        label.font = .boldSystemFont(ofSize: 30)
        label.textAlignment = .center
        
    }
    
    func designButtonUI(_ button: UIButton,
                        titleColor: UIColor,
                        title: String) {
        button.setTitleColor(titleColor, for: .normal)
        button.setTitle(title, for: .normal)
    }
}

