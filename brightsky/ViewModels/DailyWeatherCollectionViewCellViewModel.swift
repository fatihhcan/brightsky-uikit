//
//  DailyWeatherCollectionViewCellViewModel.swift
//  brightsky
//
//  Created by Fatih Can on 5.11.2024.
//
import WeatherKit
import Foundation

struct DailyWeatherCollectionViewCellViewModel {
    private let model: DayWeather
    init(model: DayWeather) {
        self.model = model
    }
}
