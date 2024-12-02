//
//  NewsListModel.swift
//  NewsAppSwiftUI
//
//  Created by Adkhamjon Rakhimov on 02/12/24.
//

import Foundation

struct NewsItemModel: Codable {
    let articleID, title: String
    let link: String
    let keywords, creator: [String]?
    let videoURL: String?
    let description, content, pubDate, pubDateTZ: String?
    let imageURL: String?
    let sourceID: String
    let sourcePriority: Int
    let sourceName: String
    let sourceURL: String
    let sourceIcon: String?
    let language: String
    let country, category: [String]
    let aiTag, sentiment, sentimentStats, aiRegion: String
    let aiOrg: String
    let duplicate: Bool

    enum CodingKeys: String, CodingKey {
        case articleID = "article_id"
        case title, link, keywords, creator
        case videoURL = "video_url"
        case description, content, pubDate, pubDateTZ
        case imageURL = "image_url"
        case sourceID = "source_id"
        case sourcePriority = "source_priority"
        case sourceName = "source_name"
        case sourceURL = "source_url"
        case sourceIcon = "source_icon"
        case language, country, category
        case aiTag = "ai_tag"
        case sentiment
        case sentimentStats = "sentiment_stats"
        case aiRegion = "ai_region"
        case aiOrg = "ai_org"
        case duplicate
      }
}
