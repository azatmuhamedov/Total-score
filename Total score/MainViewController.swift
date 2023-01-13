//
//  ViewController.swift
//  Total score
//
//  Created by Азат Мухамедов on 28.12.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = { //добавляем лейбл сверху верхний
        let label = UILabel()
        label.text = "Total score"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 40) //шрифт и размер
        label.translatesAutoresizingMaskIntoConstraints = false //это свойство говорит, что я сам буду распологать лейбл снизу в экстеншн
        return label
        
    }()
    
    let logoImageView: UIImageView = {   //  создали вью в которое вставим изображение
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo") // выбрали пнг картинку из ассетов
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter the invoice amout and click \"Calculate\"" //  \чтобы вывести кавычки на экран
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 15)
        label.adjustsFontSizeToFitWidth = true //  размер лейбла будет изменяться в зависимости от кол-ва символов
        label.minimumScaleFactor = 0.7  //размер текста не может быть меньше чем 15х0.7
        label.numberOfLines = 2 // текст может распологаться на 2 строки
        label.textAlignment = .center // выравнивание по центру
        label.translatesAutoresizingMaskIntoConstraints = false //это свойство говорит, что я сам буду распологать лейбл снизу в экстеншн
        return label
        
        
    }()
    
    let totalScoreView = TotalScoreView() // добавил экземпляр добавленной вьюхи тоталскорвью
    let personsView = PersonsView() //добавил экземпляр вьюхи персонвью
    let tipsView = TipsView() //    добавил вьюху чаевых
    
    var calculateButton: UIButton = {                    //создаю кнопку в самом низу/ с 13 хсоде надо писать  lazy var
        let button = UIButton(type: .system)             //тип систем чтобы кнопка щелкала
        button.setTitle("Calculate", for: .normal)         //что написано в кнопке
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.backgroundColor = #colorLiteral(red: 0.351745082, green: 0.7647058964, blue: 0.6571922819, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Avenir Next Bold", size: 25)
        button.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside) // добавляю действие
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {  // вьюдидло это метод, который срабатывает автоматом при запуске вью контроллера/ с него начинается загрузка
        super.viewDidLoad()
        
        setupViews()  //сначала запускается объект? а потом его расположение? иначе будут ошибки
        setConstrains()
        addTap()
        
    }

    func setupViews() { // настройка объектов/ все лейблы, кнопки и тд
        view.backgroundColor = #colorLiteral(red: 0.9813271165, green: 0.9813271165, blue: 0.9813271165, alpha: 1)    // #colorLiteral  и нажать шифт+9,  должен открыться выбор цвета
        
        view.addSubview(titleLabel)
        view.addSubview(logoImageView)
        view.addSubview(descriptionLabel)
        view.addSubview(totalScoreView)
        view.addSubview(personsView)
        view.addSubview(calculateButton)
        view.addSubview(tipsView)
    }
    
    
    @objc func calculateButtonTapped() {
        guard let totalScore = totalScoreView.sumTextField.text,
              let totalScoreInt = Int(totalScore) else { return }
        
        let summ = totalScoreInt + totalScoreInt * tipsView.tipsCount / 100
        let persons = personsView.counter
      
        if persons == 0 {
            descriptionLabel.text = "Enter persons count"
            descriptionLabel.textColor = .red
        } else {
            let result = summ / persons
            descriptionLabel.text = "\(result) per person"
            descriptionLabel.textColor = .black
        }
        
        
    }
    
    func addTap() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}

extension MainViewController {
    
    func setConstrains() {  // расоложение объектов
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10), //расположение лейбла, отступ сверху 10
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor), // расположение по центру
        
            logoImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10), //расположение картинки.отступ от НИЗА лейбла 10
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor), //по центру картинка
            logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5), //ширина картинки. взяли ширину экрана и умножили на 0.5,те при любом экране будет занимать половину экрана
            logoImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5), // высота картинки (одинаковая с шириной)
            
            descriptionLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 15), //расположение лейбла под картинкой, отступ ОТ картинки 15
            //descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20), //текст отсутпает от края левого экрана на 20, на ЛЮБОМ экране
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20), //отступ текста правого инижнего ВСЕГда с минусом
            
            totalScoreView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10), //кастом вью отходит от описания на 10
            totalScoreView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            totalScoreView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            totalScoreView.heightAnchor.constraint(equalToConstant: 130), //  высота вьюхи
            
            personsView.topAnchor.constraint(equalTo: totalScoreView.bottomAnchor, constant: 10),
            personsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            personsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            personsView.heightAnchor.constraint(equalToConstant: 130),
            
            tipsView.topAnchor.constraint(equalTo: personsView.bottomAnchor, constant: 10),
            tipsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            tipsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            tipsView.heightAnchor.constraint(equalToConstant: 100),
            
            calculateButton.topAnchor.constraint(equalTo: tipsView.bottomAnchor, constant: 20), // отступ снизу
            calculateButton.heightAnchor.constraint(equalToConstant: 60),
            calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            calculateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            //calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor), // по центру
            
        ])
    }
}
