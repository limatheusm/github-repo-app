//
//  DefaultSearchService.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 06/05/21.
//

import Foundation
import Moya

class DefaultSearchService: SearchService {
    private let provider = MoyaProvider<GithubAPI>()
    
    func fetchRepos(with query: String, completion: @escaping (Result<SearchReposResponse, Error>) -> Void) {
        self.provider.request(.searchRepositories(query: query)) { result in
            do {
                switch result {
                case .failure(let error):
                    throw error
                case .success(let response):
                    let repoResponse = try response.map(SearchReposResponse.self)
                    completion(.success(repoResponse))
                }
            } catch {
                completion(.failure(error))
            }
        }
    }
}
