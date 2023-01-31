//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Macbook Pro on 31/1/23.
//

import Foundation
import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://www.a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    
    private init() {
        
    }
    
    var requestedURL: URL?
    
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_reqeustDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
}
