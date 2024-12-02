//
//  NewsListViewModel.swift
//  NewsAppSwiftUI
//
//  Created by Adkhamjon Rakhimov on 02/12/24.
//

import SwiftUI

struct NewsListScreen: View {
    
    @EnvironmentObject var viewModel: NewsListScreenViewModel
    
    var body: some View {
        
        ZStack {
            Color(UIColor.secondarySystemBackground).ignoresSafeArea()
            
            ListView
        }
        .navigationTitle("News")
    }
}

extension NewsListScreen {
    private var ListView: some View {
        ScrollView {
            VStack {
                ForEach(viewModel.newsList,id: \.articleID) { news in
                
                    NewsItemView(newsItem: news)
                    
                }
            }
        }
    }
}



#Preview {
    NavigationStack{
        NewsListScreen()
            
    }
    .environmentObject(NewsListScreenViewModel())
}
