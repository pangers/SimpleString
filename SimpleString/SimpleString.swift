//
//  SimpleString.swift
//  SimpleString
//
//  Created by James Pang on 17/2/18.
//  Copyright © 2018 James Pang. All rights reserved.
//

import Foundation

public extension String {
    public var attributedString: NSAttributedString {
        return NSAttributedString(string: self)
    }
}

extension NSAttributedString {

    public func font(with font: UIFont) -> NSAttributedString {
        guard !string.isEmpty else { return self }
        
        let mutable = mutableCopy() as! NSMutableAttributedString
        
        let attribute = [
            NSAttributedStringKey.font : font
        ]
        
        mutable.addAttributes(attribute, range: NSRange(location: 0, length: string.count))
        
        return mutable
    }
    
    public func colored(_ color: UIColor) -> NSAttributedString {
        guard !string.isEmpty else { return self }
        
        let mutable = mutableCopy() as! NSMutableAttributedString
        
        let attribute = [
            NSAttributedStringKey.foregroundColor : color
        ]
        
        mutable.addAttributes(attribute, range: NSRange(location: 0, length: string.count))
        
        return mutable
    }
    
    public func align(_ alignment: NSTextAlignment) -> NSAttributedString {
        guard !string.isEmpty else { return self }
        
        let mutable = mutableCopy() as! NSMutableAttributedString
        
        let style = mutable.attribute(NSAttributedStringKey.paragraphStyle, at: 0, longestEffectiveRange: nil, in: NSMakeRange(0, string.count)) as? NSParagraphStyle
        
        let pStyle = (style?.mutableCopy() as? NSMutableParagraphStyle) ?? NSMutableParagraphStyle()
        
        pStyle.alignment = alignment
        
        let attribute = [
            NSAttributedStringKey.paragraphStyle : pStyle
        ]
        
        mutable.addAttributes(attribute, range: NSRange(location: 0, length: string.count))
        
        return mutable
    }
    
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> NSAttributedString {
        guard !string.isEmpty else { return self }
        
        let mutable = mutableCopy() as! NSMutableAttributedString
        
        let style = mutable.attribute(NSAttributedStringKey.paragraphStyle, at: 0, longestEffectiveRange: nil, in: NSMakeRange(0, string.count)) as? NSParagraphStyle
        
        let pStyle = (style?.mutableCopy() as? NSMutableParagraphStyle) ?? NSMutableParagraphStyle()
        
        pStyle.lineBreakMode = lineBreakMode
        
        let attribute = [
            NSAttributedStringKey.paragraphStyle : pStyle
        ]
        
        mutable.addAttributes(attribute, range: NSRange(location: 0, length: string.count))
        
        return mutable
    }
}

public func +(lhs: NSAttributedString, rhs: NSAttributedString) -> NSAttributedString {
    let mutable = lhs.mutableCopy() as! NSMutableAttributedString
    mutable.append(rhs)
    return mutable
}
