//
//  UIViewController+.swift
//  MVP-Architecture
//
//  Created by 木元健太郎 on 2021/09/07.
//

import UIKit

extension UIViewController {
  func show(next: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
    DispatchQueue.main.async {
      if let nav = self.navigationController {
        nav.pushViewController(next, animated: animated)
        completion?()
      } else {
        self.present(next, animated: animated, completion: completion)
      }
    }
  }
}
