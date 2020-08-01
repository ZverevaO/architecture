//
//  RecordTableViewCell.swift
//  millionaire
//
//  Created by Оксана Зверева on 01.08.2020.
//  Copyright © 2020 Oksana Zvereva. All rights reserved.
//

import UIKit

class RecordTableViewCell: UITableViewCell {
    
    @IBOutlet weak private var dateLabel: UILabel!
    
    @IBOutlet weak private var recordLabel: UILabel!
    
    func configureCell (date: String, record: String) {
        
        dateLabel.text = date
        recordLabel.text = record
    }
}
