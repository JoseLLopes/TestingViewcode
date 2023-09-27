//
//  DiceScreenView.swift
//  Testing View Code
//
//  Created by jose vitor lopes on 27/09/23.
//

import Foundation
import UIKit

class DiceScreenView: UIView {
    
    var pressedRollButton: (() -> UIImage)?
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private lazy var diceOneImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "diceOne")
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    private lazy var diceTwoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "diceTwo")
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    private lazy var stackDiceView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [diceOneImage,diceTwoImage])
        stackView.axis = .horizontal
        stackView.spacing = 50
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var rollButtonView: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Roll dices", for: .normal)
        button.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        button.backgroundColor = .blue
        return button
    }()
    
    init(){
        super.init(frame: .zero)
        backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func clickButton()
    {
        diceOneImage.image = pressedRollButton?()
        diceTwoImage.image = pressedRollButton?()
    }
}

extension DiceScreenView: ViewCode{
    func addSubViews() {
        addSubview(stackDiceView)
        addSubview(logoImageView)
        addSubview(rollButtonView)
    }
    
    func setupConstrains() {
        NSLayoutConstraint.activate([
            
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.bottomAnchor.constraint(equalTo: stackDiceView.topAnchor, constant: -100),
            logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            
            stackDiceView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackDiceView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            diceOneImage.widthAnchor.constraint(equalToConstant: 100),
            diceOneImage.heightAnchor.constraint(equalToConstant: 100),
            
            diceTwoImage.widthAnchor.constraint(equalToConstant: 100),
            diceTwoImage.heightAnchor.constraint(equalToConstant: 100),
            
            rollButtonView.topAnchor.constraint(equalTo: stackDiceView.bottomAnchor, constant: 50),
            rollButtonView.centerXAnchor.constraint(equalTo: centerXAnchor),
            rollButtonView.widthAnchor.constraint(equalToConstant: 100),
            rollButtonView.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupStyle() {
    
    }
    
    
}
