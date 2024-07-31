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
  static let store = Store(initialState: AppFeature.State()) {
    AppFeature()
      ._printChanges()
  }
  
    var body: some Scene {
        WindowGroup {
          AppView(store: TCAExampleApp.store)
        }
    }
}
