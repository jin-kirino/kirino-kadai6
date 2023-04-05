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
            Slider(value: $currentValue, in: 0...100)
            HStack {
                Text("1")
                Spacer()
                Text("100")
            }
            Button {
                isShowingAlert = true
                isCheckedNumber()
            } label: {
                Text("判定！")
            }
            .padding(.top, 30.0)
            Spacer()
        }
        .alert("結果", isPresented: $isShowingAlert) {
            Button("再挑戦") {
                correctNumber = Int.random(in: 0 ..< 100)
                currentValue = 50.0
            }
        } message: {
            Text("\(alertMessage)")
        }
        .padding()
        .onAppear {
            correctNumber = Int.random(in: 1 ... 100)
        }
    }

    private func isCheckedNumber() {
        let roundNumber = round(currentValue)
        if roundNumber == Double(correctNumber) {
            alertMessage = "あたり！\nあなたの値：\(Int(roundNumber))"
        } else {
            alertMessage = "はずれ！\nあなたの値：\(Int(roundNumber))"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
