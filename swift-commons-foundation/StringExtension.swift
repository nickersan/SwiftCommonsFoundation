//
//  StringExtension.swift
//  swift-commons-foundation
//
//  Created by Nick Holt on 11/10/2014.
//  Copyright (c) 2014 swift-commons. All rights reserved.
//

import Foundation

/**
 * Additional methods for Strings.
 */
extension String
{
  /**
   * Returns the length of the String.
   */
  func length() -> Int
  {
    return countElements(self)
  }
}