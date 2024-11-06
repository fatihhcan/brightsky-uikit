//
//  CurrentWeatherCollectionViewCellViewModel.swift
//  brightsky
//
//  Created by Fatih Can on 5.11.2024.
//
import WeatherKit
import Foundation

struct CurrentWeatherCollectionViewCellViewModel {
    private let model: CurrentWeather
    
    init(model: CurrentWeather) {
        self.model = model
    }
}
