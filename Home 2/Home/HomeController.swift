//
//  HomeController.swift
//  Home
//
//  Created by Lama Alherbish on 1/29/20.
//  Copyright © 2020 Lama Alherbish. All rights reserved.
//

import UIKit

class HomeController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    let ArrayOfMenuImage = ["Play","Learn","About"]
    
    let ArrayOfColors = ["T","Y","P"]
    
    let ArrayOfMenuText = ["Play","Learn","About"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrayOfMenuImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        
        cell.TEXT.text = ArrayOfMenuText[indexPath.row]
        cell.rect.image = UIImage(named: ArrayOfColors[indexPath.row]+".png")
        cell.robot.image = UIImage(named: ArrayOfMenuImage[indexPath.row]+".png")

        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}
