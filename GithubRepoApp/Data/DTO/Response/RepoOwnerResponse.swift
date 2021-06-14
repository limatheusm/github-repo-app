//
//  RepoOwnerResponse.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 05/05/21.
//

import Foundation

struct RepoOwnerResponseMapper: DTOMapper {
    static func map(_ dto: RepoOwnerResponse) -> RepoOwner {
        RepoOwner(avatarUrl: URL(string: dto.avatarUrl), login: dto.login)
    }
}

struct RepoOwnerResponse: Codable {
    let avatarUrl: String
    let login: String

    private enum CodingKeys: String, CodingKey {
        case login
        case avatarUrl = "avatar_url"
    }
}
