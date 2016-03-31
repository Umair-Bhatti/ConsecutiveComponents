//
//  UILabel+ConsecutiveComponents.swift
//

import UIKit

extension UILabel {

    func addConsectiveComponents(components:[String]) {
        
        if text != nil {
            
            var allText = text!
            for component in components {
                if let range = allText.rangeOfString(component) {
                    let linesExluding = getRequiredLines(allText.substringToIndex(range.startIndex))
                    let linesIncluding = getRequiredLines(allText.substringToIndex(range.endIndex))
                    if linesExluding != linesIncluding {
                        let ch = "\n" as Character
                        allText.insert(ch, atIndex: range.startIndex)
                    }
                }
            }
            text = allText
            
        }
        
    }
    
    func getRequiredLines(text:String) -> Int {
        
        let requiredFrame = (text as NSString).boundingRectWithSize(frame.size, options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
        let singleLineHeight = (" " as NSString).sizeWithAttributes([NSFontAttributeName:font]).height
        return Int(ceil(requiredFrame.size.height / singleLineHeight))
        
    }
    
}