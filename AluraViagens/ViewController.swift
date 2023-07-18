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
