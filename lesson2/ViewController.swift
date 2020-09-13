//
//  ViewController.swift
//  lesson2
//
//  Created by macbook on 12.09.2020.
//  Copyright © 2020 Iskander Nizamov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Написать функцию, которая определяет, четное число или нет.
        
        func even (_ number: Int) -> Bool {
            return number % 2 == 0
        }
        
        //2. Написать функцию, которая определяет, делится ли число без остатка на 3.
        
        func devideThree (_ number: Int) -> Bool {
            return number % 3 == 0
        }
        
        //3. Создать возрастающий массив из 100 чисел.
        
        var array = [Int]()
        for index in 1...100 {
            array.append(index)
        }
        
        //4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
        
        for (index,value) in array.reversed().enumerated() {
            if even(value) == true || devideThree(value) == false {
                array.remove(at: value - 1)
            }
        }
        print(array)
        
        //5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
        
        var fiboArray:[UInt64] = [0,1]
        for _ in 0...60 {
            fiboArray.append(fiboArray[fiboArray.count - 1] + fiboArray[fiboArray.count - 1])
        }
        print(fiboArray)
        
        /*6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:*/
        
        func simpleNumbers (_ max: Int) -> [Int] {
            var arrayForSimple = Set<Int>()
            for index in 2...max {
                arrayForSimple.insert(index)
            }
            var temp = 2
            
            for _ in 1...max {
                for check in stride(from: 2 * temp, through: max, by: temp) {
                    arrayForSimple.remove(check)
                }
                for index in arrayForSimple.sorted(){
                    if temp < index {
                        temp = index
                        break
                    }
                }
            }
            return arrayForSimple.sorted()
        }
        
        print(simpleNumbers(100))
    
    }


}

