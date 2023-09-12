//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 30/1/23.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
