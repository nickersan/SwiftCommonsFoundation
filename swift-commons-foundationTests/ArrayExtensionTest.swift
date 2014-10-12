//
//  ArrayExtensionTest.swift
//  swift-commons-foundation
//
//  Created by Nick Holt on 11/10/2014.
//  Copyright (c) 2014 swift-commons. All rights reserved.
//

import Foundation
import XCTest

/**
 * Test cases for ArrayExtension.
 */
class ArrayExtensionTest
{
  /**
   * Tests a call to Array.forEach invokes the closure for each element in the array.
   */
  func testForEach()
  {
    let strings: [String] = ["a", "b", "c"]
    var s: String = ""

    strings.forEach({(element: String) in s += element})

    XCTAssert(
      s == "abc",
      "Failed to iterate over the elements in the Array"
    )
  }

  /**
   * Tests a call to Array.forEach invokes the closure for each element in the array until the closure returns false.
   */
  func testForEachWithBreak()
  {
    let strings: [String] = ["a", "b", "c"]
    var s: String = ""

    strings.forEach(
      {
        (element: String) -> Bool in
          s += element
          return s.length() < 2
      }
    )

    XCTAssert(
      s == "ab",
      "Failed to iterate over the elements in the Array and break when told to"
    )
  }

  /**
   * Tests a call to Array.reduce returns the expect result.
   */
  func testReduce()
  {
    let ints: [Int] = [1, 2, 3]
    XCTAssert(
      10 == ints.reduce(4, {(result: Int, element: Int) -> Int in result + element}),
      "Failed to reduce to expected value"
    )
  }
 }