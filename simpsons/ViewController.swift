//
//  ViewController.swift
//  simpsons
//
//  Created by Asit Aslan on 23.01.2021.
//  Copyright © 2021 Asit Aslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons  = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
      let homer = Simpson(simpsonName: "Homer", simpsonJob: "Nucler Safety", simpsonImage: UIImage(named: "homer.png")!)
      let bart = Simpson(simpsonName: "Bart", simpsonJob: "Student", simpsonImage: UIImage(named: "bart.png")!)
      let lisa = Simpson(simpsonName: "Lisa", simpsonJob: "Student", simpsonImage: UIImage(named: "Lisa.png")!)
      let marge = Simpson(simpsonName: "Marge", simpsonJob: "Housewife", simpsonImage: UIImage(named: "marge.png")!)
      let magie = Simpson(simpsonName: "Magie", simpsonJob: "Baby", simpsonImage: UIImage(named: "maggie.png")!)
      
        
        mySimpsons.append(homer)
        mySimpsons.append(bart)
        mySimpsons.append(marge)
        mySimpsons.append(magie)
        mySimpsons.append(lisa)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! detailViewController
            destinationVC.selectedSimpson = chosenSimpson
        }
        
    }
   
}

