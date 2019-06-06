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
        setupViews()
        setupEventHandlers()
    }
    
    private func setupEventHandlers() {
        
    }
    
    func setController(_ controller: AppController) {
        self.controller = controller
    }
    
    func addSubview(_ view: UIView? = UIView()) -> UIView {
        view!.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view!)
        return view!
    }
    
    func setupViews() {
        let margins: UILayoutGuide = self.view.safeAreaLayoutGuide
        
        // MARK: UIViews
        let stopWatch = self.addSubview(self.controller?.stopWatch)
        setupStopWatchConstraints(stopWatch, parent: margins)
        
        let bottomHalf = addSubview()
        setupBottomHalfConstraints(bottomHalf, parent: margins)
        
        let leftButtonContainer = addSubview()
        setupLeftButtonContainerConstraints(leftButtonContainer, parent: bottomHalf.safeAreaLayoutGuide)
        
        let rightButtonContainer = addSubview()
        setupRightButtonContainerConstraints(rightButtonContainer, parent: bottomHalf.safeAreaLayoutGuide)
        
        let leftButtonView = addSubview(controller!.leftButton)
        setupLeftButtonConstraints(leftButtonView, parent: leftButtonContainer.safeAreaLayoutGuide)
        
        let rightButtonView = addSubview(controller!.rightButton)
        setupRightButtonConstraints(rightButtonView, parent: rightButtonContainer.safeAreaLayoutGuide)
        
        
        
        // MARK: Styles
        self.view.backgroundColor = styles.colors.background
        

    }
    
    private func setupStopWatchConstraints(_ stopWatch: UIView, parent: UILayoutGuide) {
        stopWatch.leadingAnchor.constraint(equalTo: parent.leadingAnchor).isActive = true
        stopWatch.trailingAnchor.constraint(equalTo: parent.trailingAnchor).isActive = true
        stopWatch.topAnchor.constraint(equalTo: parent.topAnchor).isActive = true
        stopWatch.bottomAnchor.constraint(equalTo: parent.centerYAnchor).isActive = true
    }
    
    private func setupBottomHalfConstraints(_ bottomContainer: UIView, parent: UILayoutGuide) {
        bottomContainer.leadingAnchor.constraint(equalTo: parent.leadingAnchor).isActive = true
        bottomContainer.trailingAnchor.constraint(equalTo: parent.trailingAnchor).isActive = true
        bottomContainer.topAnchor.constraint(equalTo: parent.centerYAnchor).isActive = true
        bottomContainer.bottomAnchor.constraint(equalTo: parent.bottomAnchor).isActive = true
    }
    
    private func setupLeftButtonContainerConstraints(_ buttonContainer: UIView, parent: UILayoutGuide) {
        buttonContainer.leadingAnchor.constraint(equalTo: parent.leadingAnchor).isActive = true
        buttonContainer.trailingAnchor.constraint(equalTo: parent.centerXAnchor).isActive = true
        buttonContainer.topAnchor.constraint(equalTo: parent.topAnchor).isActive = true
        buttonContainer.bottomAnchor.constraint(equalTo: parent.bottomAnchor).isActive = true
    }
    
    private func setupRightButtonContainerConstraints(_ buttonContainer: UIView, parent: UILayoutGuide) {
        buttonContainer.leadingAnchor.constraint(equalTo: parent.centerXAnchor).isActive = true
        buttonContainer.trailingAnchor.constraint(equalTo: parent.trailingAnchor).isActive = true
        buttonContainer.topAnchor.constraint(equalTo: parent.topAnchor).isActive = true
        buttonContainer.bottomAnchor.constraint(equalTo: parent.bottomAnchor).isActive = true
    }
    
    private func setupLeftButtonConstraints(_ button: UIView, parent: UILayoutGuide) {
        button.centerXAnchor.constraint(equalTo: parent.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: parent.centerYAnchor).isActive = true
    }
    
    private func setupRightButtonConstraints(_ button: UIView, parent: UILayoutGuide) {
        button.centerXAnchor.constraint(equalTo: parent.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: parent.centerYAnchor).isActive = true
    }

}
