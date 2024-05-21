//
//  DateViewController.swift
//  SeSac_240520
//
//  Created by Minjae Kim on 5/21/24.
//

import UIKit

class DateViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var day100Label: UILabel!
    @IBOutlet weak var day200Label: UILabel!
    @IBOutlet weak var day300Label: UILabel!
    @IBOutlet weak var day400Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.day100Label.numberOfLines = 0
        randomTitle()
        configUI()
    }
    
    private func configUI() {
        configNavigationItem()
        configDatePicker()
        configDayLabel()
    }
    
    private func configNavigationItem() {
        let menu = UIBarButtonItem(image: UIImage(systemName: "menucard.fill"),
                                   style: .plain,
                                   target: self,
                                   action: #selector(menuButtonClicked))
        let profile = UIBarButtonItem(title: "프로필",
                                      style: .plain,
                                      target: self,
                                      action: #selector(profileButtonClicked))
        
        
        
        menu.tintColor = .brown
        profile.tintColor = .brown
        navigationItem.leftBarButtonItems = [menu, profile]
        
        navigationItem.title = randomTitle()
    }
    
    @discardableResult
    private func randomTitle() -> String {
        let titleList = ["프리져", "썬더", "뮤츠", "라이코", "디아루가", "펄기아", "솔가레오"]
        print(#function)
        return titleList.randomElement() ?? ""
    }
    
    @objc private func menuButtonClicked() {
        let colorPicker = UIColorPickerViewController()
//        let documentPicker = UIDocumentPickerViewController()
//        let fontPicker = UIFontPickerViewController()
        present(colorPicker, animated: true)
    }
    
    @objc private func profileButtonClicked() {
        // 1. alert 창 구성
        let title = "프로필 설정"
        let message = "프로필 설정하시겠습니까?"
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        // 2. alert button 구성
        let open = UIAlertAction(title: "열기", style: .default)
        let delete = UIAlertAction(title: "삭제", style: .destructive)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        
        // 3. alert에 button 추가
        alert.addAction(delete)
        alert.addAction(cancel)
        alert.addAction(open)
        
        present(alert, animated: true)
    }
    
    // DatePicker
    // DateFormat: 영국표준시 기준
    // 1) 시간대
    // 2) 표기방식
    // yyyy(년도) MM(월) dd(일) hh(시간) mm(분) ss(초) a(오전)
    // EEEE(요일)
    private func configDatePicker() {
        self.datePicker.datePickerMode = .date
        self.datePicker.preferredDatePickerStyle = .inline
        
    }
    
    private func configDayLabel() {
        datePickerTapped(datePicker)
    }
    
    @IBAction func datePickerTapped(_ sender: UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "yy년 MM월 dd일" // 24년 05월 21일
        self.day100Label.text = format.string(from: sender.date)
    }
    
}
