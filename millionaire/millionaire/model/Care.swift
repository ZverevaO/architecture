//
//  Care.swift
//  millionaire
//
//  Created by Оксана Зверева on 01.08.2020.
//  Copyright © 2020 Oksana Zvereva. All rights reserved.
//

import Foundation

class Care {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "records"
    
    public static var shared = Care()
    
    private init() {
        
    }
    
    func load() -> [Record] {
        guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
        do {
            return try decoder.decode([Record].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
    
    func save(records: [Record]) {
        do {
            let data = try encoder.encode(records)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
}
