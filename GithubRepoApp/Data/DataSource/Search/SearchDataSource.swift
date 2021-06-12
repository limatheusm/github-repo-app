//
//  SearchDataSource.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 06/05/21.
//

import Foundation

protocol SearchDataSource {
    func getRepos(with query: String, completion: @escaping (_ result: Result<[RepoResponse], Error>) -> Void)
}
