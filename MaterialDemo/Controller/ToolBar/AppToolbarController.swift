//
//  ToolbarController.swift
//  RealTimeChat
//
//  Created by ios3 on 11/09/17.
//  Copyright © 2017 WebMobTech-3. All rights reserved.
//

import UIKit

class AppToolbarController: ToolbarController {
    fileprivate var menuButton: IconButton!
    fileprivate var starButton: IconButton!
    fileprivate var searchButton: IconButton!
    
    open override func prepare() {
        super.prepare()
        prepareMenuButton()
        prepareSearchButton()
        prepareStatusBar()
        prepareToolbar()
    }
}

fileprivate extension AppToolbarController {
    func prepareMenuButton() {
        menuButton = IconButton(image: Icon.cm.menu, tintColor: .white)
        menuButton.pulseColor = .white
        menuButton.addTarget(self, action: #selector(handleMenu(button:)), for: .touchUpInside)
    }
    
    
    func prepareSearchButton() {
        searchButton = IconButton(image: Icon.cm.search, tintColor: .white)
        searchButton.pulseColor = .white
    }
    
    func prepareStatusBar() {
        statusBarStyle = .lightContent
        statusBar.backgroundColor = Color.blue.darken3
    }
    
    func prepareToolbar() {
        //        toolbarAlignment = .bottom
        toolbar.backgroundColor = Color.blue.darken2
        toolbar.leftViews = [menuButton]
        toolbar.rightViews = [searchButton]
    }
}

fileprivate extension AppToolbarController {
    
    @objc
    func handleMenu(button: UIButton) {
        //transition(to: SearchViewController())
        navigationDrawerController?.toggleLeftView()
    }
}

