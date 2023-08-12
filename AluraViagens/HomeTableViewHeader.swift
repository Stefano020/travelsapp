//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Stefano Branz on 18/07/23.
//

import UIKit

class HomeTableViewHeader: UIView {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    func viewConfigure() {
        headerView.backgroundColor = UIColor(red: 81.0/255.0, green: 179.0/255.0, blue: 177.0/255.0, alpha: 1)
    }
}
