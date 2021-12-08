//
//  main.swift
//  3x+1
//
//  Created by bryan stober on 12/7/21.
//

import Foundation
import NumberKit

func threeX(_ num: inout BigInt) -> BigInt {
    let original = num
    if num == 1 {
        return num
    }
    else if num > Int.max { /// having trouble finding a value to compare here
        print("You found it \(original)")
        return original
    }

    if num % 2 == 0 {
        num = num / 2
    }
    else {
        num = (num * 3) + 1
    }
//    print(num)
    return threeX(&num)
}
//1152921504606847000..<Int.max
for i in 1152921504606948113..<2152921504606847000 {
    var val = BigInt(i)
    print("completed \(i) \(threeX(&val))")
}

