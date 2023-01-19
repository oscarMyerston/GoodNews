//
//  Article.swift
//  GoodNews
//
//  Created by Oscar David Myerston Vega on 19/01/23.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
}

extension ArticlesList {
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2022-12-19&sortBy=publishedAt&apiKey=3ad904d51d564017850befd9e575d2d9")!
        return Resource(url: url)
    }()
}

struct Article: Decodable {
    let title: String
    let description: String?
}
