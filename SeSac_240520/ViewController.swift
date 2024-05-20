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
    
    var count = Array(repeating: 0, count: 3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // (): 함수 호출 연산자
        
        // labelName: 매개변수(Parameter)
        // oneLabel, twoLabel...: 전달인자(Argument)
        designLebelUI(oneLabel, textColor: .red)
        designLebelUI(twoLabel, textColor: .green)
        designLebelUI(threeLabel, textColor: .blue)
        
        designButtonUI(oneButton, titleColor: .red, title: "버튼1")
        designButtonUI(twoButton, titleColor: .green, title: "버튼2")
        designButtonUI(threeButton, titleColor: .blue, title: "버튼3")
    }
    
    // 하나의 Interface Builder Action으로 여러 버튼에 대응이 가능
    // 1. 어떤 버튼을 클릭했는 지 어떻게 감지할까.
    //  -> currentTitle 활용 (옵셔널 조심, 버전 조심)
    //  -> tag 활용
    @IBAction func oneButtonClicked(_ sender: UIButton) {
//        guard let title = sender.currentTitle else { return }
//        
//        if title == "버튼1" {
//            self.oneCount += 1
//            self.oneLabel.text = "\(oneCount)번"
//        } else if title == "버튼2" {
//            self.twoCount += 1
//            self.twoLabel.text = "\(twoCount)번"
//        } else if title == "버튼3" {
//            self.threeCount += 1
//            self.threeLabel.text = "\(threeCount)번"
//        }
        let tag = sender.tag
        self.count[tag] += 1
        
        self.oneLabel.text = "\(count[0])번"
        self.twoLabel.text = "\(count[1])번"
        self.threeLabel.text = "\(count[2])번"
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

