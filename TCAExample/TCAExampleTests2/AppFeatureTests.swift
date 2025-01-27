//
//  AppFeatureTests.swift
//  TCAExampleTests2
//
//  Created by 한경수 on 7/31/24.
//

import ComposableArchitecture
import XCTest

@testable import TCAExample

@MainActor
final class AppFeatureTests: XCTestCase {
  func testIncrementInFirstTab() async {
    let store = TestStore(initialState: AppFeature.State()) {
      AppFeature()
    }
    
    await store.send(\.tab1.incrementButtonTapped) {
      $0.tab1.count = 1
    }
  }
}
