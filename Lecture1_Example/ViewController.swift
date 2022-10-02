//
//  ViewController.swift
//  Lecture1_Example
//
//  Created by Rolan on 7/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    private var countries: [String] = ["Russia", "Canada", "China", "United States", "Brazil", "Australia", "India", "Argentina", "Kazakhstan", "Algeria", "DR Congo", "Greenland", "Saudi Arabia", "Mexico", "Indonesia", "Sudan", "Libya", "Iran", "Mongolia", "Peru", "Chad", "Niger", "Angola", "Mali", "South Africa", "Colombia", "Ethiopia", "Bolivia", "Mauritania", "Egypt"]
    
    private var countryPopulation = ["143.4 M", "38.2 M", "1,412.4 M", "331.9 M", "214.0 M","25.7 M", "1,393.4 M", "45.8 M", "19.0 M", "44.6 M","92.4 M", "0.1 M", "35.3 M", "130.3 M", "276.4 M","44.9 M", "7.0 M", "85.0 M", "3.3 M", "33.4 M","16.9 M", "25.1 M", "33.9 M", "20.9 M", "60.0 M","51.3 M", "117.9 M", "11.8 M", "4.8 M", "104.3 M"]
    
    @IBOutlet var countryTableView: UITableView!
    
    private let cellIdentifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countryTableView.register(UITableViewCell.self,
                               forCellReuseIdentifier: cellIdentifier)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,
                                                 for: indexPath)
        let country = countries[indexPath.row]
        let countryPopulation = countryPopulation[indexPath.row]
        
        var configuration = cell.defaultContentConfiguration()
        
        configuration.text = country
        configuration.secondaryText = countryPopulation
        
        cell.contentConfiguration = configuration
        
        return cell
    }
}
