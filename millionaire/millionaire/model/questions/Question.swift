//
//  Question.swift
//  millionaire
//
//  Created by Оксана Зверева on 01.08.2020.
//  Copyright © 2020 Oksana Zvereva. All rights reserved.
//

import Foundation


//класс для хранения вопросов и ответов
class Question {
    let questions: String
    let answers: [String]
    let correctAnswer: Int
    let difficulty: Int
    
    init (questions: String, answers: [String], correctAnswer: Int, difficulty: Int) {
        
        self.answers = answers
        self.correctAnswer = correctAnswer
        self.questions = questions
        self.difficulty = difficulty
    }
}
