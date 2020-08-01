//
//  Record.swift
//  millionaire
//
//  Created by Оксана Зверева on 01.08.2020.
//  Copyright © 2020 Oksana Zvereva. All rights reserved.
//


import Foundation

struct Record: Codable {
    var date: Date
    var result: Int
    var countQuestion: Int 
}
