//
//  GithubTableViewCell.swift
//  MVP-Architecture
//
//  Created by 木元健太郎 on 2021/09/07.
//

import UIKit

final class GithubTableViewCell: UITableViewCell {

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet private weak var urlLabel: UILabel!

  func configure(githubModel: GithubModel) {
    titleLabel.text = githubModel.name
    urlLabel.text = githubModel.urlStr
  }
}
