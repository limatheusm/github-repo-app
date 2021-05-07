//
//  SearchReposResponse.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 05/05/21.
//

import Foundation

struct SearchReposResponse: Codable {
    let totalCount: Int?
    let incompleteResults: Bool?
    let items: [RepoResponse]
    
    private enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case items
        case incompleteResults = "incomplete_results"
    }
}
