//
//  ChooseLocationViewController.swift
//  Clouds
//
//  Created by Thyago on 17/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import UIKit
import CoreLocation

class ChooseLocationViewController: UIBaseViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    
    var forecastData = [WeatherData]()
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        self.setupUI()
        self.setupTexts()
        searchBar.delegate = self
        
        getWeatherLoc(loc: "São Paulo")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func searchBarUse(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        if let locationString = searchBar.text, !locationString.isEmpty {
            getWeatherLoc(loc: locationString)
        }
    }
    
    func getWeatherLoc(loc:String) {
        CLGeocoder().geocodeAddressString(loc) { (placemarks:[CLPlacemark]?, error:Error?) in
            if error == nil {
                if let location = placemarks?.first?.location {
                    WeatherData.forecastData(withLocation: location.coordinate, completion: { (results:[WeatherData]?) in
                        
                        if let weatherData = results {
                            self.forecastData = weatherData
                            
                            DispatchQueue.main.async {
                                self.tableView.reloadData()
                            }
                            
                        }
                        
                    })
                }
            }
        }
    }
}

extension ChooseLocationViewController: SetupUI {
    
    func setupUI() {
        Theme.default.backgroundGray(self)
    }
    
    func setupTexts() {
        
    }
}
