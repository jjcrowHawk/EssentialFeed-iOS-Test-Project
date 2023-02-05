//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 30/1/23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
