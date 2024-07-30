//
//  ContentView.swift
//  TCAExample
//
//  Created by CodeCamper on 7/30/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    var body: some View {
      CounterView(store: Store(initialState: CounterFeature.State()) {
        CounterFeature()
      })
    }
}

#Preview {
    ContentView()
}
