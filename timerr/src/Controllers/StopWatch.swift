//
//  StopWatch.swift
//  timerr
//
//  Created by Jimmy on 5/19/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class StopWatch: UIView {
    
    private let stopWatchView = StopWatchDisplay()
    private var timer: Timer?
    private var startTime: Double?
    private var timeObj = TimeObj()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(stopWatchView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
