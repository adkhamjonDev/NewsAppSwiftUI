//
//  ModelPreview.swift
//  NewsAppSwiftUI
//
//  Created by Adkhamjon Rakhimov on 02/12/24.
//

class ModelPreview {
    
    static let shared = ModelPreview()
    
    private init() {
        
    }
    
    
    let newsItem = NewsItemModel(
        articleID: "af8e9ee365cf2e5bff23036c095c605e",
        title: "Anker 737 power bank with 24,000 mAh capacity drops to lowest price ever on Amazon",
        link: "https://www.notebookcheck.net/Anker-737-power-bank-with-24-000-mAh-capacity-drops-to-lowest-price-ever-on-Amazon.926343.0.html",
        keywords: ["news"],
        creator: ["Sambit Saha"],
        videoURL: nil,
        description: "Deal | The Anker 737 power bank is an pretty well-reviewed product from an equally well-reputed company. With a capacity of 24,000 mAh, the Anker 737 can charge up essential devices multiple times, and its 140 W maximum output makes sure that it's blisteringly fast while doing so.",
        content: "ONLY AVAILABLE IN PAID PLANS",
        pubDate: "2024-12-01 20:58:00",
        pubDateTZ: "UTC",
        imageURL: "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc4/anker_737_power_bank_deal_amazon_us_cyber_monday.PNG",
        sourceID: "notebookcheck",
        sourcePriority: 19244,
        sourceName: "Notebookcheck",
        sourceURL: "https://www.notebookcheck.net/",
        sourceIcon: "https://i.bytvi.com/domain_icons/notebookcheck.png",
        language: "english",
        country: ["united states of america"],
        category: ["top"],
        aiTag: "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLANS",
        sentiment: "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLANS",
        sentimentStats: "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLANS",
        aiRegion: "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLANS",
        aiOrg: "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLANS",
        duplicate: false
    )
}
