//
//  CurrentWeatherCollectionViewCell.swift
//  brightsky
//
//  Created by Fatih Can on 2.11.2024.
//

import UIKit

class CurrentWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "CurrentWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public func configure(with viewModel: CurrentWeatherCollectionViewCellViewModel){
        
    }
}
