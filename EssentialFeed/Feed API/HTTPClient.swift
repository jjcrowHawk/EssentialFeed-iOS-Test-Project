//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 4/2/23.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    
    /// The completion handler can be invoked in any thread
    /// Clients are responsible to dispatch to appropiate threads, if nedeed.
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
