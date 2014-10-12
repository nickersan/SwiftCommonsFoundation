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
   * Appends the Characters to this EquatableBuilder so that they will be compared with:
   *
   * @code lhs == rhs
   */
  func append(#lhs: Character, rhs: Character) -> EquatableBuilder
  {
    self.equatablePairs.append({lhs == rhs})
    return self;
  }

  /**
   * Appends the Ints to this EquatableBuilder so that they will be compared with:
   *
   * @code lhs == rhs
   */
  func append(#lhs: Int, rhs: Int) -> EquatableBuilder
  {
    self.equatablePairs.append({lhs == rhs})
    return self;
  }

  /**
   * Appends the Strings to this EquatableBuilder so that they will be compared with:
   *
   * @code lhs == rhs
   */
  func append<T: Equatable>(#lhs: T, rhs: T) -> EquatableBuilder
  {
    self.equatablePairs.append({lhs == rhs})
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