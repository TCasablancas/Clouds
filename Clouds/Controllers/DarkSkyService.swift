//
//  DarkSkyService.swift
//  Clouds
//
//  Created by Thyago on 20/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import Foundation
import Alamofire

public class DarkSkyService {
    
    private static let baseURL = "https://api.darksky.net/forecast/"
    private static let apiKey = "da889d80bf938bd754620e50c199d34d"
    
    static func weatherForCoordinates(latitude: String, longitude: String, completion: @escaping (Any?, Error?) -> ()) {
        
        let url = baseURL + apiKey + "/\(latitude),\(longitude)"
        
        Alamofire.request(url).responseJSON { response in
            switch response.result {
            case .success(let result):
                completion(WeatherData(data: result), nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
        
    }
    
}
