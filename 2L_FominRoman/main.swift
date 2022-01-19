//
//  урок 2
//
//  Created by Rom on 19.01.2022.
//

import Foundation

// Написать функцию, которая определяет, четное число или нет.
func division2( number: Int ) -> Bool {
    if number % 2 == 0 {
        return true
    }else {
        return false
    }
}



// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func division3( number: Int ) -> Bool {
    if number % 3 == 0 {
        return true
    }else {
        return false
    }
}

// Создать возрастающий массив из 100 чисел
var array = [Int]() // создаем пустой массив
for i in 0...99 {
    array.append(i)
}
print("Создаем массив из 100 чисел по возрастанию:")
print(array)


