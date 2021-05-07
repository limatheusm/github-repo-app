//
//  SearchService.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 06/05/21.
//

import Foundation

protocol SearchService {
    func fetchRepos(with query: String, completion: @escaping (_ result: Result<SearchReposResponse, Error>) -> Void)
}
