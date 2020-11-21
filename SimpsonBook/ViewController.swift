//
//  ViewController.swift
//  SimpsonBook
//
//  Created by RIDVAN on 21.11.2020.
//  Copyright © 2020 ridvanmertoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myPlayers = [Players]()
    var chosenPlayers : Players?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        //Playerobjects
        let ronaldo = Players(playerName: "Ronaldo", playerTeam: "Juventus", playerImage: UIImage(named: "ronaldo")!)
        let messi = Players(playerName: "Messi", playerTeam: "Barcelona", playerImage: UIImage(named: "messi")!)
        let drogba = Players(playerName: "Drogba", playerTeam: "Galatasaray", playerImage: UIImage(named: "drogba")!)
        let sneijder = Players(playerName: "Sneijder", playerTeam: "Galatasaray", playerImage: UIImage(named: "sneijder")!)
        let alex = Players(playerName: "Alex", playerTeam: "Fenerbahçe", playerImage: UIImage(named: "alex")!)
        
        myPlayers.append(ronaldo)
        myPlayers.append(messi)
        myPlayers.append(drogba)
        myPlayers.append(sneijder)
        myPlayers.append(alex)
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myPlayers[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPlayers.count
    }
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenPlayers = myPlayers[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedPlayers = chosenPlayers
        }
        
    }
}

