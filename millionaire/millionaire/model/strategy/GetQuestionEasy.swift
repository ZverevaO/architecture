//
//  GetQuestionEasy.swift
//  millionaire
//
//  Created by Оксана Зверева on 04.08.2020.
//  Copyright © 2020 Oksana Zvereva. All rights reserved.
//

import Foundation

class GetQuestionEasy: GetQuestionsStrategy {
   static func getQuestions(allQuestions: [Question]) -> [Question] {
        
        return allQuestions.filter({$0.difficulty < 5 })
    }
}
