//
//  MainMoviesModel.swift
//  NewsAppSwiftUI
//
//  Created by Adkhamjon Rakhimov on 02/12/24.
//

import Foundation

struct MainMoviesModel: Codable {
    let status: String
    let totalResults: Int
    let results: [NewsItemModel]
    let nextPage: String
}
