//
//  DefaultSearchViewModel.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 06/05/21.
//

import Foundation

class DefaultSearchViewModel: SearchViewModel {
    private let searchRepository: SearchRepository

    private weak var coordinator: SearchCoordinator?

    // MARK: - Output

    let errorMessage: Observable<String?> = .init(nil)
    let repoCellViewModels: Observable<[RepoCellViewModel]> = .init([])
    let loading: Observable<Bool> = .init(false)

    // MARK: - Object Lifecycle

    init(coordinator: SearchCoordinator, searchRepository: SearchRepository = DefaultSearchRepository()) {
        self.coordinator = coordinator
        self.searchRepository = searchRepository
        self.bind(to: searchRepository)
    }

    // MARK: - Setup

    private func bind(to searchRepository: SearchRepository) {
        searchRepository.repositories.addAndNotify(observer: self) { [weak self] repos in
            self?.onSearchRepositoryReposUpdate(repos)
        }
        searchRepository.state.addObserver(self) { [weak self] state in
            self?.onSearchRepositoryStateUpdate(state)
        }
    }

    // MARK: - SearchRepository Updates

    private func onSearchRepositoryReposUpdate(_ repos: [Repo]) {
        self.repoCellViewModels.value = repos.map { RepoCellViewModel(repo: $0) }
    }

    private func onSearchRepositoryStateUpdate(_ state: SearchRepositoryState) {
        self.loading.value = state == .loading

        switch state {
        case .error(let error):
            self.errorMessage.value = error.localizedDescription
        default:
            self.errorMessage.value = nil
        }
    }
}

// MARK: - Input

extension DefaultSearchViewModel {
    func search(query: String) {
        self.searchRepository.search(with: query)
    }
}
