//
//  DefaultSearchRepository.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 06/05/21.
//

import Foundation

class DefaultSearchRepository: SearchRepository {
    private let dataSource: SearchDataSource
    
    let repositories: Observable<[Repo]> = .init([])
    let state: Observable<RepositoryState<SearchRepositoryError>> = .init(.idle)
    
    init(dataSource: SearchDataSource = RemoteSearchDataSource()) {
        self.dataSource = dataSource
    }
    
    func search(with query: String) {
        self.state.value = .loading
        self.dataSource.getRepos(with: query) { [weak self] result in
            switch result {
            case .failure(let error):
                self?.state.value = .error(.generic(errorMessage: error.localizedDescription))
            case .success(let repos):
                self?.repositories.value = repos
                self?.state.value = .idle
            }
        }
    }
}
