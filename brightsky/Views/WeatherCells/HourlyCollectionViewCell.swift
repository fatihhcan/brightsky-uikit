//
//  HourlyCollectionViewCell.swift
//  brightsky
//
//  Created by Fatih Can on 2.11.2024.
//

import UIKit

class HourlyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "HourlyWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .yellow
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public func configure(with viewModel: HourlyWeatherCollectionViewCellViewModel){
        
    }
}
