//
//  ViewController.swift
//  Total score
//
//  Created by Азат Мухамедов on 28.12.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Total score"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false //это свойство говорит, что я сам буду распологать лейбл снизу в экстеншн
        return label
        
    }()
    
    let logoImageView: UIImageView = {   //  создали вью в которое вставим изображение
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo") // выбрали пнг картинку из ассетов
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    override func viewDidLoad() {  // вьюдидло это метод, который срабатывает автоматом при запуске вью контроллера/ с него начинается загрузка
        super.viewDidLoad()
        
        setupViews()  //сначала запускается объект? а потом его расположение? иначе будут ошибки
        setConstrains()
        
    }

    func setupViews() { // настройка объектов/ все лейблы, кнопки и тд
        view.backgroundColor = #colorLiteral(red: 0.9813271165, green: 0.9813271165, blue: 0.9813271165, alpha: 1)    // #colorLiteral  и нажать шифт+9,  должен открыться выбор цвета
        
        view.addSubview(titleLabel)
        view.addSubview(logoImageView)
        
    }
    
    
    
    
}

extension MainViewController {
    
    func setConstrains() {  // расоложение объектов
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10), //расположение лейбла, отступ сверху 10
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor), // расположение по центру
        
            logoImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10), // расположение картинки. отступ сверху от лейбла 10
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor), //по центру картинка
            logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5), //ширина картинки. взяли ширину экрана и умножили на 0.5,те при любом экране будет занимать половину экрана
            logoImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5), // высота картинки (одинаковая с шириной)
        ])
    }
}
