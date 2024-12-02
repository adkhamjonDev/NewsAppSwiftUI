//
//  NewsDetailsScreen.swift
//  NewsAppSwiftUI
//
//  Created by Adkhamjon Rakhimov on 02/12/24.
//

import SwiftUI

struct NewsDetailsScreen: View {
    
    let newsItem: NewsItemModel
    
    
    var body: some View {
        ZStack {
            Color(UIColor.secondarySystemBackground)
            
            ScrollView {
                VStack {
                    imageSection
                    textSection
                }
            }
            .scrollIndicators(.hidden)
        }
        .ignoresSafeArea()
    }
}

extension NewsDetailsScreen {
    private var imageSection: some View {
        Rectangle()
            .fill(.white)
            .frame(maxWidth: .infinity)
            .frame(height: UIScreen.main.bounds.height / 2.7)
            .overlay {
                AsyncImage(
                    url: URL(string: newsItem.imageURL ?? "")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: .infinity)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(height: UIScreen.main.bounds.height / 2.7)
                    .clipped()
            }
    }
    
    private var textSection: some View {
        VStack(alignment: .leading) {
            Text(newsItem.title)
                .font(.headline)
            Text(newsItem.description ?? "")
                .font(.subheadline)
                .padding(.top,2)
            
            Text("Published data: \(newsItem.pubDate ?? "")")
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.top,2)
            
            Link("Open Link 📰", destination: URL(string: newsItem.sourceURL)!)
                .padding(.top,4)
        }
        .padding(.horizontal)
    }
}

#Preview {
    NewsDetailsScreen(newsItem: ModelPreview.shared.newsItem)
}
