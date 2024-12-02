//
//  NewsItemView.swift
//  NewsAppSwiftUI
//
//  Created by Adkhamjon Rakhimov on 02/12/24.
//

import SwiftUI

struct NewsItemView: View {
    let newsItem: NewsItemModel
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Rectangle()
                .fill(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 130)
                .overlay {
                    AsyncImage(
                        url: URL(string: newsItem.imageURL ?? "")) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity)
                                .frame(maxWidth: .infinity)
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(height: 130)
                        .clipped()
                }
            
            VStack(alignment: .leading, spacing: 0.0) {
                Text(newsItem.title)
                    .font(.headline)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)

                Text(newsItem.description ?? "")
                    .font(.subheadline)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 4)
                
                Text("Date: \(newsItem.pubDate ?? "")")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.top, 4)
            }
            .foregroundColor(.black)
            .padding()
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

#Preview {
    ZStack {
        Color(UIColor.secondarySystemBackground).ignoresSafeArea()
        ScrollView {
            LazyVStack {
                ForEach(0..<4) { item in
                    
                    NewsItemView(newsItem: ModelPreview.shared.newsItem)
                }
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NewsItemView(newsItem: ModelPreview.shared.newsItem)
}
