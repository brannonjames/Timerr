//
//  TimePicker.swift
//  timerr
//
//  Created by Jimmy on 5/11/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class TimePicker: UIView, UIPickerViewDelegate, UIPickerViewDataSource {
    
    public var callback: ((Date) -> Void)?
    private let picker = UIPickerView()
    private let components: [String: [Int]] = [
        "hours" : Array(0..<24),
        "minutes" : Array(0..<60),
        "seconds" : Array(0..<60)
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        picker.delegate = self
        picker.dataSource = self
        
        
        picker.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(picker)
        let margins = self.safeAreaLayoutGuide
        picker.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20).isActive = true
        picker.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -20).isActive = true
        picker.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -20).isActive = true
        picker.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 20).isActive = true
    
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return 24
        case 1:
            return 60
        case 2:
            return 60
        default:
            return 60
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return "Hours"
        case 1:
            return "Min"
        case 2:
            return "Sec"
        default:
            return ""
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        switch component {
        case 0:
            return NSAttributedString(string: String(components["hours"]![row]))
        case 1:
            return NSAttributedString(string: String(components["minutes"]![row]))
        case 2:
            return NSAttributedString(string: String(components["seconds"]![row]))
        default:
            return nil
        }
    }
    
    func setOnChangeCallback(_ cb: (Date) -> Void) {}
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    public func setOnChangeCallback(_ cb: @escaping (Date) -> Void) {
//        self.callback = cb
//    }
//
//    @objc func timeChanged(_ sender: TimePicker) {
//        guard let cb = callback else { return }
//        cb(sender.date)
//    }
    
}
