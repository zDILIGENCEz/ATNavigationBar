//
//  ExampleATNavigationBarView.swift
//  ATNavigationBar_Example
//
//  Created by Kusyumov Nikita on 03/09/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

import UIKit

class ExampleViewController: BaseViewController {
    
    // MARK: - Private properties
    
    private let exampleView = ExampleView()
    
    // MARK: - Override properties
    
    override var customView: UIView {
        return exampleView
    }
    
    // MARK: - Life cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Action handlers
    
    // MARK: - Private methods
    
}
