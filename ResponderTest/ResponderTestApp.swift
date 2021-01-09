//
//  ResponderTestApp.swift
//  ResponderTest
//
//  Created by Legolas on 2021-01-08.
//

import SwiftUI
import ResponderChain

@main
struct ResponderTestApp: App {
    var body: some Scene {
        WindowGroup {
            ViewOne()
                .withResponderChainForCurrentWindow()
        }
    }
}
