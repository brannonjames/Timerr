//
//  StopWatchDisplay.swift
//  timerr
//
//  Created by Jimmy on 5/17/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class StopWatchDisplay: UILabel {
    
    private let styles = AppStyle()
    private let clearedTime = "00:00:00"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.font = styles.fonts.h1Font
        self.textColor = .white
        self.textAlignment = .center
        self.text = clearedTime
        self.backgroundColor = .blue
    }
    
    func setTime(time: String) {
        self.text = time
    }
    
    func clearTime() {
        self.text = clearedTime
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
