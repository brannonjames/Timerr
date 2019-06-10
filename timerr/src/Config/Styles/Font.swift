//
//  FontStyle.swift
//  timerr
//
//  Created by Jimmy on 5/10/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class Font {
    
    public let h1Font = UIFont(name: "Helvetica Neue", size: 62)
    public let h2Font = UIFont(name: "Helvetica Neue", size: 42)
    public let h3Font = UIFont(name: "Helvetica Neue", size: 30)
    public let normalFont = UIFont(name: "Helvetica Neue", size: 18)
    
    public func getH1(_ text: String) -> UILabel {
        return generateBasicLabel(text, font: h1Font!)
    }
    
    public func getH2(_ text: String) -> UILabel {
        return generateBasicLabel(text, font: h2Font!)
    }
    
    public func getH3(_ text: String) -> UILabel {
        return generateBasicLabel(text, font: h3Font!)
    }
    
    public func getNormal(_ text: String) -> UILabel {
        return generateBasicLabel(text, font: normalFont!)
    }
    
    private func generateBasicLabel(_ text: String, font: UIFont) -> UILabel {
        let newLabel = UILabel()
        newLabel.text = text
        newLabel.font = font
        return newLabel
    }
}


