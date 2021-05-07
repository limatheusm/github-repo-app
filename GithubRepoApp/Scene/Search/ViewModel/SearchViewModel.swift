//
//  SearchViewModel.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 06/05/21.
//

import Foundation

protocol SearchViewModelInput {
    func search(query: String)
}

protocol SearchViewModelOutput {
    var errorMessage: Observable<String?> { get }
    var repoCellViewModels: Observable<[RepoCellViewModel]> { get }
    var loading: Observable<Bool> { get }
}

protocol SearchViewModel: SearchViewModelInput & SearchViewModelOutput { }
