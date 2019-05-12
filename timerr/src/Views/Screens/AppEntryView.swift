//
//  AppEntryView.swift
//  timerr
//
//  Created by Jimmy on 5/10/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class AppEntryView: UIViewController {
    
    internal var controller: AppEntryController?
    internal let styles = AppStyle.shared
    private let activityIndicator = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        guard let controller = self.controller else { return }
        layoutViews()
    }
    
    public func setController(_ controller: AppEntryController) {
        self.controller = controller
    }
    
    func addSubview(_ view: UIView = UIView()) -> UIView {
        view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view)
        return view
    }
    
    func startLoader() {
     activityIndicator.startAnimating()
    }
    
    func stopLoader() {
        activityIndicator.stopAnimating()
    }
    
    
    func layoutViews() {
        let margins: UILayoutGuide = self.view.safeAreaLayoutGuide
        
        // UIViews
        let topHalf = addSubview()
        let bottomHalf = addSubview()
        
        let titleLabel: UILabel = styles.fonts.getH1("Timerr")
        let title = addSubview(titleLabel)
        
        let _ = addSubview(activityIndicator)
        
        // MARK: Styles
        
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        
        activityIndicator.style = .whiteLarge
        
        // MARK: Constraints
        topHalf.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        topHalf.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        topHalf.bottomAnchor.constraint(equalTo: margins.centerYAnchor).isActive = true
        topHalf.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        bottomHalf.topAnchor.constraint(equalTo: margins.centerYAnchor).isActive = true
        bottomHalf.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        bottomHalf.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
        bottomHalf.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        title.centerYAnchor.constraint(equalTo: topHalf.centerYAnchor).isActive = true
        title.leadingAnchor.constraint(equalTo: topHalf.leadingAnchor).isActive = true
        title.trailingAnchor.constraint(equalTo: topHalf.trailingAnchor).isActive = true
        
        activityIndicator.centerYAnchor.constraint(equalTo: bottomHalf.centerYAnchor).isActive = true
        activityIndicator.centerXAnchor.constraint(equalTo: bottomHalf.centerXAnchor).isActive = true
        
        
    }

}
