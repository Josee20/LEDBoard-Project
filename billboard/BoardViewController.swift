//
//  BoardViewController.swift
//  billboard
//
//  Created by 이동기 on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var switchBtn: UISwitch!
    
    @IBOutlet var buttonList: [UIButton]!
    
    @IBOutlet weak var topView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextField.delegate = self
        
        designButton(sendButton, buttonTitle: "전송", highlightedTitle: "어서눌러", buttonBackgroundColor: .yellow)
        designButton(textColorButton, buttonTitle: "색 변경", highlightedTitle: "바꿔", buttonBackgroundColor: .red)
        
        designTextField()
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
    
    func designTextField() {
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = UIKeyboardType.emailAddress
        userTextField.font = .systemFont(ofSize: 15)
        userTextField.borderStyle = .none
        userTextField.textColor = .blue
    }
    
    // buttonOuteletVariableName : 외부 매개변수, Argument Label
    // buttonName: 내부 매개변수, Parameter Name
    // _ : 와일드 카드 식별자
    func designButton(_ buttonName: UIButton, buttonTitle: String, highlightedTitle: String, buttonBackgroundColor bgColor: UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal) // normal은 일반적인 상태
        buttonName.setTitle(highlightedTitle, for: .highlighted) // 마우스를 누르고 있으면 나오는 상태
        buttonName.backgroundColor = bgColor
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
    func studyOutletCollection() {
        // 1. 반복문
        let buttonArray: [UIButton] = [sendButton, textColorButton]

        for item in buttonArray {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }

        // 2. 아웃렛 컬렉션
        for item in buttonList {
            item.backgroundColor = UIColor.blue
            item.layer.cornerRadius = 2
        }
    }
    
    
    @IBAction func switchColorBtn(_ sender: Any) {
        view.backgroundColor = .red
    }
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        
        resultLabel.text = userTextField.text
    }
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        // 편집상태를 그만두겠다.
        // view는 인스펙터영역에서 지울수 없는 부분
        view.endEditing(true)
        
    }
    @IBAction func exampleButton1(_ sender: Any) {
        view.endEditing(true)
    }
    
    // 연결관계 끊어보고 Any로 해보기기기
    @IBAction func keyboardDismiss(_ sender: Any) {
        view.endEditing(true)
    }

    //
    @IBAction func checkDidEndOnExitAction(_ sender: UITextField) {
        print("체크중")
    }
    @IBAction func viewIsHidden(_ sender: Any) {
        if topView.isHidden == false {
            topView.isHidden = true
        } else {
            topView.isHidden = false
        }
    }
}

