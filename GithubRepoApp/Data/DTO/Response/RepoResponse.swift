//
//  RepositoryResponse.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 05/05/21.
//

import Foundation

struct RepoResponse: Codable {
    let id: UInt64
    let name: String
    let fullName: String
    let owner: RepoOwnerResponse
    let url: String?
    let description: String?
    let language: String?
    let starsCount: Int
    
    private enum CodingKeys: String, CodingKey {
        case id, name, owner, description, language
        case fullName = "full_name"
        case url = "html_url"
        case starsCount = "stargazers_count"
    }
}

struct RepoResponseMapper: DTOMapper {
    static func map(_ dto: RepoResponse) -> Repo {
        var url: URL? = nil
        
        if let urlString = dto.url {
            url = URL(string: urlString)
        }
        
        return Repo(
            id: dto.id,
            name: dto.name,
            fullName: dto.fullName,
            owner: RepoOwnerResponseMapper.map(dto.owner),
            url: url,
            description: dto.description,
            language: dto.language,
            starsCount: dto.starsCount
        )
    }
}
