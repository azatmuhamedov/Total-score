//
//  TipsCollectionViewCell.swift
//  Total score
//
//  Created by Азат Мухамедов on 09.01.2023.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
    }
    
    
}
