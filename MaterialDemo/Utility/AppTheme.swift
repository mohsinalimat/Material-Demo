//
//  AppTheme.swift
//  BaseProjectSwift
//
//  Created by WebMob on 20/01/17.
//  Copyright © 2017 WMT. All rights reserved.
//

import UIKit


extension BaseColor {
    
    var value: UIColor {
        var instanceColor = UIColor.clear
        
        switch self {
           
        // TODO: Activity Loader Color
        case .activityLoader: // this will set spinner/activity loader tint color
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
        case .activityLoaderBG:
            instanceColor = UIColor(rgbValue: 0x3a3335, alpha: 0.5)
            break
            
        case .activityText:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
        // TODO: Bar Button Color
        case .activeBarButtonText:
            instanceColor = UIColor(rgbValue: 0x000000, alpha: 0.5)
            break
            
        case .disableBarButtonText:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 0.5)
            break
        
        case .barButtonBorder:
            instanceColor = UIColor(rgbValue: 0x000000, alpha: 0.5)
            break
            
        case .border: // This will general border color in whole application
            instanceColor = UIColor(rgbValue: 0x333333, alpha: 1.0)
            break
            
        case .shadow: // This will mainly use for give shadow to view and cell cardview
            instanceColor = UIColor(rgbValue: 0x333333, alpha: 1.0)
            break
            
        // TODO: Application Background Colors
        case .appPrimaryBG: // this is application general dark backgroud color
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
        case .appSecondaryBG: // this is application general light backgroud color
            instanceColor = UIColor(rgbValue: 0xf0544f, alpha: 1.0)
            break
            
        case .appIntermidiateBG: // this is application general intermidiate backgroud color
            instanceColor = UIColor(rgbValue: 0x3a3335, alpha: 1.0)
            break
            
        // TODO: UITextField / UITextView
        case .textFieldBG:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
        
        case .textFieldText:
            instanceColor = UIColor(rgbValue: 0x000000, alpha: 1.0)
            break
            
        case .textFieldBorder:
            instanceColor = UIColor(rgbValue: 0x3a3335, alpha: 1.0)
            break
            
        case .textFieldSelectedBorder:
            instanceColor = UIColor(rgbValue: 0x3a3335, alpha: 1.0)
            break
            
        case .textFieldErrorBorder:
            instanceColor = UIColor(rgbValue: 0xf0544f, alpha: 1.0)
            break
            
        case .textFieldPlaceholder:
            instanceColor = UIColor(rgbValue: 0x696969, alpha: 1.0)
            break
            
        // TODO: UIButton Color
        case .buttonPrimaryBG:
            instanceColor = UIColor(rgbValue: 0x3a3335, alpha: 1.0)
            break
            
        case .buttonSecondaryBG:
            instanceColor = UIColor(rgbValue: 0x4C4C4C, alpha: 1.0)
            break
            
        case .buttonPrimaryTitle:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
        case .buttonSecondaryTitle:
            instanceColor = UIColor(rgbValue: 0xf0544f, alpha: 1.0)
            break
            
        case .buttonBorder:
            instanceColor = UIColor(rgbValue: 0x6648da, alpha: 1.0)
            break
            
        // TODO: UILable Color
        case .lablePrimary:
            instanceColor = UIColor(rgbValue: 0xf0544f, alpha: 1.0)
            break
            
        case .lableSecondry:
            instanceColor = UIColor(rgbValue: 0x3a3335, alpha: 1.0)
            break
            
        case .labelText:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
        
        case .labelErrorText:
            instanceColor = UIColor(rgbValue: 0xf0544f, alpha: 1.0)
            break
            
        // TODO: Segment View Color
        case .segmentBG:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
        case .segmentTitle:
            instanceColor = UIColor(rgbValue: 0xf0544f, alpha: 1.0)
            break
            
        case .segmentBorder:
            instanceColor = UIColor(rgbValue: 0x3a3335, alpha: 1.0)
            break
            
        case .segmentSelectedBG:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
        case .segmentSelectedTitle:
            instanceColor = UIColor(rgbValue: 0xf0544f, alpha: 1.0)
            break
            
        // TODO: Navigation Color
        case .navigationBG: // This will use for set navigation Text Color
            instanceColor = UIColor(rgbValue: 0xf0544f, alpha: 1.0)
            break
            
        case .navigationTitle: // This will use for set navigation title color
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
        case .navigationBottomBorder:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
        
        // TODO: AlertView Color
        case .alertMessageText:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
        
        case .alertErrorText:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
        case .alertBG:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
        case .alertErrorBG:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
            
        case .headerColor:
            instanceColor = UIColor(rgbValue: 0xdbdbdb, alpha: 1.0)
            break
            
        case .activeCell:
            instanceColor = UIColor(rgbValue: 0xcccccc, alpha: 1.0)
            break
            
        case .inActiveCell:
            instanceColor = UIColor(rgbValue: 0xffffff, alpha: 1.0)
            break
            
            
        // TODO: Custom Color
        case .custom(let hexValue, let opacity):
            instanceColor = UIColor(rgbValue: hexValue, alpha: CGFloat(opacity))
            break
        }
        
        return instanceColor
    }
}

enum BaseColor {
    
    // Activity loader
    case activityLoader
    case activityLoaderBG
    case activityText
    
    // Keyboard Bar Button Text Color
    case activeBarButtonText
    case disableBarButtonText
    case barButtonBorder
    
    case border
    case shadow
    
    // Application Background Colors
    case appPrimaryBG
    case appSecondaryBG
    case appIntermidiateBG
    
    // Application Text Color
    case textFieldBG
    case textFieldText
    case textFieldPlaceholder
    case textFieldBorder
    case textFieldSelectedBorder
    case textFieldErrorBorder
    
    // Application UILabel Color
    case lablePrimary
    case lableSecondry
    case labelText
    case labelErrorText
    
    // Application Button Color
    case buttonPrimaryBG
    case buttonSecondaryBG
    case buttonPrimaryTitle
    case buttonSecondaryTitle
    case buttonBorder

    // Application SegmentView Color
    case segmentTitle
    case segmentBG
    case segmentSelectedTitle
    case segmentSelectedBG
    case segmentBorder
    
    // Application Navigation Color
    case navigationBG
    case navigationTitle
    case navigationBottomBorder
    
    // Application Murmor Alert Color
    case alertMessageText
    case alertErrorText
    case alertBG
    case alertErrorBG
    
    //TableView Header and footer Color
    case headerColor
    case activeCell
    case inActiveCell
    
    // 1
    case custom(hexString: Int, alpha: CGFloat)
    // 2
    func withAlpha(_ alpha: CGFloat) -> UIColor {
        return self.value.withAlphaComponent(CGFloat(alpha))
    }
}

