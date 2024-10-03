//
//  ViewController.swift
//  Project2
//
//  Created by Katasee on 29/09/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var correctAnswer = 0
    let scoreLable = UILabel()
    
    var score = 0 {
        didSet {
            scoreLable.text = "Score: \(score)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "spain", "uk", "ukraine", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
        finishGame()
        
    }
    func finishGame(action: UIAlertAction! = nil) {
        score = 0
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
       
        scoreLable.textColor = .black
        scoreLable.font = UIFont.boldSystemFont(ofSize: 24)
        scoreLable.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scoreLable)
        
        NSLayoutConstraint.activate([
            
            scoreLable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -20),
            scoreLable.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        let finishScore = UIAlertController(title: "You win", message: "You have maximum points", preferredStyle: .alert)
        finishScore.addAction(UIAlertAction(title: "Restart the game", style: .default, handler: finishGame))
        let notCorrect = countries[sender.tag]
       
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong is \(notCorrect)"
            score -= 1
        }
        
    if score == 10 {
        present(finishScore,animated: true)
    }
        
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        
        present(ac, animated: true)
        
        }
    }
