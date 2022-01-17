//
//  ViewController.swift
//  Project 1-3
//
//  Created by Keertiraj Laxman Malik on 17/01/22.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Flag Viewer"
        // Do any additional setup after loading the view.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        print(items)
        for item in items {
            if item.hasSuffix("@2x.png"){
                pictures.append(item)
            }
        }
        print(pictures)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row].components(separatedBy: "@").first
        cell.imageView?.image = UIImage(named: pictures[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedFlag = pictures[indexPath.row]
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

