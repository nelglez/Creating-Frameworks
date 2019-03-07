//
//  ViewController.swift
//  LoadingUIFrameworkDevelopment
//
//  Created by Nelson Gonzalez on 3/6/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    var loadingViewController = LoadingViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
       
     
        
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        loadingViewController = LoadingViewController()
      loadingViewController.modalPresentationStyle = .overCurrentContext
        present(loadingViewController, animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.loadingViewController.stopAnimation()
        }
        
    }
    
}

