//
//  Books.swift
//  HomeLibApp
//
//  Created by Ma Millerr on 24.10.2022.
//

import Foundation

struct Book {
    var name: String
    var author: String
    let genre: String
    let pubHouse: String
    let translator: String
    let status: String
    let location: String
    let image: String
    
    var description: String {
        """
        \(name)
        \(author)
        \(genre)
        \(pubHouse)
        \(translator)
        \(status)
        \(location)

        """
    }
    
    static func getBook() -> [Book] {
        [
            Book(name: "Анна Каренина", author: "Лев Николаевич Толстой", genre: "Классика", pubHouse: "The Planet", translator: "none", status: "В процессе чтения", location: "3-я полка сверху", image: "Анна Каренина"),
            Book(name: "Доктор Живаго", author: "Борис Леонидочив Пастернак", genre: "Политика", pubHouse: "ОЛМА Медиа Групп", translator: "none", status: "Прочитано", location: "7-я полка снизу", image: "Доктор Живаго"),
            Book(name: "Война и мир", author: "Лев Николаевич Толстой", genre: "Наполеоновские войны", pubHouse: "Tip. T. Ris", translator: "Е.К. Пугачев", status: "Не прочитано", location: "5-я полка в левом шкафу", image: "Война и мир"),
            Book(name: "Обломов", author: "Иван Александрович Гончаров", genre: "Роман", pubHouse: "Издательство АСТ", translator: "none", status: "Прочитано 10.2020", location: "в дальнем шкафу", image: "Обломов"),
            Book(name: "451 Градус по Фаренгейту", author: "Рэй Брэдбери", genre: "Филосовский роман", pubHouse: "The Planet", translator: "В. Бабенко", status: "В процессе чтетия", location: "На тумбочке", image: "451 Градус по Фаренгейту")
        ]
    }
}
