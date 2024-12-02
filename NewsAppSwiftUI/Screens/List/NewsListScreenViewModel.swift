//
//  NewsListScreenViewModel.swift
//  NewsAppSwiftUI
//
//  Created by Adkhamjon Rakhimov on 02/12/24.
//

import Foundation
import Combine

class NewsListScreenViewModel: ObservableObject {
    
    @Published var newsList: [NewsItemModel] = []
    
    private let newsDataService = NewsDataService()
    
    
    private var cancellables = Set<AnyCancellable>()

    init() {
        getNewsList()
    }
    
    private func getNewsList() {

        newsDataService
            .$newsList.sink { [weak self] (news) in
                self?.newsList = news
                print("NEWS = \(news)")
            }
            .store(in: &cancellables)
           
    }
    
}
