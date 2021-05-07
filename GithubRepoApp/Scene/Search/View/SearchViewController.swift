//
//  SearchViewController.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 02/05/21.
//

import UIKit

class SearchViewController: UIViewController, ViewModelBindable {
    var viewModel: SearchViewModel?
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Setup
    
    func bindViewModel() {
        self.viewModel?.loading.addObserver(self, observerBlock: { [weak self] isLoading in
            self?.onViewModelLoadingUpdate(isLoading)
        })
        self.viewModel?.repoCellViewModels.addObserver(self, observerBlock: { [weak self] repoCellViewModels in
            self?.onViewModelRepoCellViewModelsUpdate(repoCellViewModels)
        })
    }
    
    // MARK: - ViewModel Updates
    
    private func onViewModelLoadingUpdate(_ isLoading: Bool) {
        // TODO: Implement this [ML]
    }
    
    private func onViewModelRepoCellViewModelsUpdate(_ repoCellViewModels: [RepoCellViewModel]) {
        // TODO: Implement this [ML]
    }
}
