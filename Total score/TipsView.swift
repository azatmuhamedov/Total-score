//
//  TipsView.swift
//  Total score
//
//  Created by Азат Мухамедов on 09.01.2023.
//

import UIKit

class TipsView: UIView {
    
    let titleLabel: UILabel = {             //добавляем лейбл внутри вью
        let label = UILabel()
        label.text = "Tips"              //текст внутри вью
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next Bold", size: 14) //шрифт и размер
        label.translatesAutoresizingMaskIntoConstraints = false //это свойство говорит, что я сам буду распологать лейбл снизу в экстеншн
        return label
    }()
    
    let collectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout() // отвечает за распределение ячеек
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
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
        addSubview(titleLabel)
    }
}

extension TipsView {
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 2), //расположение лейбла внутри вьюхи,  сверху впритык
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15), //слева отступ 5
            
           /* backgroundWhiteView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4), //отступ от верх границы на 4
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
        */
        
        ])
    }
}
