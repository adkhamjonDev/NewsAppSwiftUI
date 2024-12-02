//
//  Http.swift
//  NewsAppSwiftUI
//
//  Created by Adkhamjon Rakhimov on 02/12/24.
//

import Foundation

class HttpRoutes {
    static let shared = HttpRoutes()

    private init() {}

    let BASE_URL = "https://newsdata.io/api/1/"
    let API_KEY = "pub_61047980b1417ecf7066ae511917c70b114e1"
    let latest = "latest?"

    var newsList: String {
        return BASE_URL + latest + "apikey=" + API_KEY
    }
}

