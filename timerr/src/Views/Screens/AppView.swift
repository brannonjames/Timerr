//
//  AppView.swift
//  timerr
//
//  Created by Jimmy on 5/11/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class AppView: UINavigationController, ScreenProto {

    
    private var controller: AppController?
    internal let styles = AppStyle.shared
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutViews()
        
    }
    
    func setController(_ controller: AppController) {
        self.controller = controller
    }
    
    func addSubview(_ view: UIView = UIView()) -> UIView {
        view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view)
        return view
    }
    
    func layoutViews() {
        let margins: UILayoutGuide = self.view.safeAreaLayoutGuide
        
        // MARK: UIViews
        let timePicker = TimePicker()
        let timePickerView = addSubview(timePicker)
        if let cb = self.controller?.onDateChange {
            timePicker.setOnChangeCallback(cb)
        }
        
        // MARK: Styles
        self.view.backgroundColor = styles.colors.background
        
        // MARK: Constraints
        timePickerView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        timePickerView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        timePickerView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        timePickerView.bottomAnchor.constraint(equalTo: margins.centerYAnchor).isActive = true
    }

}
