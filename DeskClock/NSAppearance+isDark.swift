//
//  NSAppearance+isDark.swift
//  DeskClock
//
//  Created by Fernando Olivares on 12/15/20.
//  Copyright © 2020 Huy Tran. All rights reserved.
//

import AppKit

extension NSAppearance {
  public var isDarkMode: Bool {
     let isDarkMode: Bool

     if #available(macOS 10.14, *) {
        if self.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua {
           isDarkMode = true
        } else {
           isDarkMode = false
        }
      } else {
          isDarkMode = false
      }

      return isDarkMode
  }
}
