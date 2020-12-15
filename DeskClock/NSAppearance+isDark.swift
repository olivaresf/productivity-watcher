//
//  NSView+isDark.swift
//  DeskClock
//
//  Created by Fernando Olivares on 12/15/20.
//  Copyright © 2020 Huy Tran. All rights reserved.
//

import AppKit

extension NSView {
    var isDarkMode: Bool {
        if #available(OSX 10.14, *) {
            return effectiveAppearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
        }
        return false
    }
}
//
//extension NSTextField {
//    var isDarkMode: Bool {
//        if #available(OSX 10.14, *) {
//            return effectiveAppearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
//        }
//        return false
//    }
//}
