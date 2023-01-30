//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 30/1/23.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
