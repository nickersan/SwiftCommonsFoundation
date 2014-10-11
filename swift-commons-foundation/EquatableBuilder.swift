//
//  EquatableBuilder.swift
//  swift-commons-foundation
//
//  Created by Nick Holt on 11/10/2014.
//  Copyright (c) 2014 swift-commons. All rights reserved.
//

import Foundation

/**
 * A builder that accepts one or more value pairs, that are then compared for equality when the equals method is called
 */
class EquatableBuilder
{
  var equatablePairs: [(() -> Bool)] = []

  /**
   * Appends the Strings to this EquatableBuilder so that they will be compared with:
   *
   * @code s1 == s2
   */
  func append(#s1: String, s2: String) -> EquatableBuilder
  {
    self.equatablePairs.append({s1 == s2})
    return self;
  }

  /**
   * Calculates equality based on the pair previously added to this EquatableBuilder.
   *
   * @return true if all the pairs added to the EquatableBuilder are 'equal'; otherwise false.
   */
  func equals() -> Bool
  {
    return equatablePairs.forEach({(element: (() -> Bool)) -> Bool in return element()})
  }
}