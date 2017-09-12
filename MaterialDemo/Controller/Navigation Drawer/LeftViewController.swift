//
//  LeftViewController.swift
//  RealTimeChat
//
//  Created by ios3 on 11/09/17.
//  Copyright © 2017 WebMobTech-3. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController  {
    
    // MARK: - Attributes -
    
    var tableView : UITableView!
    
    // MARK: - Lifecycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //self.setUI(Controller: self, Title: "Welcome")
        self.view.backgroundColor = Color.lightBlue.base
        loadViewControls()
        setViewlayout()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    // MARK: - Layout
    
    func loadViewControls() {
        
        tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.backgroundColor = Color.lightBlue.base
        tableView.separatorStyle = .none
        self.view.addSubview(tableView)
        
    }
    
    func setViewlayout() {
        
        let horizontalConstraint : [NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: "H:|[tableView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["tableView":tableView])
        self.view.addConstraints(horizontalConstraint)
        let verticalConstraint : [NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: "V:|-200-[tableView]|", options: [.alignAllLeft, .alignAllRight], metrics: nil, views: ["tableView":tableView])
        self.view.addConstraints(verticalConstraint)
        
    }
    
    // MARK: - Public interface
    
    // MARK: - User Interaction
    
    
    // MARK: - Internal Helpers
    
    // MARK: - Server Request
    
    
    
    
    
}

extension LeftViewController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - TableView Delegate Methods -
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.backgroundColor =  Color.lightBlue.base
        cell.textLabel?.text = "Text"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    
}


