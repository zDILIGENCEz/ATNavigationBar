//
//  ATNavigationBarViewModel.swift
//  ATNavigationBar
//
//  Created by Kusyumov Nikita on 04/09/2019.
//

import Foundation

internal class ATNavigationBarViewModel {
    
    enum StatusBarStyle {
        case dark
        case light
    }
    
    internal var offset: CGFloat?
    internal var statusBarStyle: StatusBarStyle = .dark
    //    internal var isChangeConstraints = BehaviorRelay<Bool>(value: false) // TODO:
    
}
