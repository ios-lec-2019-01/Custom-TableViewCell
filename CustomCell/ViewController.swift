//
//  ViewController.swift
//  CustomCell
//
//  Created by 김종현 on 19/05/2019.
//  Copyright © 2019 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var fruits = ["apple", "pear", "watermelon", "melon", "graph"]
    var country = ["미국", "한국", "캐나다", "영국", "호주"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath) as! MyTableViewCell
        cell.fruitsLabel.text = fruits[indexPath.row]
        cell.countryLabel.text = country[indexPath.row]
        cell.myImageView.image = UIImage(named: fruits[indexPath.row])
        return cell
    }


}

