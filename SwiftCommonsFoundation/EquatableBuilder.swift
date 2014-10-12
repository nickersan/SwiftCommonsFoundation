//
//  EquatableBuilder.swift
//  swift-commons-foundation
//
//  Created by Nick Holt on 11/10/2014.
//  Copyright (c) 2014 swift-commons. All rights reserved.
//

import Foundation

/**
 * A builder that accepts one or more value pairs that are then compared for equality
 */
class EquatableBuilder
{
  /**
   * The current state of the builder with the values appended to it.
   */
  var equals: Bool = true

  /**
   * Appends the Characters to this EquatableBuilder so that they will be compared with:
   *
   * @code lhs == rhs
   */
  func append(#lhs: Character?, rhs: Character?) -> EquatableBuilder
  {
    self.equals = self.equals && (lhs == rhs)
    return self;
  }

  /**
   * Appends the Ints to this EquatableBuilder so that they will be compared with:
   *
   * @code lhs == rhs
   */
  func append(#lhs: Int?, rhs: Int?) -> EquatableBuilder
  {
    self.equals = self.equals && (lhs == rhs)
    return self;
  }

  /**
   * Appends the Strings to this EquatableBuilder so that they will be compared with:
   *
   * @code lhs == rhs
   */
  func append<T: Equatable>(#lhs: T?, rhs: T?) -> EquatableBuilder
  {
    self.equals = self.equals && (lhs == rhs)
    return self;
  }
}