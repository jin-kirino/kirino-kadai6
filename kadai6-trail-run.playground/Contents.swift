import UIKit

// arc4random_uniform(_ __upper_bound: UInt32)
// Swift4.1以前の乱数生成方法

// 0から4を100回抽出
for _ in 0...100 {
    arc4random_uniform(5)
    print(arc4random_uniform(5))
}
print("-----------------------")
// 0から100を100回ランダムで抽出
for _ in 1...100 {
    arc4random_uniform(100)
    print(arc4random_uniform(100))
}

let num: Double = 5.6
let ceilNum = ceil(num)
let floorNum = floor(num)
let roundNum = round(num)
print(type(of: ceilNum))
print(type(of: floorNum))
print(type(of: roundNum))
print(roundNum)
