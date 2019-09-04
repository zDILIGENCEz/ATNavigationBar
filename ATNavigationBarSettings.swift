//
//  ATNavigationBarSettings.swift
//  ATNavigationBar
//
//  Created by Kusyumov Nikita on 03/09/2019.
//

import Foundation

class ATNavigationBarSettings {
    
    internal let barBackgroundColor: UIColor
    internal let statusBarStyle: ATNavigationBarSettings.StatusBarStyle
    internal let navigationController: UINavigationController?
    internal let imposeHeight: CGFloat
    internal let statusBarView: UIApplication?
    internal let navigationBarTitle: String
    
    private init(builder: Builder) {
        self.barBackgroundColor = builder._barBackgroundColor
        self.statusBarStyle = builder._statusBarStyle
        self.navigationController = builder._navigationController
        self.imposeHeight = builder._imposeHeight
        self.statusBarView = builder._statusBarView
        self.navigationBarTitle = builder._navigationBarTitle
    }
    
}

extension ATNavigationBarSettings {
    
    class Builder {
        
        fileprivate var _barBackgroundColor: UIColor = .white
        fileprivate var _statusBarStyle: ATNavigationBarSettings.StatusBarStyle = .fromWhiteToBlack
        
        fileprivate var _navigationController: UINavigationController?
        fileprivate var _imposeHeight: CGFloat = 0
        fileprivate var _statusBarView: UIApplication?
        fileprivate var _navigationBarTitle: String = ""
        
        static func instance() -> Builder {
            return Builder()
        }
        
        func barBackgroundColor(_ barBackgroundColor: UIColor) -> Builder {
            _barBackgroundColor = barBackgroundColor
            return self
        }
        
        func statusBarStyle(_ statusBarStyle: ATNavigationBarSettings.StatusBarStyle) -> Builder {
            _statusBarStyle = statusBarStyle
            return self
        }
        
       func navigationController(_ navigationController: UINavigationController) -> Builder {
            _navigationController = navigationController
            return self
        }
        
        func imposeHeight(_ imposeHeight: CGFloat) -> Builder {
            _imposeHeight = imposeHeight
            return self
        }
        
        func statusBarView(_ statusBarView: UIApplication) -> Builder {
            _statusBarView = statusBarView
            return self
        }
        
        func navigationBarTitle(_ navigationBarTitle: String) -> Builder {
            _navigationBarTitle = navigationBarTitle
            return self
        }
        
        func build() -> ATNavigationBarSettings {
            return ATNavigationBarSettings(builder: self)
        }
        
    }
    
}
