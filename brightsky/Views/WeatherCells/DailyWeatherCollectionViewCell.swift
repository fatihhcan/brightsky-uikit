//
//  DailyWeatherCollectionViewCell.swift
//  brightsky
//
//  Created by Fatih Can on 2.11.2024.
//

import UIKit

class DailyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "DailyWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .purple
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public func configure(with viewModel: DailyWeatherCollectionViewCellViewModel){
        
    }
}
