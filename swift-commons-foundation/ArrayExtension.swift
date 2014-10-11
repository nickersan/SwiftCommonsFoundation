//
//  ArrayExtension.swift
//  swift-commons-foundation
//
//  Created by Nick Holt on 11/10/2014.
//  Copyright (c) 2014 swift-commons. All rights reserved.
//

import Foundation

/**
 * Additional methods for Arrays.
 */
extension Array
{
  /**
   * Iterates over the Array, invoking the closure for each element it contains.
   */
  func forEach(f: (element: T) -> Void)
  {
    for e in self
    {
      f(element: e)
    }
  }

  /**
   * Iterates over the Array, invoking the closure for each element it contains.
   */
  func forEach(f: (element: T) -> Bool) -> Bool
  {
    for e in self
    {
      if (!f(element: e))
      {
        return false
      }
    }

    return true
  }

  /**
   * Maps the content of the Array from one type to another.
   *
   * @return a new array containing the mapped results.
   */
  func map<R>(mapper: (element: T) -> R) -> [R]
  {
    var result: [R] = []
    self.forEach({(element: T) in result.append(mapper(element: element))})
    return result
  }

  /**
   * Reduces the content of the Array to a single value using the accumulator.
   *
   * @return the value created by passing each element in the array to the accumulator.
   */
  func reduce(identity: T, accumulator: (result: T, element: T) -> T) -> T
  {
    var result: T = identity
    self.forEach({(element) in result = accumulator(result: result, element: element)})
    return result
  }
}