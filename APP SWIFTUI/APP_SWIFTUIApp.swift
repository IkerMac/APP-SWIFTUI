//
//  APP_SWIFTUIApp.swift
//  APP SWIFTUI
//
//  Created by Iker Perea Trejo on 09/07/2021.
//

import SwiftUI

@main
struct APP_SWIFTUIApp: App {
    var body: some Scene {
        WindowGroup {
           WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
        }
    }
}
