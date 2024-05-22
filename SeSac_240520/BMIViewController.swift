//
//  BMIViewController.swift
//  SeSac_240520
//
//  Created by Minjae Kim on 5/22/24.
//

import UIKit

class BMIViewController: UIViewController {
    
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        checkButton.addTarget(self,
                              action: #selector(checkButtonClicked),
                              for: .touchUpInside)
    }
    
    @objc 
    private func checkButtonClicked() {
        
        // 왜 nil이 안나올까?
        // TextField.text의 타입이 옵셔널이고 nil을 받을 수 있지만
        // TextField.text에 빈 문자열이 있는 경우 무조건 nil이 아닌
        // 빈 문자열을 반환해주도록 구현되어있어서
        // if let 구문의 else 구문은 실행이 될 경우는 존재하지 않는다.
//        if let height = heightTextField.text {
//            self.resultLabel.text = height
//        } else {
//            self.resultLabel.text = "nil입니다."
//        }
        
        // 1. optional binding: if let
        // 이 경우 height는 if let 구문 밖에서 사용할 수 없어
        // 범위가 제한적이다
        // height와 weight 모두 사용이 하고싶을 땐 같이 받아야한다.
//        if let height = heightTextField.text {
//            resultLabel.text = height
//        }
//        
//        if let weight = weightTextField.text {
//            resultLabel.text = weight
//        }
//        if let height = heightTextField.text, 
//            let weight = weightTextField.text {
//            let result = "키 \(height), 몸무게 \(weight)"
//            resultLabel.text = result
//        }
        
        // guard문
        // 1. else 를 먼저 처리해주며
        // 2. 변수의 활용 범위가 넓다
        // 3. early exit
        guard let height = heightTextField.text,
              let weight = weightTextField.text else {
            
            resultLabel.text = "nil입니다"
            return
        }
        
        guard height.count > 3 else {
            self.resultLabel.text = "3자리 이상 입력해주세요"
            return
        }
        
        self.resultLabel.text = "키: \(height)"
    }
}
