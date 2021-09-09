//
//  Storyboard+.swift
//  MVP-Architecture
//
//  Created by 木元健太郎 on 2021/09/07.
//

import UIKit

extension UIStoryboard {
  static var rootViewController: RootViewController {
    UIStoryboard(name: "Root", bundle: nil).instantiateInitialViewController() as! RootViewController
  }
}

extension UIStoryboard {
  static var githubSearchMVPViewController: GithubSearchMVPViewController {
    UIStoryboard(name: "GithubSearchMVP", bundle: nil).instantiateInitialViewController() as! GithubSearchMVPViewController
  }

  static var webMVPViewController: WebMVPViewController {
    UIStoryboard(name: "WebMVP", bundle: nil).instantiateInitialViewController() as! WebMVPViewController
  }
}
