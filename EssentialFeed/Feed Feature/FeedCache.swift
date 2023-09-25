//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 25/9/23.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
