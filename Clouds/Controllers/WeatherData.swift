//
//  WeatherData.swift
//  Clouds
//
//  Created by Thyago on 20/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import Foundation
import SwiftyJSON
import CoreLocation

struct WeatherData {
    
    var temperature : String
    var description : String
    var icon : String
    
    init(data:Any) {
        let json = JSON(data)
        let currentWeather = json["currently"]

        if let temperature = currentWeather["temperature"].float {
            let celsiusTemp = (temperature - 32) * 5/9
            self.temperature = String(format: "%.0f", celsiusTemp) + "º"
        } else {
            self.temperature = "--"
        }

        self.description = currentWeather["summary"].string ?? "--"
        self.icon = currentWeather["icon"].string ?? "--"
    }
    
    static let baseUrl = "https://api.darksky.net/forecast/da889d80bf938bd754620e50c199d34d/"
    
    static func forecastData (withLocation location:CLLocationCoordinate2D, completion: @escaping ([WeatherData]?) -> ()) {
    
        let url = baseUrl + "\(location.latitude),\(location.longitude)"
        let request = URLRequest(url: URL(string: url)!)
        
        let task = URLSession.shared.dataTask(with: request) { (data:Data?, response:URLResponse?, error:Error?) in
            
            var forecastArray:[WeatherData] = []
            
            if let data = data {
                
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                        if let dailyForecasts = json["daily"] as? [String:Any] {
                            if let dailyData = dailyForecasts["data"] as? [[String:Any]] {
                                for dataPoint in dailyData {
                                    if let weatherObject = try? WeatherData(data: dataPoint) {
                                        forecastArray.append(weatherObject)
                                    }
                                }
                            }
                        }
                    
                    }
                } catch {
                    print(error.localizedDescription)
                }
                
                completion(forecastArray)
            }
        }
        task.resume()
    }
}
