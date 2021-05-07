//
//  RepositoryState.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 06/05/21.
//

import Foundation

enum RepositoryState<ErrorType: Equatable>: Equatable {
    case idle
    case loading
    case error(_ error: ErrorType)
}
