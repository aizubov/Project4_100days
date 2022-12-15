//
//  InitialViewController.swift
//  Project4_100days
//
//  Created by user226947 on 12/15/22.
//

import Foundation
import UIKit


class InitialViewController: UITableViewController {
    var websites = ["apple.com", "google.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Start pages"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.websites = websites
        vc.displayWebsite = indexPath.row

        navigationController?.pushViewController(vc, animated: true)
    }
    
}
