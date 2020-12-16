//
//  main.swift
//  2L_ FominRoman
//
//  Created by Rom on 15.12.2020.
//

import Foundation

print("Hello, World!")


// 1. Написать функцию, которая определяет, четное число или нет.
//  если четное - возвращает true, нечетное - false

func division2( number: Int ) -> Bool {
    if number % 2 == 0 {
        return true
    }else {
        return false
    }
}


var n: Int = 11 // задаем число

if division2(number: n) == true {
    print("Число \(n) четное")
}else {
    print("Число \(n) нечетное")
}

//2. Написать функцию, которая определяет, делится ли число
// без остатка на 3.

func division3( number: Int ) -> Bool {
    if number % 3 == 0 {
        return true
    }else {
        return false
    }
}

n = 13 // вводим число

if division3(number: n) {
    print("Число \(n) делится на 3 без остатка")
} else{
    print("Число \(n) делится на 3 с остатком")
}



// 3. Создать возрастающий массив из 100 чисел.

var array = [Int]() // создаем пустой массив
for i in 0...99 {
    array.append(i)
}
print("Создаем массив из 100 чисел по возрастанию:")
print(array)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
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

/* 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.
 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
 */

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

/*
6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
b. Пусть переменная p изначально равна двум — первому простому числу.
c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
e. Повторять шаги c и d, пока возможно.
*/


