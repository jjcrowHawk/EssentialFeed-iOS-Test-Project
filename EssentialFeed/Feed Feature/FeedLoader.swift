//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 30/1/23.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
