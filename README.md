# 3X-1-Collatz-Conjecture
Run at your own risk.

This software contains no promises,
or logic for that matter.

this software will fail.

```
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

for i in 1152921504606847000..<Int.max {
    var val = i
    print("completed \(i) \(threeX(&val))")
}

```
