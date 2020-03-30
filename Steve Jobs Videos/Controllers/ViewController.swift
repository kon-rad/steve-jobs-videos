//
//  ViewController.swift
//  Steve Jobs Videos
//
//  Created by Konrad Gnat on 3/28/20.
//  Copyright © 2020 Konrad Gnat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden = true
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }

//    @IBAction func enterButtonPressed(_ sender: Any) {
//
//        performSegue(withIdentifier: "goToVideoList", sender: sender)
//    }
}

