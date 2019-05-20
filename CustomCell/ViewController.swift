//
//  ViewController.swift
//  CustomCell
//
//  Created by 김종현 on 19/05/2019.
//  Copyright © 2019 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//    var fruits = ["apple", "pear", "watermelon", "melon", "graph"]
//    var country = ["미국", "한국", "캐나다", "영국", "호주"]
    
    var dataDic: [[String:String]] = [
        ["apple":"미국"], ["pear":"한국"], ["watermelon":"캐나다"], ["melon": "영국"], ["graph":"호주"]
    ]
    
    // Dictionary
//    var dataDic = [[String:String]]()
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
        
        print(dataDic)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return  fruits.count
        return dataDic.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath) as! MyTableViewCell
//        cell.fruitsLabel.text = fruits[indexPath.row]
//        cell.countryLabel.text = country[indexPath.row]
//        cell.myImageView.image = UIImage(named: fruits[indexPath.row])
        
        let currentData = dataDic[indexPath.row]
        print("\(indexPath.row) = \(currentData)")
        
        for (key, value) in currentData {
            cell.fruitsLabel.text = key
            cell.countryLabel.text = value
            cell.myImageView.image = UIImage(named: key)
        }
        
        return cell
    }
}

