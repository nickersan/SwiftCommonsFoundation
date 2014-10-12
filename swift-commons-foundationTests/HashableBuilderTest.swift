//
//  HashableBuilderTest.swift
//  swift-commons-foundation
//
//  Created by Nick Holt on 12/10/2014.
//  Copyright (c) 2014 swift-commons. All rights reserved.
//

import Foundation
import XCTest

/**
 * Test cases for HashableBuilder
 */
class HashableBuilderTest: XCTestCase
{
  /**
   * Tests HashableBuilder with a Hashable value.
   */
  func testWithHashable()
  {
    var s: String = "test"
    println(HashableBuilder().append(s).hashValue)
    XCTAssert(HashableBuilder().append(s).hashValue == 4799450060782795057, "Failed to return expected hash value")
  }
}