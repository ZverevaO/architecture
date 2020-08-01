//
//  RecordTableViewController.swift
//  millionaire
//
//  Created by Оксана Зверева on 01.08.2020.
//  Copyright © 2020 Oksana Zvereva. All rights reserved.
//

import UIKit

class RecordTableViewController: UITableViewController {

    private var records: [Record] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        records = Care.shared.load()
        print(records.count)
        
        tableView.reloadData()
        //устанавливаем высоту ячейки
        tableView.estimatedRowHeight = 44

        //пересчитываем высоту ячеек
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return records.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecordTableViewCell", for: indexPath) as! RecordTableViewCell
        
        let record = records[indexPath.row]
        
        cell.configureCell(date: "\(record.date)", record: "\(record.result)")
        
        print("\(record.date) record: \(record.result)")
   
        return cell
    }
    
}
