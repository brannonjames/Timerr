//
//  File.swift
//  timerr
//
//  Created by Jimmy Brannon on 6/10/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

extension UIView {
    func snapTop(_ parentAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat) {
        self.topAnchor.constraint(equalTo: parentAnchor, constant: offset).isActive = true
    }
    
    func snapBottom(_ parentAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat) {
        self.bottomAnchor.constraint(equalTo: parentAnchor, constant: offset).isActive = true
    }
    
    func snapLeft(_ parentAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat) {
        self.leftAnchor.constraint(equalTo: parentAnchor, constant: offset).isActive = true
    }
    
    func snapRight(_ parentAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat) {
        self.rightAnchor.constraint(equalTo: parentAnchor, constant: offset).isActive = true
    }
    
    func setHeight(_ height: CGFloat) {
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    func setWidth(_ width: CGFloat) {
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func snapCenterY(_ parentAnchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat) {
        self.centerYAnchor.constraint(equalTo: parentAnchor, constant: offset).isActive = true
    }
    
    func snapCenterX(_ parentAnchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat) {
        self.centerXAnchor.constraint(equalTo: parentAnchor, constant: offset).isActive = true
    }
    
    
}
