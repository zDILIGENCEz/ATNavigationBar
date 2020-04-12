//
//  ExampleView.swift
//  ATNavigationBar_Example
//
//  Created by Kusyumov Nikita on 03/09/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class ExampleView: UIView {
    
    // MARK: - Internal properties
    
    private struct Appearance { }
    private let appearance = Appearance()
    
    // MARK: - UI elements
    
    
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        setupStyle()
        addSubviews()
        makeConstraints()
    }
    
    private func setupStyle() {
        
    }
    
    private func addSubviews() {
        
    }
    
    private func makeConstraints() {
        
    }
    
}
