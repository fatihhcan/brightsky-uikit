//
//  HourlyWeatherCollectionViewCellViewModel.swift
//  brightsky
//
//  Created by Fatih Can on 5.11.2024.
//
import WeatherKit
import Foundation

struct HourlyWeatherCollectionViewCellViewModel {
    private let model: HourWeather
    init(model: HourWeather) {
        self.model = model
    }
}
