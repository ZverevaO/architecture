//
//  MainViewController.swift
//  millionaire
//
//  Created by Оксана Зверева on 01.08.2020.
//  Copyright © 2020 Oksana Zvereva. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func newGameDidTap(_ sender: UIButton) {
        
        performSegue(withIdentifier: "startGame", sender: self)
        
    }
    
    @IBOutlet weak private var difficultySegmentedControl: UISegmentedControl!
    
    private var selectedDifficulty: DifficultyGame {
        switch self.difficultySegmentedControl.selectedSegmentIndex {
        case 0:
            return .easy
        case 1:
            return .hard
        default:
            return .easy
        }
    }
    
    @IBOutlet weak var lastResultLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "startGame":
            guard let vc = segue.destination as? QuestionViewController else {return}
            
            vc.difficulty = self.selectedDifficulty
            vc.delegate = self
        default:
            break
        }
    }
}


extension MainViewController: QuestionViewControllerDelegate {
    func didEndGame(withResult result: Int) {
        
        self.lastResultLabel.text = "Последний результат: \(result)"
    }
}
