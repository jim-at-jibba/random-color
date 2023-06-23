//
//  ColorsTableVCViewController.swift
//  random-color
//
//  Created by James Best on 23/06/2023.
//

import UIKit

class ColorsTableVCViewController: UIViewController {
    
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toDetails = "ToColorsDetailsVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
    }
   
    func createRandomColors() {
        for _ in 0..<50 {
            // .random() is the same as UIColor.random()
            colors.append(.random())
        }
    }
    
    
    // this is triggered by the prepareSegue below
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // This cast it to our ColorsDetailVC so that we now know that
        // we have a color property
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}

// extending is the same as having them above its just a bit cleaner
// Now all the tableView code is separate and cleaner
extension ColorsTableVCViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
   
    // delegate is a function that waits for an action. When that action happens this delegate function runs
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetails, sender: color)
    }
}
