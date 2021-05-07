//
//  SearchRepository.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 05/05/21.
//

import Foundation

enum SearchRepositoryError: Error, Equatable {
    case searching
    case generic(errorMessage: String)
}

typealias SearchRepositoryState = RepositoryState<SearchRepositoryError>

protocol SearchRepository {
    var repositories: Observable<[Repo]> { get }
    var state: Observable<SearchRepositoryState> { get }
    
    func search(with query: String)
}
