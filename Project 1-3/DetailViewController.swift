//
//  DetailViewController.swift
//  Project 1-3
//
//  Created by Keertiraj Laxman Malik on 17/01/22.
//

import UIKit

class DetailViewController: UIViewController {
    var selectedFlag: String?

    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: selectedFlag!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
