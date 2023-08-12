//
//  ViewController.swift
//  AluraViagens
//
//  Created by Stefano Branz on 17/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var travelsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        travelsTableView.dataSource = self
        travelsTableView.delegate = self
        view.backgroundColor = UIColor(red: 30, green: 59, blue: 119, alpha: 1.0)
    }

    

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "viagem \(indexPath.row)"
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self)?.first as? HomeTableViewHeader
        
        headerView?.viewConfigure()
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}
