//
//  ContentView.swift
//  kirino-kadai6
//
//  Created by 神　樹里乃 on 2023/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var correctNumber: Int = 0
    @State private var currentValue: Double = 50.0

    var body: some View {
        VStack {
            Text("\(correctNumber)")
            Text("現在の値は、\(currentValue)")
                .font(.largeTitle)
            Slider(value: $currentValue,
                   in: 0 ... 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
