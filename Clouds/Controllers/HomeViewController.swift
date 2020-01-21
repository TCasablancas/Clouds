//
//  HomeViewController.swift
//  Clouds
//
//  Created by Thyago on 17/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import UIKit
import CoreLocation

class HomeViewController: UIBaseViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var lbLocation: UILabel!
    @IBOutlet weak var imgWeather: UIImageView!
    @IBOutlet weak var lbTemperature: UILabel!
    @IBOutlet weak var btnNew: UIButton!
    @IBOutlet weak var btnRefresh: UIButton!
    
    let locationManager = CLLocationManager()
    
    let icons = [
        "clear-day" : UIImage(named: "ic_clear_day"),
        "clear-night" : UIImage(named: "ic_clear_night"),
        "rain" : UIImage(named: "ic_rainy_day"),
        "sleet" : UIImage(named: "cloud.sleet.fill"),
        "wind" : UIImage(named: "wind"),
        "fog" : UIImage(named: "cloud.fog.fill"),
        "cloudy" : UIImage(named: "ic_cloudy_night"),
        "partly-cloudy-day" : UIImage(named: "ic_partly_cloudy_day"),
        "partly-cloudy-night" : UIImage(named: "ic_cloudy_night")
    ]
    
    override func viewDidLoad() {
        self.setupUI()
        self.setupTexts()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        self.btnRefresh.setNeedsDisplay()
    }
    
    
}

//MARK: Weather Control
extension HomeViewController: CLLocationManagerDelegate {
    
    @IBAction func chooseLocation() {
        self.performSegue(withIdentifier: Constants.Segues.LOCATION, sender: nil)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            let longitude = String(location.coordinate.longitude)
            let latitude = String(location.coordinate.latitude)
            
            DarkSkyService.weatherForCoordinates(latitude: latitude, longitude: longitude) { weatherData, error in
                
                if let weatherData = weatherData {
                    self.updateLabels(with: weatherData as! WeatherData, at: location)
                }
                
                else if let _ = error {
                    self.handleError(message: "Desculpe, não conseguimos pegar sua localização.")
                }
                
            }
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        handleError(message: "Desculpe, não conseguimos pegar sua localização.")
    }
    
    func handleError(message: String) {
        let alert = UIAlertController(title: "Erro ao requisitar dados.", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func updateLabels(with data: WeatherData, at location: CLLocation) {
        self.lbTemperature.text = data.temperature
        //self.lbLocation.text = data.description
        self.imgWeather.image = icons[data.icon] as? UIImage
        
        CLGeocoder().reverseGeocodeLocation(location) { placemarks, error in
            let locationName = placemarks?.first?.locality ?? "Localização Desconhecida"
            self.lbLocation.text = locationName
        }
    }
}

extension HomeViewController: SetupUI {
    
    func setupUI() {
        Theme.default.backgroundPurple(self)
        Theme.default.textLocation(self.lbLocation)
        Theme.default.textTemperature(self.lbTemperature)
        Theme.default.btnGreen(self.btnNew)
    }
    
    func setupTexts() {
        self.btnNew.setTitle("Adicionar Local", for: .normal)
    }
}
