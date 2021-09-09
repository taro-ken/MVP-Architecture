//
//  RootViewController.swift
//  MVP-Architecture
//
//  Created by 木元健太郎 on 2021/09/07.
//

import UIKit

class RootViewController: UIViewController {
    
    static func makeFromStoryboard() -> RootViewController {
        let vc = UIStoryboard.rootViewController
        return vc
      }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func segueButton(_ sender: Any) {
        Router.showMVP(from: self)
    }
    
   
}
