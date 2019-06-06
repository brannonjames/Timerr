//
//  Button.swift
//  timerr
//
//  Created by Jimmy on 5/19/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

enum TimerButtonType {
    case start
    case stop
    case reset
    case lap
}

class TimerButton: UIButton {
    
    public let width: CGFloat = 100
    public let height: CGFloat = 100
    public var timerButtonType: TimerButtonType?
    
    private let styles = AppStyle.shared
    
    required init(type: TimerButtonType) {
        super.init(frame: CGRect())
        setButtonStyle(type)
        addTarget(self, action: #selector(onPress), for: .touchUpInside)
        setupConstraints()
        adjustsImageWhenHighlighted = true
    }
    
    public func setButtonStyle(_ type: TimerButtonType) {
        var backgroundColor: UIColor?
        var fontColor: UIColor?
        var text: String?
        
        switch type {
        case .start:
            backgroundColor = styles.colors.success
            fontColor = styles.colors.successText
            text = "Start"
            break
        case .stop:
            backgroundColor = styles.colors.danger
            fontColor = styles.colors.dangerText
            text = "Stop"
            break
        case .lap:
            backgroundColor = styles.colors.secondary
            fontColor = .white
            text = "Lap"
            break
        case .reset:
            backgroundColor = styles.colors.secondary
            fontColor = .white
            text = "Reset"
            break
        }
        
        self.backgroundColor = backgroundColor
        self.titleLabel?.textColor = fontColor
        self.setTitle(text, for: .normal)
        self.titleLabel?.font = styles.fonts.normalFont
        self.layer.cornerRadius = height / 2
    }
    
    private func setupConstraints() {
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    @objc func onPress(sender: UIButton) {
        self.alpha = 0.4
        UIView.animate(withDuration: 0.4) {
            self.alpha = 1
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
