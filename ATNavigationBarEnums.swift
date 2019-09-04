//
//  ATNavigationBarEnums.swift
//  ATNavigationBar
//
//  Created by Kusyumov Nikita on 04/09/2019.
//

import Foundation

extension ATNavigationBarSettings {
    
    enum NavigationBarType {
        case floatingUp /// TODO: NavigationBar appears on top (from transparent)
        case appearing /// NavigationBar passes from the initial (transparent)
        case vanishing /// TODO: 
    }
    
    enum StatusBarStyle {
        case fromWhiteToBlack
        case fromBlackToWhite
    }
    
}

extension UIApplication {
    
    var statusBarView: UIView? {
        if responds(to: Selector("statusBar")) {
            return value(forKey: "statusBar") as? UIView
        }
        return nil
    }
    
}
