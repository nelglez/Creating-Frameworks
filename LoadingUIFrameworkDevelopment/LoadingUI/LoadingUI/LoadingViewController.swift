//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Nelson Gonzalez on 3/6/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    
   private var circle = IndeterminateLoadingView()
    

    override public func viewDidLoad() {
        super.viewDidLoad()
        
       setUp()
    }
    
    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        animate()
    }
    
    public func animate() {
        circle.startAnimating()
    }
    
    public func stopAnimation() {
        circle.stopAnimating()
         dismiss(animated: true)
    }
    
    
   public func setUp() {
        circle = IndeterminateLoadingView(frame: CGRect(x: view.center.x - 50, y: view.center.y - 175, width: 100, height: 100))
        circle.center = view.center
        circle.startAnimating()
        view.addSubview(circle)

    }

}
