//
//  NewsAppSwiftUIApp.swift
//  NewsAppSwiftUI
//
//  Created by Adkhamjon Rakhimov on 02/12/24.
//

import SwiftUI

@main
struct NewsAppSwiftUIApp: App {
    @StateObject private var vm = NewsListScreenViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                NewsListScreen()
            }
            .environmentObject(vm)
        }
    }
}
