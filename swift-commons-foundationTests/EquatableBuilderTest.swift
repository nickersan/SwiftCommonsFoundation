//
//  EquatableBuilderTest.swift
//  swift-commons-foundation
//
//  Created by Nick Holt on 11/10/2014.
//  Copyright (c) 2014 swift-commons. All rights reserved.
//

import Foundation
import XCTest

/**
 * Test cases for EquatableBuilder.
 */
class EquatableBuilderTest: XCTestCase
{
  /**
   * Tests that an empty EquatableBuilder returns true from the equals method.
   */
  func testEmptyBuilder()
  {
    XCTAssert(
      EquatableBuilder().equals(),
      "Failed to return true from an empty builder"
    )
  }

  /**
   * Tests EquatableBuilder with String values.
   */
  func testWithStrings()
  {
    XCTAssert(
      EquatableBuilder().append(s1: "match", s2: "match").equals(),
      "Failed to return true from a builder with matching string values"
    )

    XCTAssert(
      !EquatableBuilder().append(s1: "match", s2: "no-match").equals(),
      "Failed to return false from a builder with non-matching string values"
    )
  }
}