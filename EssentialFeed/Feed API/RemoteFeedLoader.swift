//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 31/1/23.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL)
}


public final class RemoteFeedLoader {
    private let client: HTTPClient
    private let url: URL
    
    public init (url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load() {
        client.get(from: url)
    }
}