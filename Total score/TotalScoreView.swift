//
//  TotalScoreView.swift
//  Total score
//
//  Created by Азат Мухамедов on 07.01.2023.
//

import UIKit
 // создание кастомной вьюхи

class TotalScoreView: UIView {
    
    let titleLabel: UILabel = { //добавляем лейбл внутри вью
        let label = UILabel()
        label.text = "Total score" //текст внутри вью
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next Bold", size: 14) //шрифт и размер
        label.translatesAutoresizingMaskIntoConstraints = false //это свойство говорит, что я сам буду распологать лейбл снизу в экстеншн
        return label
    }()
    
    let sumTextField: UITextField = { // создаю текстфилд - поле для ввода текста/чисел
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1) //фон поля ввода
        textField.layer.cornerRadius = 10 // скругление углов текстфилда
        textField.textColor = .black //цвет введенного текста/числа
        textField.tintColor = #colorLiteral(red: 0.6007780817, green: 0.89, blue: 0.8550943747, alpha: 1)
        textField.font = UIFont(name: "Avenir Next Bold", size: 50)
        textField.textAlignment = .center // центрирование текста по центру
        textField.keyboardType = .numberPad //добавил появление клавы / вызвать клаву cmd+K
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
        
        
        
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false //TAMIC  вручную будет распологать
        
        addSubview(titleLabel)
        addSubview(sumTextField)
    }
    
    func setConstraints() { //расположение
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 2), //расположение лейбла внутри вьюхи,  сверху впритык
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15), //слева отступ 5
            
            sumTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4), //расположение текстфилд внутри вьюхи
            sumTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            sumTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            sumTextField.heightAnchor.constraint(equalToConstant: 100)
        
        
        ])
    }
    
}
