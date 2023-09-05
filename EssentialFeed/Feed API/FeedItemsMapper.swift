//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 4/2/23.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}

internal final class FeedItemsMapper {
    
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    
    static var STATUS_OK: Int { return 200 }
    
    static func map(_ data: Data, _ response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.statusCode == STATUS_OK, let root = try? JSONDecoder().decode(Root.self, from: data)  else {
            throw RemoteFeedLoader.Error.invalidData
        }
        
        return root.items
    }
}
