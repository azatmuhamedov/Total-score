//
//  TipsCollectionViewCell.swift
//  Total score
//
//  Created by Азат Мухамедов on 09.01.2023.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    
    let  procentLabel: UILabel = {             //добавляем лейбл внутри вью
        let label = UILabel()
        label.text = "0%"              //текст внутри вью
        label.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        //label.backgroundColor = .yellow
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next Bold", size: 24) //шрифт и размер
        label.translatesAutoresizingMaskIntoConstraints = false //это свойство говорит, что я сам буду распологать лейбл снизу в экстеншн
        return label
    }()
    
    override var isSelected: Bool {          //выделение кнопки при нажитии
        didSet {
            if isSelected {                //если ячейка выбрана, то цвет розовый и ширина 3
                layer.borderWidth = 3
                layer.borderColor = #colorLiteral(red: 0.6007780817, green: 0.89, blue: 0.8550943747, alpha: 1)
            } else {                      //если ячейка не выбрана, то ширина 0
                layer.borderWidth = 0
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        layer.cornerRadius = 10
        
        addSubview(procentLabel)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            procentLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            procentLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        
        
        ])
    }
    
}
