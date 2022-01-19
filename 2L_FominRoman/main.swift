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



//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
// Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

// на входе  в функцию - кол-во элементов в ряду
// на выходе из функции - массив из чисел Фибоначчи

func fibonacci (numberOfElements: Int) -> [UInt64] {
    var arrayFibonacci: [UInt64] = [] // объявляем пустой массив, элементы максимальной числовой размерности
    arrayFibonacci.append(0) // нулевой элемент присвоить  0
    arrayFibonacci.append(1) // первый элемент присвоить  1
    var element: UInt64 = 0
    var numberOfElements1 = numberOfElements
    
    if numberOfElements > 93 {
        print("К сожалению, не могу вывести 100 элементов, есть ограничения на разрядность чисел в языке SWIFT. Произведу расчет только до 94 элемента")
        numberOfElements1 = 93
    }
    
    for i in 2...numberOfElements1 {
        element = arrayFibonacci [i-2] + arrayFibonacci [i-1]
        arrayFibonacci.append(element)
    }
    
    return arrayFibonacci
}

var arr = fibonacci(numberOfElements: 100)
print("Массив из чисел Фибоначчи: ")
print(arr)
