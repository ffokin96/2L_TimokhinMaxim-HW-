//
//  main.swift
//  2L_TimokhinMaxim(HW)
//
//  Created by Максим Тимохин on 19.07.2020.
//  Copyright © 2020 Максим Тимохин. All rights reserved.
//

import Foundation

// Задание №1
var a = 10
if a % 2 == 0 {
    print("Число чётное")
} else {
    print("Число нечётное")
}

// Задание №2
var b = 13
if b % 3 == 0{
    print ("Число кратно 3")
} else {
    print("Число не кратно 3")
}

// Задание №3
var array: [Int] = []
for i in 0...100 {
    array.append(i)
}
print(array)

// Задание №4
for (_, value) in array.enumerated() {
    if ((value % 2) == 0) && ((value % 3) > 0) {
        array.remove(at: array.firstIndex(of: value)!) //хз что за знак восклицания
    }
}
print(array)

//  Задание №5
var array2: [Double] = []
array2.append(0)
array2.append(1)
for n in 2...100 {
    array2.append(array2[n-1] + array2[n-2])
}
print(array2)

// Задание №6
var array3: [Int] = []
let m:Int = 100
for i in 2...m {
    array3.append(i)
}

for q in 0...15 {
    for w in 2...15 {
        for (_,value) in array3.enumerated() {
            if (value % (w*array3[q])) == 0 {
                array3.remove(at: array3.firstIndex(of: value)!)
            }
        }
    }
    
}
print(array3)
print("Спасибо за внимание!")
