# 3X-plus-1-Collatz-Conjecture
Run at your own risk.

This software contains no promises,
or logic for that matter.

this software will fail.

```
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


```
https://www.collatzresearch.org/chapter1-what-is-the-collatz-conjec
