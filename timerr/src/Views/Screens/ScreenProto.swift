//
//  ScreenProto.swift
//  timerr
//
//  Created by Jimmy on 5/11/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

protocol ScreenProto {
    // Properties
    var controller: AppEntryViewController? { get set }
    var styles: AppStyle { get }
    
    // Methods
    func setController(_ controller: AppEntryViewController)
}
