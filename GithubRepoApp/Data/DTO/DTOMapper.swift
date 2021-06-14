//
//  DTOMapper.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 05/05/21.
//

import Foundation

protocol DTOMapper {
    associatedtype DataModel
    associatedtype DomainModel

    static func map(_ dto: DataModel) -> DomainModel
}
