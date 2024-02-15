//
//  CustomFont.swift
//  WWDC2024
//
//  Created by Ana Elisa Lima on 16/01/24.
//

import Foundation
import SwiftUI

enum CustomFont {
    case largeTitle
    case title1
    case title2
    case title2Bold
    case title3
    case title3Bold
    case headline
    case headlineBold
    case body
    case bodyBold
    
    var font: Font {
        switch self {
            
        case .largeTitle:
            return Font.getFontBold(size: 40)
            
        case .title1:
            return Font.getFontBold(size: 38)
            
        case .title2:
            return Font.getFontRegular(size: 34)
            
        case .title2Bold:
            return Font.getFontBold(size: 34)
            
        case .title3:
            return Font.getFontRegular(size: 32)
            
        case .title3Bold:
            return Font.getFontBold(size: 32)
            
        case .headline:
            return Font.getFontRegular (size: 24)
            
        case .headlineBold:
            return Font.getFontBold (size: 24)
            
        case .body:
            return Font.getFontRegular(size: 20)
            
        case .bodyBold:
            return Font.getFontBold(size: 20)
        }
    }
}

extension Font {
    
    static func getFontRegular (size: CGFloat) -> Font {
        let cfURL = Bundle.main.url(forResource: "Urbanist-Regular", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        let font = Font.custom("Urbanist-Regular", size: size)
        
        return font
    }
    
   static func getFontBold (size: CGFloat) -> Font {
        let cfURL = Bundle.main.url(forResource: "Urbanist-Bold", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        let font = Font.custom("Urbanist-Bold", size: size)
        
        return font
    }
}
