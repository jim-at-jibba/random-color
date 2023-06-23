//
//  ColorsTableVCViewController.swift
//  random-color
//
//  Created by James Best on 23/06/2023.
//

import UIKit

class ColorsTableVCViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    


}

// extending is the same as having them above its just a bit cleaner
// Now all the tableView code is separate and cleaner
extension ColorsTableVCViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
   
    // delegate is a function that waits for an action. When that action happens this delegate function runs
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailsVC", sender: nil)
    }
}
