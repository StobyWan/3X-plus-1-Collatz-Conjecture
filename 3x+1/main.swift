//
//  main.swift
//  3x+1
//
//  Created by bryan stober on 12/7/21.
//

import Foundation

func threeX(_ num: inout Int) -> Int {
    let original = num
    if num == 1 {
        return num
    }
    else if num == Int.max {
        print("You found it \(original)")
        return original
    }

    if num % 2 == 0 {
        num = num / 2
    }
    else {
        num = (num * 3) + 1
    }
    print(num)
    return threeX(&num)
}

var val = 7000



_ = threeX(&val)
