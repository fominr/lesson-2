//
//  урок 2
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



// Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var i = 0
while i < array.count {
    if division2 (number: array[i]) || division3(number: array[i]) {
        array.remove(at: i)
    } else {
    i+=1
    }
}
print("Удаляем из массива все четные числа и все числа, которые не делятся на 3: ")
print(array)
