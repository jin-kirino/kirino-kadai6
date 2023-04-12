//
//  ContentView.swift
//  kirino-kadai6
//
//  Created by 神　樹里乃 on 2023/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var correctNumber: Int = Int.random(in: 1 ... 100)
    @State private var currentValue: Double = 50.0
    @State private var isShowingAlert: Bool = false
    @State private var alertMessage: String = ""

    var body: some View {
        VStack {
            Text("\(correctNumber)")
                .font(.largeTitle)
                .padding(.bottom, 70.0)
            Slider(value: $currentValue, in: 1...100)
            HStack {
                Text("1")
                Spacer()
                Text("100")
            }
            Button {
                isCheckedNumber()
            } label: {
                Text("判定！")
            }
            .padding(.top, 30.0)
            Spacer()
        }
        .alert("結果", isPresented: $isShowingAlert) {
            Button("再挑戦") {
                didTapRetryButtonAction()
            }
        } message: {
            Text("\(alertMessage)")
        }
        .padding()
    }

    private func isCheckedNumber() {
        isShowingAlert = true
        let roundNumber = round(currentValue)
        if roundNumber == Double(correctNumber) {
            alertMessage = "あたり！\nあなたの値：\(Int(roundNumber))"
        } else {
            alertMessage = "はずれ！\nあなたの値：\(Int(roundNumber))"
        }
    }

    private func didTapRetryButtonAction() {
        correctNumber = Int.random(in: 1...100)
        currentValue = 50.0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
