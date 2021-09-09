//
//  WebMVPPresenter.swift
//  MVP-Architecture
//
//  Created by 木元健太郎 on 2021/09/07.
//

import Foundation

protocol WebMVPPresenterInput {
  func viewDidLoad()
}

protocol WebMVPPresenterOutput: AnyObject {
  func load(request: URLRequest)
}

final class WebMVPPresenter {
  private weak var output: WebMVPPresenterOutput!
  private var githubModel: GithubModel

  init(output: WebMVPPresenterOutput, githubModel: GithubModel) {
    self.output = output
    self.githubModel = githubModel
  }
}

extension WebMVPPresenter: WebMVPPresenterInput {
  func viewDidLoad() {
    guard let url = URL(string: githubModel.urlStr) else { return }
    output.load(request: URLRequest(url: url))
  }
}

