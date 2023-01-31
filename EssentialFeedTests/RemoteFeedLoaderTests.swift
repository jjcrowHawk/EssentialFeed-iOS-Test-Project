//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Macbook Pro on 31/1/23.
//

import EssentialFeed
import XCTest

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let (_, client) = makeSUT()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_reqeustDataFromURL() {
        let url  = URL(string: "https://www.a-given-url.com")!
        let (sut, client) = makeSUT(url: url)
        
        sut.load()
        
        XCTAssertEqual(client.requestedURL, url)
    }
    
    func test_loadTwice_reqeustDataFromURLTwice() {
        let url  = URL(string: "https://www.a-given-url.com")!
        let (sut, client) = makeSUT(url: url)
        
        sut.load()
        sut.load()
        
        XCTAssertEqual(client.requestedURLs, [url, url])
    }
    
    private func makeSUT(url: URL = URL(string: "https://www.a-url.com")!) -> (sut: RemoteFeedLoader, client: HTTPClientSpy) {
        let client = HTTPClientSpy()
        let sut = RemoteFeedLoader(url: url, client: client)
        return (sut, client)
    }
    
    private class HTTPClientSpy: HTTPClient {
        var requestedURL: URL?
        var requestedURLs = [URL]()

        func get(from url: URL) {
            requestedURLs.append(url)
            requestedURL = url
        }
    }
}
