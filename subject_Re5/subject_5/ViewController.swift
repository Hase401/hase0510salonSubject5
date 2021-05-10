//
//  ViewController.swift
//  subject_5
//
//  Created by 長谷川孝太 on 2021/05/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var inputedNumberTextField1: UITextField!
    @IBOutlet private weak var inputedNumberTextField2: UITextField!
    @IBOutlet private weak var divisionLabel: UILabel!
    @IBOutlet private weak var resultNumberLabel: UILabel!
    @IBAction private func calculationButton(_ sender: UIButton) {
        
        guard let number1 = Double(inputedNumberTextField1.text!) else {
            alert(message: "割られる数を入力してください")
            return
        }
        guard let number2 = Double(inputedNumberTextField2.text!) else {
            alert(message: "割る数を入力してください")
            return
        }
        guard number2 != 0 else {
            alert(message: "割る数に0を入力しないでください")
            return
        }
        
        let resultNumber = number1 / number2
        resultNumberLabel.text = String(resultNumber)
    }

    private func alert(message: String) {
        let alertController: UIAlertController = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}

