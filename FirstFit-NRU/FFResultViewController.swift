//
//  FFResultViewController.swift
//  FirstFit-NRU
//
//  Created by Kalbek Saduakassov on 05.03.2021.
//

import UIKit

class FFResultViewController: UIViewController {

    static var inputArray = [Int]()
    static var blocksArray = [Int]()
    static var allocation = [Int]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
    }
    
    

}

extension FFResultViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FFResultViewController.inputArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.processNOlabel.text = "\(indexPath.row)"
        cell.inputLabel.text = "\(FFResultViewController.inputArray[indexPath.row])"
        cell.blockLabel.text = (FFResultViewController.allocation[indexPath.row] != -1) ? "\(FFResultViewController.allocation[indexPath.row] + 1)" : "-"
        return cell
    }
    
    
}
