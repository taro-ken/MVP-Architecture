//
//  Router.swift
//  MVP-Architecture
//
//  Created by 木元健太郎 on 2021/09/07.
//

import UIKit

final class Router {

  static let shared: Router = .init()
  private init() {}

  private (set) var window: UIWindow?

  // 起動直後の画面を表示する
  func showRoot(window: UIWindow?) {
    
    
      let vc = RootViewController.makeFromStoryboard()
      let nav = UINavigationController(rootViewController: vc)
      window?.rootViewController = nav
   
    window?.makeKeyAndVisible()
    self.window = window
  }
}

// MVP用の遷移
extension Router {
  static func showMVP(from: UIViewController) {
    let vc = UIStoryboard.githubSearchMVPViewController
    let presenter = GithubSearchPresenter(output: vc)
    vc.inject(presenter: presenter)
    from.show(next: vc)
  }

  static func showWebMVP(from: UIViewController, githubModel: GithubModel) {
    let vc = UIStoryboard.webMVPViewController
    let presenter = WebMVPPresenter(output: vc, githubModel: githubModel)
    vc.inject(presenter: presenter)
    from.show(next: vc)
  }
}

