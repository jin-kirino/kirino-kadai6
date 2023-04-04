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
    @State private var isShowingAlert: Bool = false
    @State private var alertMessage: String = ""

    var body: some View {
        VStack {
            Text("\(correctNumber)")
                .font(.largeTitle)
                .padding(.bottom, 70.0)
            Text("現在の値は、\(currentValue)")
            Slider(value: $currentValue, in: 0...100)
            HStack {
                Text("1")
                Spacer()
                Text("100")
            }
            Button {
                print("判定ボタンがタップされたよ！")
                print("正解の値：\(correctNumber)")
                print("スライダーの値：\(currentValue)")
                isShowingAlert = true
            } label: {
                Text("判定！")
            }
            .padding(.top, 30.0)
            Spacer()
        }
        .alert("結果", isPresented: $isShowingAlert) {
            Button("再挑戦") {
                correctNumber = Int.random(in: 0 ..< 100)
            }
        } message: {
            Text("\(alertMessage)")
        }
        .padding()
        .onAppear {
            correctNumber = Int.random(in: 1 ... 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
