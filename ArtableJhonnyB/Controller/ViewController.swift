//
//  ViewController.swift
//  ArtableJhonnyB
//
//  Created by junaid on 10/05/2019.
//  Copyright © 2019 junaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let storyBoard = UIStoryboard(name: Storyboard.LoginStoryBoard, bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: StoryboardID.LoginVC)
        present(vc, animated: true, completion: nil)
    }

}

