//
//  HashableBuilder.swift
//  swift-commons-foundation
//
//  Created by Nick Holt on 12/10/2014.
//  Copyright (c) 2014 swift-commons. All rights reserved.
//

import Foundation

/**
 * A builder that accepts one or more values from which a hash-code is generated.
 */
class HashableBuilder: Hashable, Equatable
{
  let constant: Int = 37
  let shift: Int = 32

  var hashValue: Int = 17

  /**
   * Appends the value to this HashableBuilder.
   */
  func append<T: Hashable>(value: T) -> HashableBuilder
  {
    self.hashValue = self.hashValue * self.constant + ((Int)(value.hashValue ^ (value.hashValue >> shift)))
    return self
  }
}

/**
 * Compares one HashableBuilder to another for equality.
 */
func ==(lhs: HashableBuilder, rhs: HashableBuilder) -> Bool
{
  return EquatableBuilder()
    .append(lhs: lhs.constant, rhs: rhs.constant)
    .append(lhs: lhs.shift, rhs: rhs.shift)
    .append(lhs: lhs.hashValue, rhs: rhs.hashValue).equals
}