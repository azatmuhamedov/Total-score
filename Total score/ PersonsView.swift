//
//   PersonsView.swift
//  Total score
//
//  Created by Азат Мухамедов on 07.01.2023.
//

import UIKit
// создание второй кастомной вьюхи

class PersonsView: UIView {
   
   let titleLabel: UILabel = { //добавляем лейбл внутри вью
       let label = UILabel()
       label.text = "Persons" //текст внутри вью
       label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
       label.font = UIFont(name: "Avenir Next Bold", size: 14) //шрифт и размер
       label.translatesAutoresizingMaskIntoConstraints = false //это свойство говорит, что я сам буду распологать лейбл снизу в экстеншн
       return label
   }()
   
    let backgroundWhiteView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
   }
   
   func setConstraints() { //расположение
       
       NSLayoutConstraint.activate([
           titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 2), //расположение лейбла внутри вьюхи,  сверху впритык
           titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15), //слева отступ 5
           
           backgroundWhiteView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4), //отступ от верх границы на 4
           backgroundWhiteView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
           backgroundWhiteView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
           backgroundWhiteView.heightAnchor.constraint(equalToConstant: 100)
       
       ])
   }
   
}

