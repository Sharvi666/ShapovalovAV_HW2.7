//
//  Persons.swift
//  ShapovalovAV_HW2.7
//
//  Created by Arthur on 09.09.2020.
//  Copyright © 2020 Arthur. All rights reserved.
//
import UIKit

struct Person {
    
    let name: [String]
    let surname: [String]
    var phoneNumber: [String]
    let email: [String]
    
    var fullName: String {
        "\(name.randomElement()!) \(surname.randomElement()!)"
    }
}

extension Person {
    static func getPersonsList() -> [Person] {
        let data = DataManager()
        return [Person(name: data.names, surname: data.surnames, phoneNumber: data.phoneNumbers, email: data.emails)]
    }
}


class DataManager: UIViewController {
    
    let names = ["Robert",
                 "Thierry",
                 "Rahim",
                 "Karim",
                 "Cristiano",
                 "Lionel",
                 "Zinedin",
                 "Kevin",
                 "Stiven",
                 "Frank"]
    
    let surnames = ["Levandovski",
                    "Henry",
                    "Sterling",
                    "Benzema",
                    "Ronaldo",
                    "Messi",
                    "Zidan",
                    "De Bruyne",
                    "Gerrard",
                    "Lampard"]
    
    let phoneNumbers = ["329752",
                        "497548",
                        "398179",
                        "832690",
                        "916663",
                        "877280",
                        "337722",
                        "018762",
                        "388261",
                        "666777"]
    
    let emails = ["gledee@mail.ru",
                  "sdgdvvv@mail.ru",
                  "zsfqsds@mail.ru",
                  "lflhlgg@mail.ru",
                  "ktewkvd@mail.ru",
                  "olqllww@mail.ru",
                  "vldvkff@mail.ru",
                  "ewlfldb@mail.ru",
                  "dfhnfds@mail.ru",
                  "ptoroee@mail.ru"]
}


