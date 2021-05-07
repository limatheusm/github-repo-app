//
//  Repo.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 05/05/21.
//

import Foundation

struct Repo {
    let id: UInt64
    let name: String
    let fullName: String
    let owner: RepoOwner
    let url: URL?
    let description: String?
    let language: String?
    let starsCount: Int
}
