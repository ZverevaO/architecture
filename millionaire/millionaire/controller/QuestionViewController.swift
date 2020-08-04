//
//  QuestionViewController.swift
//  millionaire
//
//  Created by Оксана Зверева on 01.08.2020.
//  Copyright © 2020 Oksana Zvereva. All rights reserved.
//

import UIKit

protocol CheckAnswerDelegate: AnyObject {
    func didTapUserAnswer (userAnswer: Int, correctAnswer: Int)
}

protocol  QuestionViewControllerDelegate: class {
    func didEndGame (withResult result: Int)
}

class QuestionViewController: UIViewController {
    
    
    @IBOutlet weak private var numberQuestionLabel: UILabel!
    
    @IBOutlet weak private var textQuestionLabel: UILabel!
    
    @IBOutlet weak private var answer1Button: UIButton!
    
    @IBOutlet weak private var answer2Button: UIButton!
    
    @IBOutlet weak private var answer3Button: UIButton!
    
    @IBOutlet weak private var answer4Button: UIButton!
    
    private var correctAnswer: Int = -1
    
    private var userAnswer: Int = -1

    private var numberQuestion: Int = 1
    
    weak var checkAnswerUserDelegate: CheckAnswerDelegate?
    
    weak var delegate: QuestionViewControllerDelegate?
    
    var difficulty: DifficultyGame = .easy
 
    private var allQuestion = [Question]()
    private var bdAllQuestions = BdQuestions.getQuestions()
    
    private let answerColor: UIColor = UIColor(red: 155, green: 204, blue: 221, alpha: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch difficulty {
        case .easy:
            allQuestion = GetQuestionEasy.getQuestions(allQuestions: bdAllQuestions)
        case .hard:
            allQuestion = GetQuestionHard.getQuestions(allQuestions: bdAllQuestions)
//        default:
//              allQuestion = GetQuestionEasy.getQuestions(allQuestions: bdAllQuestions)
        }
        
        configureQuestion(question: allQuestion[numberQuestion-1], numberQuestion: numberQuestion)
        
        self.checkAnswerUserDelegate = self
    }
        
    
    @IBAction private func answer1DidTap(_ sender: UIButton) {

        userAnswer = 0
        checkAnswer ()
    }
    
    
    @IBAction private func answer2DidTap(_ sender: UIButton) {
        
        userAnswer = 1
        checkAnswer ()
    }
    
    
    @IBAction private func answer3DidTap(_ sender: UIButton) {
        
        userAnswer = 2
        checkAnswer ()
    }
    
    
    
    @IBAction private func answer4DidTap(_ sender: UIButton) {
        
        userAnswer = 3
        checkAnswer ()
    }
    
    func configureQuestion (question: Question, numberQuestion: Int) {
        
        answer1Button.backgroundColor = answerColor
        answer2Button.backgroundColor = answerColor
        answer3Button.backgroundColor = answerColor
        answer4Button.backgroundColor = answerColor
        
        numberQuestionLabel.text = "Вопрос \(numberQuestion) из \(allQuestion.count)"
        
        textQuestionLabel.text = question.questions
        
        correctAnswer = question.correctAnswer
        
        //заполняем вопросы
        for index in 0...question.answers.count-1 {
            switch index {
            case 0:
                answer1Button.setTitle(String(describing: question.answers[index]), for: .normal)
            case 1:
                answer2Button.setTitle(String(describing: question.answers[index]), for: .normal)
            case 2:
                answer3Button.setTitle(String(describing: question.answers[index]), for: .normal)
            case 3:
                answer4Button.setTitle(String(describing: question.answers[index]), for: .normal)
            default:
                break
            }
        }
    }
    
    func checkAnswer () {
        
        checkAnswerUserDelegate?.didTapUserAnswer(userAnswer: userAnswer, correctAnswer: correctAnswer)
        if userAnswer == correctAnswer {
            print("правильный ответ")
            if numberQuestion == allQuestion.count {
                let message = "Вы ответили на \(numberQuestion)  из \(allQuestion.count) вопросов."
                saveResult(userResult: numberQuestion)
                showGameOver (message:  message)
                delegate?.didEndGame(withResult: numberQuestion)
            }
            else {
                nextQuestion()
            }
            
        }
        else {
            //ответ не верный, нужно перейти на главный экран и сохранить результат
            print("ответ не верный")
            saveResult(userResult: numberQuestion-1)
            let message = "Вы ответили на \(numberQuestion-1)  из \(allQuestion.count) вопросов."
            showGameOver (message:  message)
             delegate?.didEndGame(withResult: numberQuestion-1)
        }
        
    }
    
    func nextQuestion() {
        
        numberQuestion = numberQuestion + 1
        configureQuestion(question: allQuestion[numberQuestion-1], numberQuestion: numberQuestion)
    }
    
    func showGameOver (message: String) {
        
        let alertController = UIAlertController(title: "Игра окончена", message: message, preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "ОК", style: .default) { [weak self] action in
            self?.dismiss(animated: true, completion: nil)
        }
        
        alertController.addAction(confirmAction)
        present(alertController, animated: true  )
        
    }
    
    func saveResult (userResult: Int) {
        print("сохраняем результат \(userResult)")
        var records = Care.shared.load()
        let newRecord = Record(date: Date(), result: userResult, countQuestion: allQuestion.count )
        records.append(newRecord)
        Care.shared.save(records: records)
    }
    
}


extension QuestionViewController: CheckAnswerDelegate {
    
    func didTapUserAnswer(userAnswer: Int, correctAnswer: Int) {
        
        if userAnswer != correctAnswer {
            //устанавливаем цвета ответам
            setColorAnswer(answer: correctAnswer, color: .green)
            setColorAnswer(answer: userAnswer, color: .red)
        }
    }
    
    func setColorAnswer (answer: Int, color: UIColor) {
        switch answer {
        case 0:
            answer1Button.backgroundColor = color
        case 1:
            answer2Button.backgroundColor = color
        case 2:
            answer3Button.backgroundColor = color
        case 3:
            answer3Button.backgroundColor = color
        default:
            break
        }
    }
    
}

extension QuestionViewController: QuestionViewControllerDelegate {
    
    func didEndGame(withResult result: Int) {
        self.delegate?.didEndGame(withResult: result)
        self.dismiss(animated: true, completion: nil)
    }
}
