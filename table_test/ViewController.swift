//
//  ViewController.swift
//  table_test
//
//  Created by 濱田龍輝 on 2019/08/25.
//  Copyright © 2019 Ryuuki.hamada. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 // 5個のデータがあるという意味
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 再利用可能な cell を得る
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // 値を設定する.
        cell.textLabel!.text = "Row \(indexPath.row)"
        
        return cell
    }
}
