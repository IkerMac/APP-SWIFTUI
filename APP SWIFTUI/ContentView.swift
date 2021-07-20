//
//  ContentView.swift
//  APP SWIFTUI
//
//  Created by Iker Perea Trejo on 09/07/2021.
//

import SwiftUI


struct WeatherView: View {
  
    @ObservedObject var viewModel: WeatherViewModel
    
    
    var body: some View {
       
        
      
        
        TabView {
            
            
            
                    
                      
                      
            
                           
            
            HStack {
                VStack {
                    
                            
                            HStack {
                                
                                VStack {
                                    Text(viewModel.cityname)
                                        .font(.largeTitle)
                                        .padding()
                                        .position(.init(x: 180, y: 40))
                                }
                                    
                                    
                                   
                            }
                            
                    HStack {
                        VStack {
                                    Text(viewModel.temperature)
                                        .font(.system(size: 70))
                                        .bold()
                                        .position(.init(x: 180, y: -120))
                                       
                        }
                    }
                          
                            
                    HStack {
                        VStack {
                                    Text(viewModel.weatherIcon)
                                        .font(.largeTitle)
                                        .padding()
                                        .position(.init(x: 290, y: -325))
                                        .font(.system(size:20))
                        }
                    }
                            }
                           
                            
    

                     }
            .tabItem {
                Image(systemName: "cloud.bolt.rain.fill")
                Text("Ahora")
                
                
                
                 
            }
            
            futureWeatherView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Pronóstico")
                }
            
            }.onAppear(perform: viewModel.refresh)
            
            }
        
        
        
            
        }
        
    
        

                
                
                
        
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
            WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
        }
    



    }
}



