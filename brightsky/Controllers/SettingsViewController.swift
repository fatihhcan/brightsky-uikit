//
//  SettingsViewController.swift
//  brightsky
//
//  Created by Fatih Can on 31.10.2024.
//

import UIKit

class SettingsViewController: UIViewController {
    private let primaryView: SettingsView = {
        let view = SettingsView()
        let viewModel = SettingsViewModel(options: SettingOption.allCases)
        view.confugyre(with: viewModel)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
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
