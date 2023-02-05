//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 4/2/23.
//

import Foundation

internal final class FeedItemsMapper {
    
    private struct Root: Decodable {
        let items: [Item]
        
        var feed: [FeedItem] {
            return items.map{ $0.item }
        }
    }
    
    private struct Item: Decodable {
        let id: UUID
        let description: String?
        let location: String?
        let image: URL
        
        var item: FeedItem {
            return FeedItem(id: id, description: description, location: location, imageURL: image)
        }
    }
    
    static var STATUS_OK: Int { return 200 }
    
    static func map(_ data: Data, _ response: HTTPURLResponse) -> RemoteFeedLoader.Result {
        guard response.statusCode == STATUS_OK, let root = try? JSONDecoder().decode(Root.self, from: data)  else {
            return .failure(.invalidData)
        }
        
        return .success(root.feed)
    }
}
