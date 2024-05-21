//
//  CalculateViewController.swift
//  SeSac_240520
//
//  Created by Minjae Kim on 5/21/24.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var nickname: String? = "고래밥"
        
        nickname = nil
        
        if nickname != nil {
            print(nickname!)
        } else {
            print("손님")
        }
        
        if let nickname = nickname {
            print(nickname)
        } else {
            print("손님")
        }
        
        // Swift 5.7+, if let shortand
        if let nickname {
            print(nickname)
        } else {
            print("손님")
        }
        
    }

    // Event - Editing Changed
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        // 1. Optional Chaining
        // count가 Int 인데, 왜 상수는 Int? 일까?
        // 옵셔널 체이닝의 경우 체이닝 중간에 nil을 만나게되면
        // nil을 반환을 하게되기 때문에 text의 count는 Int 타입이지만
        // nil을 만났을 땐 count라는 프로퍼티에 접근하기도 전에 nil을
        // 반환해버리는 것이다.
        // 그렇기 때문에 let count 이 상수 자체는 타입이 Int? 가 되는 것이다
        // let count = sender.text?.count
        
        // 닐 코얼레싱 구문으로 nil을 반환할 경우 결과적으로 nil을
        // 반환하는 것이 아닌 기본값을 정의해주는 방식
        let count = sender.text?.count ?? 0
        self.countLabel.text = "\(count) / 30"
        
        // 2. Optional Binding
        
        // 1. 텍스트필드의 텍스트가 nil일 수 있음.
        let text = sender.text ?? ""
        
        if let value = Int(text) {
            resultLabel.text = "\(value)"
        }
        
        // 2. 텍스트가 숫자로 바뀌지 않을 수 있음.
        if Int(text) != nil {
            resultLabel.text = "\(Int(text)!)"
        } else {
            resultLabel.text = "숫자만 입력해주세요."
        }
    }
    

}
