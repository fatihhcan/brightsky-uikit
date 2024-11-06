//
//  CurrentWeatherViewModel.swift
//  brightsky
//
//  Created by Fatih Can on 5.11.2024.
//

import Foundation

enum WeatherViewModel {
    case current(viewModel: CurrentWeatherCollectionViewCellViewModel)
    case hourly(viewModel: [HourlyWeatherCollectionViewCellViewModel])
    case daily(viewModel: [DailyWeatherCollectionViewCellViewModel])
}
