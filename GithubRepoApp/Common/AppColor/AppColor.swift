//
//  AppColor.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 03/05/21.
//

import Foundation
import UIKit

enum AppColor: String {
    case black
    case darkGray
    case lightGray
    case white

    var color: UIColor {
        UIColor(named: self.rawValue) ?? .black
    }
}
