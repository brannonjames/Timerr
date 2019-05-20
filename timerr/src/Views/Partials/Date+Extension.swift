//
//  Date+Extension.swift
//  timerr
//
//  Created by Jimmy on 5/17/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import Foundation

extension Date {
    func getDiff(currentTime: Date) -> TimeObj? {
        if !verify(currentTime) { return nil }
        let intervalDiff = self.timeIntervalSince(currentTime)
        
        let minutes = Int((intervalDiff / 60).rounded(.down))
        let remainderAfterMinutes = (Int(intervalDiff) - (minutes * 60))
        
        return TimeObj(minutes: minutes, seconds: remainderAfterMinutes, milliseconds: 0)
    }
    
    private func verify(_ incomingTime: Date) -> Bool {
        if self.compare(incomingTime) == .orderedDescending {
            print("incoming time must be a later date than self (current time)")
            return false
        }
        return true
    }
}
