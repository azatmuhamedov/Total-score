//
//  TipsCollectionView.swift
//  Total score
//
//  Created by Азат Мухамедов on 09.01.2023.
//

import UIKit

class TipsCollectionView: UICollectionView { //  класс для оформления чаевых
    
    var flowLayout = UICollectionViewFlowLayout() // ?
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) { //создаю инициализатор. CGREct - размер, collcetViw.. - дочер класс, определяет как будут размещаться элементы внутри коллецкции
        super.init(frame: .zero, collectionViewLayout: flowLayout)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    func setupView() {
        delegate = self
        dataSource = self
        
        
    }
    
}

extension TipsCollectionView: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? //guard let??
                
        TipsCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        return cell
        
    }
}

extension TipsCollectionView: UICollectionViewDataSource{
    
    
}
