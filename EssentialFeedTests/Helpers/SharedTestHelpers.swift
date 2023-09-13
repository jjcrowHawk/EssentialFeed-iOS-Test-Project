//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Macbook Pro on 6/9/23.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
