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

    override func viewDidLoad() {  // вьюдидло это метод, который срабатывает автоматом при запуске вью контроллера/ с него начинается загрузка
        super.viewDidLoad()
        
        setupViews()  //сначала запускается объект? а потом его расположение? иначе будут ошибки
        setConstrains()
        
    }

    func setupViews() { // настройка объектов/ все лейблы, кнопки и тд
        view.backgroundColor = #colorLiteral  // должен открыться выбор цвета? у меня не открывается
        
        view.addSubview(
    }
    
    
    
    
}

extension MainViewController {
    
    func setConstrains() {  // расоложение объектов
        NSLayoutConstraint.activate([
        
        
        
        ])
    }
}
