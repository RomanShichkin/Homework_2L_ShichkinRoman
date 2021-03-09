
//1. Написать функцию, которая определяет, четное число или нет.
//

func evenNumb(number: Int) -> String {
    if number % 2 == 0 {
        return "Число чётное"
    } else {
        return "Число нечётное"
    }
}

print(evenNumb(number: 5))
print(evenNumb(number: 6))

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
//

func divisibleByThree(number: Int) -> String {
    if number % 3 == 0 {
        return "Число делится на 3"
    } else {
        return "Число не делится на 3"
    }
}

print(divisibleByThree(number: 5))
print(divisibleByThree(number: 6))

//3. Создать возрастающий массив из 100 чисел.
//

var arrayHundred: Array<Int> = []
for i in 1...100 {
    arrayHundred.append(i)
}
print(arrayHundred)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
//

var filterArrayHundred = arrayHundred.filter {$0 % 2 != 0 && $0 % 3 == 0}
print(filterArrayHundred)

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
//
//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

func arrayFibonacci(i: Int) -> [Double] {
    var fib: [Double] = [1, 1]
    (2...i).forEach{ i in
        fib.append(fib[i - 1] + fib[i - 2])
    }
    return fib
}

print(arrayFibonacci(i: 50))

//6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.

func primeNumbers(num: Int) -> [Int] {
    var pArr: [Int] = [2]
    var p = 3
    while pArr.count < num{
        var isP = true
        for i in 2..<p {
            if p % i == 0 {
                isP = false
                break
            }
        }
        if isP == true {
            pArr.append(p)
        }
        p += 1
    }
    return pArr
}

print(primeNumbers(num: 100))
