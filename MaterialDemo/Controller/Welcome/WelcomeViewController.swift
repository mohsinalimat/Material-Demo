//
//  WelcomeViewController.swift
//  RealTimeChat
//
//  Created by ios3 on 06/09/17.
//  Copyright © 2017 WebMobTech-3. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController  {

    // MARK: - Attributes -
    
    open var dataSourceItems = [DataSourceItem]()
    
    fileprivate var toolbar: Toolbar!
    fileprivate var tableView: TableView!
    fileprivate var card: Card!
    
    
    // MARK: - Lifecycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //self.setUI(Controller: self, Title: "Welcome")
        self.view.backgroundColor = Color.blue.lighten5
        self.title = "Home"
        prepareToolbar()
        loadViewControls()
        

        prepareTableView()
        prepareCard()
        prepareData()
        
        view.layout(tableView).edges()
        
        
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
        
    }
    
    func setViewlayout() {
        
        let horizontalConstraint : [NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: "H:|[tableView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["tableView":tableView])
        self.view.addConstraints(horizontalConstraint)
        let verticalConstraint : [NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: "V:|[tableView]|", options: [.alignAllLeft, .alignAllRight], metrics: nil, views: ["tableView":tableView])
        self.view.addConstraints(verticalConstraint)
       
    }
    
    // MARK: - Public interface
    
    // MARK: - User Interaction
    
    
    // MARK: - Internal Helpers
    
    // MARK: - Server Request
  

    
    

}
extension WelcomeViewController {
    fileprivate func prepareToolbar() {
        guard let toolbar = toolbarController?.toolbar else {
            return
        }
        
        toolbar.title = "Home View"
        toolbar.titleLabel.textColor = .white
        toolbar.titleLabel.textAlignment = .left
        
//        toolbar.detail = "Build Beautiful Software"
//        toolbar.detailLabel.textColor = .white
//        toolbar.detailLabel.textAlignment = .left
    }
    
    
    fileprivate func prepareTableView() {
        tableView = TableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
        
    }
    
    fileprivate func prepareCard() {
        card = Card()
        card.toolbar = toolbar
        card.contentView = tableView
        view.layout(card).horizontally(left: 20, right: 20).center()
    }
    
    fileprivate func prepareData() {
        let persons = [["name": "Daniel"], ["name": "Sarah"]]
        for person in persons {
            dataSourceItems.append(DataSourceItem(data: person))
        }
        tableView.reloadData()
    }
}

extension WelcomeViewController: TableViewDataSource , TableViewDelegate{
    @objc
    open func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @objc
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceItems.count
    }
    
    @objc
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        guard let data = dataSourceItems[indexPath.row].data as? [String: String] else {
            return cell
        }
        cell.imageView?.image = UIImage.init(named: "chat")
        cell.textLabel?.text = data["name"]
        
        return cell
    }
}




