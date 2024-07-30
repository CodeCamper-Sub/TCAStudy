//
//  TCAExampleApp.swift
//  TCAExample
//
//  Created by CodeCamper on 7/30/24.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCAExampleApp: App {
  static let store = Store(initialState: CounterFeature.State()) {
    CounterFeature()
      ._printChanges()
  }
  
    var body: some Scene {
        WindowGroup {
          CounterView(store: TCAExampleApp.store)
        }
    }
}
