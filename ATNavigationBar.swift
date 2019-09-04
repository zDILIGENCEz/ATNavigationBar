//
//  ATNavigationBar.swift
//  ATNavigationBar
//
//  Created by Kusyumov Nikita on 04/09/2019.
//

import Foundation

class ATNavigationBar {
    
    var setting: ATNavigationBarSettings?
    var barBackgroundColor = UIColor()
    var statusBarStyle: ATNavigationBarSettings.StatusBarStyle = .fromBlackToWhite
    var navigationController: UINavigationController?
    var imposeHeight = CGFloat()
    var statusBarHeight = UIApplication.shared.statusBarFrame.height
    var navigationBarViewModel = ATNavigationBarViewModel()
    var navigationBarTitle: String?
    
}

extension ATNavigationBar {
    
    func makeStatusBar(with status: UIStatusBarStyle) {
        UIApplication.shared.statusBarStyle = status
    }
    
    func setup(setting: ATNavigationBarSettings) {
        self.setting = setting
        self.barBackgroundColor = setting.barBackgroundColor
        self.statusBarStyle = setting.statusBarStyle
        self.navigationController = setting.navigationController
        self.navigationBarTitle = setting.navigationBarTitle
    }
    
    var imposeLine: CGFloat {
        var line: CGFloat = 0
        guard let navigationBarHeight = navigationController?.navigationBar.frame.height else { return line }
        line = imposeHeight - navigationBarHeight - statusBarHeight
        return line
    }
    
    
    func configureNavigationBar(scrollView: UIScrollView, navigationBarType: ATNavigationBarSettings.NavigationBarType, controller: UIViewController) {
        switch navigationBarType {
        case .floatingUp:
            return
        case .appearing:
            appearingNavigationBar(scrollView: scrollView, controller: controller)
            return
        case .vanishing:
            return
        }
    }
    
    fileprivate func floatingUpNavigationBar() {
        // TODO:
    }
    
    func appearingNavigationBar(scrollView: UIScrollView, controller: UIViewController) {
        let halfImposeLine = imposeLine / 2
        // TODO:
//        if scrollView.contentOffset.y < imposeLine {
//            menuDetailViewModel.isChangeConstraints.accept(false)
//        } else {
//            menuDetailViewModel.isChangeConstraints.accept(true)
//        }
//
        navigationController?.navigationBar.backgroundColor = barBackgroundColor.withAlphaComponent(scrollView.contentOffset.y / imposeLine)
        UIApplication.shared.statusBarView?.backgroundColor = barBackgroundColor.withAlphaComponent(scrollView.contentOffset.y / imposeLine)
        // Если offset меньше этой переменной то BackItem переходит из белого в прозрачный
        // В ином случае из прозрачного в черный
        if scrollView.contentOffset.y <= halfImposeLine {
            navigationController?.navigationBar.tintColor = barBackgroundColor.withAlphaComponent(1 - scrollView.contentOffset.y / halfImposeLine)
            makeStatusBar(with: .lightContent)
            navigationBarViewModel.statusBarStyle = .light
            controller.title = nil
        } else {
            navigationController?.navigationBar.tintColor = UIColor.black.withAlphaComponent((scrollView.contentOffset.y / halfImposeLine) - 1)
            navigationController?.navigationBar.titleTextAttributes = [
                NSAttributedString.Key.foregroundColor:
                    UIColor.black.withAlphaComponent(
                        (scrollView.contentOffset.y / halfImposeLine) - 1),
                NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18.0)
            ]
            makeStatusBar(with: .default)
            navigationBarViewModel.statusBarStyle = .dark
            controller.title = navigationBarTitle
        }
        navigationBarViewModel.offset = scrollView.contentOffset.y
    }
    
    fileprivate func vanishingNavigationBar() {
        // TODO:
    }
    
}
