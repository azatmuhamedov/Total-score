//
//   PersonsView.swift
//  Total score
//
//  Created by Азат Мухамедов on 07.01.2023.
//

import UIKit
// создание второй кастомной вьюхи

class PersonsView: UIView {
   
   let titleLabel: UILabel = {             //добавляем лейбл внутри вью
       let label = UILabel()
       label.text = "Persons"              //текст внутри вью
       label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
       label.font = UIFont(name: "Avenir Next Bold", size: 14) //шрифт и размер
       label.translatesAutoresizingMaskIntoConstraints = false //это свойство говорит, что я сам буду распологать лейбл снизу в экстеншн
       return label
   }()
   
    let backgroundWhiteView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        view.layer.cornerRadius = 10
        //view.isHidden = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var minusButton: UIButton = {                  //создаю кнопку/ с 13 хсоде надо писать  lazy var
        let button = UIButton(type: .system)       //тип систем чтобы кнопка щелкала
        button.setTitle("—", for: .normal)         //что написано в кнопке/минус
        button.tintColor = #colorLiteral(red: 0.4510066509, green: 0.4966486692, blue: 0.5633206367, alpha: 1)                      //тень кнопки
        //button.backgroundColor = .blue
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 60)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var plusButton: UIButton = {                  //создаю кнопку/ с 13 хсоде надо писать  lazy var
        let button = UIButton(type: .system)       //тип систем чтобы кнопка щелкала
        button.setTitle("+", for: .normal)         //что написано в кнопке/минус
        button.tintColor = #colorLiteral(red: 0.4510066509, green: 0.4966486692, blue: 0.5633206367, alpha: 1)                      //тень кнопки
        //button.backgroundColor = .blue
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 60)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let  counterLabel: UILabel = {             //добавляем лейбл внутри вью
        let label = UILabel()
        label.text = "0"              //текст внутри вью
        label.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        //label.backgroundColor = .yellow
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next Bold", size: 50) //шрифт и размер
        label.translatesAutoresizingMaskIntoConstraints = false //это свойство говорит, что я сам буду распологать лейбл снизу в экстеншн
        return label
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
       addSubview(backgroundWhiteView)
       backgroundWhiteView.addSubview(minusButton) //кнопку рaсположил внутри вьюхи на заднем фоне
       backgroundWhiteView.addSubview(plusButton)
       backgroundWhiteView.addSubview(counterLabel)
       
   }
   
   func setConstraints() { //расположение
       
       NSLayoutConstraint.activate([
           titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 2), //расположение лейбла внутри вьюхи,  сверху впритык
           titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15), //слева отступ 5
           
           backgroundWhiteView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4), //отступ от верх границы на 4
           backgroundWhiteView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
           backgroundWhiteView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
           backgroundWhiteView.heightAnchor.constraint(equalToConstant: 100),
       
           minusButton.topAnchor.constraint(equalTo: backgroundWhiteView.topAnchor, constant: 0),
           minusButton.leadingAnchor.constraint(equalTo: backgroundWhiteView.leadingAnchor, constant: 0),
           minusButton.heightAnchor.constraint(equalTo: backgroundWhiteView.heightAnchor), //высота как вьюха
           minusButton.widthAnchor.constraint(equalToConstant: 80), //ширина
           
           plusButton.topAnchor.constraint(equalTo: backgroundWhiteView.topAnchor, constant: 0),
           plusButton.trailingAnchor.constraint(equalTo: backgroundWhiteView.trailingAnchor, constant: 0),
           plusButton.heightAnchor.constraint(equalTo: backgroundWhiteView.heightAnchor),
           plusButton.widthAnchor.constraint(equalToConstant: 80),
           
           counterLabel.centerYAnchor.constraint(equalTo: backgroundWhiteView.centerYAnchor), // цифра должна быть по центру оси Y
           counterLabel.leadingAnchor.constraint(equalTo: minusButton.trailingAnchor, constant: 2),
           counterLabel.trailingAnchor.constraint(equalTo: plusButton.leadingAnchor, constant: -2),
           counterLabel.heightAnchor.constraint(equalTo: backgroundWhiteView.heightAnchor),
           
       ])
   }
   
}

