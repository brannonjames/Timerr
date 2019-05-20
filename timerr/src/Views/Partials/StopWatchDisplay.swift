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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.font = styles.fonts.h1Font
        self.textColor = .white
        self.textAlignment = .center
        self.text = "00:00:00"
        self.backgroundColor = .blue
    }
    
    func setTime(time: String) {
        self.text = time
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
