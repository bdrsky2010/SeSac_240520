//
//  OptionalViewController.swift
//  SeSac_240520
//
//  Created by Minjae Kim on 5/20/24.
//

import UIKit

class OptionalViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // 키보드 내리는 경우
    // 1. 바탕 탭 제스쳐
    // 2. 키보드 return
    // 3. 버튼 클릭 시
//    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
//        view.endEditing(true)
//    }
//    
//    @IBAction func keyboardReturned(_ sender: UITextField) {
//    }
//    
//    @IBAction func buttonClicked(_ sender: UIButton) {
//        self.textField.endEditing(true)
//    }
 
    @IBAction func keyboardDismiss(_ sender: Any) {
        view.endEditing(true)
    }
    
}
