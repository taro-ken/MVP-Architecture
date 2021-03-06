//
//  GithubModel.swift
//  MVP-Architecture
//
//  Created by 木元健太郎 on 2021/09/07.
//


import Foundation

struct GithubResponse: Codable {
  let items: [GithubModel]?
}

struct GithubModel: Codable {
  let id: Int
  let name: String
  private let fullName: String
  var urlStr: String { "https://github.com/\(fullName)" }

  enum CodingKeys: String, CodingKey {
    case id
    case name
    case fullName = "full_name"
  }
}

extension GithubModel {
  private static var jsonStr: String {
    """
    {
    "id": 999,
    "name": "test",
    "full_name": "sakiyamaK"
    }
    """
  }

  static var testData: GithubModel {
    try! JSONDecoder().decode(
      GithubModel.self,
      from:
      GithubModel.jsonStr.data(using: .utf8)!
    )
  }
}
