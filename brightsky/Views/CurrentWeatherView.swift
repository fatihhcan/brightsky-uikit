//
//  CurrentWeatherView.swift
//  brightsky
//
//  Created by Fatih Can on 1.11.2024.
//

import UIKit

class CurrentWeatherView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
