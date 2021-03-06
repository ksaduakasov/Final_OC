//
//  ViewController.swift
//  FirstFit-NRU
//
//  Created by Kalbek Saduakassov on 05.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var blocksLabel: UITextField!
    @IBOutlet weak var inputLabel: UITextField!
    var blocksArray = [Int]()
    var inputArray = [Int]()
    var allocation = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    fileprivate func calculateFF() {
        //initialize blocks array
        let tempArray1 = blocksLabel.text!.components(separatedBy: " ")
        blocksArray = tempArray1.map { Int($0)!}
        
        //initialize input array
        let tempArray2 = inputLabel.text!.components(separatedBy: " ")
        inputArray = tempArray2.map { Int($0)!}
        

        for _ in 0..<blocksArray.count {
            allocation.append(-1)
        }
        
        for i in 0..<inputArray.count {
            for j in 0..<blocksArray.count {
                if (blocksArray[j] >= inputArray[i]) {
                    allocation[i] = j;
                    blocksArray[j] -= inputArray[i];
                    break;
                }
            }
        }
        
        print(" Process No. Process Size      Block no.")
        for i in 0 ..< inputArray.count {
            print(" ", i + 1, "         ", inputArray[i],
                  "             ", (allocation[i] != -1) ? allocation[i] + 1 : "N/A")
            
        }
    }
    
    @IBAction func goButton(_ sender: Any) {
        calculateFF()
        FFResultViewController.inputArray = inputArray
        FFResultViewController.blocksArray = blocksArray
        FFResultViewController.allocation = allocation
        let vc = storyboard?.instantiateViewController(withIdentifier: "ffresvc") as! FFResultViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

