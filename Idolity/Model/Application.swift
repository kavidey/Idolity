//
//  Application.swift
//  Idolity
//
//  Created by Kavi Dey on 6/17/22.
//

import Foundation

struct Application: Hashable, Codable {
    var id: Int
    var name: String
    var favorite: Bool
    var automaticallyUpdates: Bool
    var currentIcon: String
}
