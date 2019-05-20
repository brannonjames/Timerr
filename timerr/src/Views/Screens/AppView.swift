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
    
    func addSubview(_ view: UIView?) -> UIView {
        guard let view = view else { return UIView() }
        view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view)
        return view
    }
    
    func layoutViews() {
        let margins: UILayoutGuide = self.view.safeAreaLayoutGuide
        
        // MARK: UIViews
        let stopWatch = self.addSubview(self.controller?.stopWatch)
        stopWatch.backgroundColor = .red
        
        
        // MARK: Styles
        self.view.backgroundColor = styles.colors.background
        
        // MARK: Constraints
        stopWatch.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        stopWatch.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        stopWatch.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        stopWatch.bottomAnchor.constraint(equalTo: margins.centerYAnchor).isActive = true
    }

}
