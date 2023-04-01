//
//  ContentView.swift
//  kirino-kadai6
//
//  Created by 神　樹里乃 on 2023/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var correctNumber: Int = 33
    @State private var currentValue: Double = 50.0

    var body: some View {
        VStack {
            Text("\(correctNumber)")
                .font(.largeTitle)
                .padding(.bottom, 70.0)
//            Text("現在の値は、\(currentValue)")
            Slider(value: $currentValue, in: 0 ... 100)
            HStack {
                Text("1")
                Spacer()
                Text("100")
            }
            Button {
                print("判定ボタンがタップされたよ！")
            } label: {
                Text("判定！")
            }
            .padding(.top, 30.0)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
