//
//  ViewController.swift
//  brightsky
//
//  Created by Fatih Can on 31.10.2024.
//

import UIKit

class WeatherViewController: UIViewController {
    
    private let primaryView = CurrentWeatherView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        getLocation()
    }
    
    private func getLocation(){
        LocationManager.shared.getCurrentLocation{ location in
            WeatherManager.shared.getWeather(for: location){[weak self] in
                DispatchQueue.main.async {
                    guard let currentWeather = WeatherManager.shared.currentWeather else { return }
                    self?.primaryView.configure(with: [
                        .current(viewModel: .init(model: currentWeather)),
                        .hourly(viewModel: WeatherManager.shared.hourlyWeather.compactMap({ .init(model: $0)})),
                        .daily(viewModel: WeatherManager.shared.dailyWeather.compactMap({ .init(model: $0)}))
                        
                    ])
                }
                
            }
            
        }
    }

    private func setUpView(){
        view.backgroundColor = .systemBackground
        view.addSubview(primaryView)
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}

