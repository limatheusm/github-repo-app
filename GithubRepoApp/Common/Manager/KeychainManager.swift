//
//  KeychainManager.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 04/05/21.
//

import Foundation
import KeychainSwift

struct KeychainManager {
    private static let keychain = KeychainSwift()
    private static let encoder = JSONEncoder()
    private static let decoder = JSONDecoder()

    private init() { }

    static func set<T: Codable>(_ value: T, forKey: String) -> Bool {
        guard let data = try? self.encoder.encode(value) else {
            return false
        }

        self.keychain.set(data, forKey: forKey)
        return true
    }

    static func get<T: Codable>(_ key: String) -> T? {
        guard let data = self.keychain.getData(key) else {
            return nil
        }

        return try? self.decoder.decode(T.self, from: data)
    }
}
