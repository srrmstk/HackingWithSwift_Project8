//
//  ViewController.swift
//  Project8
//
//  Created by srrmstk on 09.07.2023.
//

import UIKit

class ViewController: UIViewController {

  var cluesLabel: UILabel!
  var answersLabel: UILabel!
  var currentAnswer: UITextField!
  var scoreLabel: UILabel!
  var letterButtons = [UIButton]()

  override func loadView() {
    view = UIView()
    view.backgroundColor = .white

    scoreLabel = UILabel()
    scoreLabel.text = "Score 0"
    scoreLabel.textAlignment = .right
    scoreLabel.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(scoreLabel)

    cluesLabel = UILabel()
    cluesLabel.translatesAutoresizingMaskIntoConstraints = false
    cluesLabel.text = "CLUES"
    cluesLabel.numberOfLines = 0
    cluesLabel.font = .systemFont(ofSize: 24)
    cluesLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
    view.addSubview(cluesLabel)

    answersLabel = UILabel()
    answersLabel.translatesAutoresizingMaskIntoConstraints = false
    answersLabel.text = "ANSWERS"
    answersLabel.numberOfLines = 0
    answersLabel.font = UIFont.systemFont(ofSize: 24)
    answersLabel.textAlignment = .right
    answersLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
    view.addSubview(answersLabel)

    currentAnswer = UITextField()
    currentAnswer.translatesAutoresizingMaskIntoConstraints = false
    currentAnswer.placeholder = "Tap letters to guess"
    currentAnswer.textAlignment = .center
    currentAnswer.font = .systemFont(ofSize: 44)
    currentAnswer.isUserInteractionEnabled = false
    view.addSubview(currentAnswer)

    let submit = UIButton(type: .system)
    submit.translatesAutoresizingMaskIntoConstraints = false
    submit.setTitle("SUBMIT", for: .normal)
    view.addSubview(submit)

    let clear = UIButton(type: .system)
    clear.translatesAutoresizingMaskIntoConstraints = false
    clear.setTitle("CLEAR", for: .normal)
    view.addSubview(clear)

    let buttonsView = UIView()
    buttonsView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(buttonsView)

    NSLayoutConstraint.activate([
      // scoreLabel
      scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
      scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
      // cluesLabel
      cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
      cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100),
      cluesLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100),
      // answersLabel
      answersLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
      answersLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100),
      answersLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.4, constant: -100),
      answersLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor),
      // currentAnswer
      currentAnswer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
      currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      currentAnswer.topAnchor.constraint(equalTo: cluesLabel.bottomAnchor, constant: 20),
      // submit button
      submit.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor),
      submit.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
      submit.heightAnchor.constraint(equalToConstant: 44),
      // clear button
      clear.centerYAnchor.constraint(equalTo: submit.centerYAnchor),
      clear.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
      clear.heightAnchor.constraint(equalToConstant: 44),
      // buttonsView
      buttonsView.heightAnchor.constraint(equalToConstant: 320),
      buttonsView.widthAnchor.constraint(equalToConstant: 750),
      buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20),
      buttonsView.topAnchor.constraint(equalTo: submit.bottomAnchor, constant: 20),
    ])

    let width = 150
    let height = 80

    for row in 0...3 {
      for col in 0...4 {
        let letterButton = UIButton(type: .system)
        letterButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
        letterButton.setTitle("WWW", for: .normal)

        let frame = CGRect(x: col * width, y: row * height, width: width, height: height)
        letterButton.frame = frame

        buttonsView.addSubview(letterButton)
        letterButtons.append(letterButton)
      }
    }

  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

