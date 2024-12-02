//
//  NewsDataService.swift
//  NewsAppSwiftUI
//

//  Created by Adkhamjon Rakhimov on 02/12/24.
//
import Foundation
import Combine

class NewsDataService {
    
    @Published var newsList: [NewsItemModel] = []
    
    private var newsSubscription: AnyCancellable?
    
    init() {
        getNewsList()
    }
    
    func getNewsList() {
        let url = URL(string: HttpRoutes.shared.newsList)
        guard let url = url else { return }
        newsSubscription = NetworkingManager.download(url: url)
            .decode(type: MainMoviesModel.self, decoder: JSONDecoder())
            .sink { (completion) in
                NetworkingManager.handleCompletion(completion: completion)
            
            } receiveValue: { [weak self] (mainResponse) in
                self?.newsList = mainResponse.results
                self?.newsSubscription?.cancel()
            }
    }

    
}
