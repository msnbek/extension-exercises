//
//  ViewController.swift
//  Extensions
//
//  Created by Mahmut Senbek on 26.09.2023.
//

import UIKit

class ViewController: UIViewController {
    var test = "radar"
    var number = 35
    var boolean = true
    var setupView = ViewControllerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        test.isWordPalindrome()
        print("\(number) is prime: \(number.isPrime())")
        print("\(boolean) switched to \(boolean.switchValue())")
        performDateCalculation()
    }
    //MARK: - Task 5
    func changeSomethingAtView(backgroundColor : UIColor, textLabel : String,imageName : String) {
        view.backgroundColor = backgroundColor
        setupView.label.text = textLabel
        setupView.imageView.image = UIImage(named: imageName)
    }
    
    @objc func buttonClicked() {
        changeSomethingAtView(backgroundColor: .brown, textLabel: "You are someone else now.", imageName: "img2.jpg")
    }
    //MARK: - Task 4
    func performDateCalculation() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        if let startDate = dateFormatter.date(from: "2012-05-20"),
           let endDate = dateFormatter.date(from: "2023-09-25") {
            
            let daysDifference = startDate.daysBetween(endDate)
            
            if let difference = daysDifference {
                print("Days between the dates: \(difference) days")
            } else {
                print("Invalid dates.")
            }
        } else {
            print("Invalid date format.")
        }
    }
    
}
//MARK: - Task 1
extension String {
    func isWordPalindrome() {
        let reverse = String(self.reversed())
        if self == reverse && self != "" {
            print("\(self) is palindrome")
        }else {
            print("\(self) isnt palindrome")
        }
    }
}
//MARK: - Task 2
extension Int {
    func isPrime() -> Bool {
        guard self > 1 else { return false }
        
        for i in 2..<self {
            if self % i == 0 {
                return false
            }
        }
        
        return true
    }
}

//MARK: - Task 3
extension Bool {
    func switchValue() -> Bool {
        if self == true {
            return false
        }else {
            return true
        }
    }
    
}

//MARK: - Task 4

extension Date {
    func daysBetween(_ date: Date) -> Int? {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: self, to: date)
        
        return components.day
    }
}



extension UIViewController {
    
}
