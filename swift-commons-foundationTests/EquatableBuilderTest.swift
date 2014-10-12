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
   * Tests EquatableBuilder with Character values.
   */
  func testWithCharacters()
  {
    XCTAssert(
      EquatableBuilder().append(lhs: "a", rhs: "a").equals(),
      "Failed to return true from a builder with matching character values"
    )

    XCTAssert(
      !EquatableBuilder().append(lhs: "a", rhs: "b").equals(),
      "Failed to return false from a builder with non-matching character values"
    )
  }

  /**
   * Tests EquatableBuilder with Equatable values.
   */
  func testWithEquatables()
  {
    XCTAssert(
      EquatableBuilder().append(lhs: "match", rhs: "match").equals(),
      "Failed to return true from a builder with matching equatable values"
    )

    XCTAssert(
      !EquatableBuilder().append(lhs: "match", rhs: "no-match").equals(),
      "Failed to return false from a builder with non-matching equatable values"
    )
  }

  /**
   * Tests EquatableBuilder with Int values.
   */
  func testWithInts()
  {
    XCTAssert(
      EquatableBuilder().append(lhs: 1, rhs: 1).equals(),
      "Failed to return true from a builder with matching int values"
    )

    XCTAssert(
      !EquatableBuilder().append(lhs: 1, rhs: 2).equals(),
      "Failed to return false from a builder with non-matching int values"
    )
  }
}