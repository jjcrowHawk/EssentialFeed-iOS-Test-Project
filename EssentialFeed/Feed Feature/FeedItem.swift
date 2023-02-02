//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 30/1/23.
//

import Foundation
public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
