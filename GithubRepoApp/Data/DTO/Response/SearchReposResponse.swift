//
//  SearchReposResponse.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 05/05/21.
//

import Foundation

struct SearchReposResponse: Codable {
    let totalCount: String
    let incompleteResults: Bool
    let items: [RepoResponse]

    private enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case incompleteResults = "incomplete_results"
        case items
    }
}
