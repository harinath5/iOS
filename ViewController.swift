//
//  ViewController.swift
//  ExpandableAndCollapsTableView
//
//  Created by Harinath Reddy G on 27/03/20.
//  Copyright © 2020 Harinath Reddy G. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblTableView: UITableView!
        
    var imgArray = ["BengalTiger","Hyna","japaneesFlower","Lotus","Lotus2","PinkRose","Rose","SunFlower","Tiger","WhiteFlowers","Wolf","YellowFlowers"]
    var nameArray = ["1 BengalTiger","2 Hyna","3 japaneesFlower","4 Lotus","5 Lotus2","6 PinkRose","7 Rose","8 SunFlower","9 Tiger","10 WhiteFlowers","11 Wolf","12 YellowFlowers"]
    
    
    var SelectedIndex = -1
    var isCollapce = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        tblTableView.estimatedRowHeight = 296
        tblTableView.rowHeight = UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if self.SelectedIndex == indexPath.row && isCollapce == true
        {
            return 296
        }else{
            return 65
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as! HomeTableViewCell
        cell.labelName.text! = nameArray[indexPath.row]
        cell.imgImage.image = UIImage(named: "\(imgArray[indexPath.row])")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if SelectedIndex == indexPath.row
        {
            if self.isCollapce == false
            {
                self.isCollapce = true
            }else
            {
                self.isCollapce = false
            }
        }else
        {
            self.isCollapce = true
        }
        self.SelectedIndex = indexPath.row
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }

}
