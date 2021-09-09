//
//  WebMVPViewController.swift
//  MVP-Architecture
//
//  Created by 木元健太郎 on 2021/09/07.
//

import UIKit
import WebKit

final class WebMVPViewController: UIViewController {

  private var presenter: WebMVPPresenterInput!

  @IBOutlet private weak var webView: WKWebView!

  func inject(presenter: WebMVPPresenterInput) {
    self.presenter = presenter
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.viewDidLoad()
  }
}

extension WebMVPViewController: WebMVPPresenterOutput {
  func load(request: URLRequest) {
    self.webView.load(request)
  }
}
