//
//  RemoteSearchDataSource.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 06/05/21.
//

import Foundation

class RemoteSearchDataSource: SearchDataSource {
    private let service: SearchService
    
    init(service: SearchService = RemoteSearchService()) {
        self.service = service
    }
    
    func getRepos(with query: String, completion: @escaping (Result<[RepoResponse], Error>) -> Void) {
        self.service.fetchRepos(with: query) { result in
            switch result {
            case .failure(let error):
                completion(.failure(error))
            case .success(let searchReposResponse):
                let repos = searchReposResponse.items
                completion(.success(repos))
            }
        }
    }
}
