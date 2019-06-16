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
        setupSubViews()
        setupEventHandlers()
        
        self.view.backgroundColor = styles.colors.background
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
    
    // MARK: UIViews
    func setupSubViews() {
        let margins: UILayoutGuide = self.view.safeAreaLayoutGuide
        
        // MARK: StopWatch
        let stopWatch = self.addSubview(self.controller?.stopWatch)
        stopWatch.backgroundColor = styles.colors.background
        stopWatch.snapLeft(margins.leftAnchor, offset: 0)
        stopWatch.snapRight(margins.rightAnchor, offset: 0)
        stopWatch.snapTop(margins.topAnchor, offset: 0)
        stopWatch.setHeight(100)
        
        // MARK: ButtonContainer
        let bottomHalf = addSubview()
        bottomHalf.snapLeft(margins.leftAnchor, offset: 0)
        bottomHalf.snapRight(margins.rightAnchor, offset: 0)
        bottomHalf.snapBottom(margins.bottomAnchor, offset: -20)
        bottomHalf.setHeight(80)
        
        // MARK: LapTable
        let lapTable = self.addSubview(self.controller?.lapTable)
        lapTable.snapLeft(margins.leftAnchor, offset: 0)
        lapTable.snapRight(margins.rightAnchor, offset: 0)
        lapTable.snapTop(stopWatch.bottomAnchor, offset: 0)
        lapTable.snapBottom(bottomHalf.topAnchor, offset: -20)
        
        // MARK: LeftButtonContainer
        let leftButtonContainer = addSubview()
        leftButtonContainer.snapLeft(bottomHalf.leftAnchor, offset: 0)
        leftButtonContainer.snapRight(bottomHalf.centerXAnchor, offset: 0)
        leftButtonContainer.snapTop(bottomHalf.topAnchor, offset: 0)
        leftButtonContainer.snapBottom(bottomHalf.bottomAnchor, offset: 0)
        
        // MARK: LeftButton
        let leftButtonView = addSubview(controller!.leftButton)
        leftButtonView.snapCenterX(leftButtonContainer.centerXAnchor, offset: 0)
        leftButtonView.snapCenterY(leftButtonContainer.centerYAnchor, offset: 0)
        
        // MARK: RightButtonContainer
        let rightButtonContainer = addSubview()
        rightButtonContainer.snapLeft(bottomHalf.centerXAnchor, offset: 0)
        rightButtonContainer.snapRight(bottomHalf.rightAnchor, offset: 0)
        rightButtonContainer.snapTop(bottomHalf.topAnchor, offset: 0)
        rightButtonContainer.snapBottom(bottomHalf.bottomAnchor, offset: 0)
        
        // MARK: RightButton
        let rightButtonView = addSubview(controller!.rightButton)        
        rightButtonView.snapCenterX(rightButtonContainer.centerXAnchor, offset: 0)
        rightButtonView.snapCenterY(rightButtonContainer.centerYAnchor, offset: 0)
        
    }

}
