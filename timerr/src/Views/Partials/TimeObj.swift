//
//  Times.swift
//  timerr
//
//  Created by Jimmy on 5/17/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import Foundation

class TimeObj {
    private let template = "%02d:%02d:%02d"
    
    public var minutes: Int = 0
    public var seconds: Int = 0
    public var decimal: Int = 0
    
    public func setTime(timeInSeconds: Double) -> TimeObj {
        self.minutes = Int(timeInSeconds / 60)
        self.seconds = Int(timeInSeconds.truncatingRemainder(dividingBy: 60))
        self.decimal = Int(timeInSeconds.truncatingRemainder(dividingBy: 1.0) * 100)
        return self
    }
    
    func toString() -> String {
        return String(format: template, minutes, seconds, decimal)
    }
}
