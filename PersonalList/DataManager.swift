//
//  DataManager.swift
//  PersonalList
//
//  Created by Василий Полторак on 19.04.2022.
//

class DataManager {
    
    private var names = [
        "Glen",
        "Tom",
        "Edward",
        "Willy",
        "Jack"
    ]
    
    private var lastNames = [
        "Lantz",
        "Hanson",
        "Scissorhands",
        "Wonka",
        "Sparrow"
    ]
    
    private var phones = [
        "8-111-111-11-11",
        "8-222-222-22-22",
        "8-333-333-33-33",
        "8-444-444-44-44",
        "8-555-555-55-55",
    ]
    
    private var mails = [
        "1111@mail.ru",
        "2222@mail.ru",
        "3333@mail.ru",
        "4444@mail.ru",
        "5555@mail.ru"
    ]
    
    var persons: [Person] {
        
        var persons:[Person] = []
        
        while !names.isEmpty {
            
            let name = names.remove(at: Int.random(in: 0..<names.count))
            let lastName = lastNames.remove(at: Int.random(in: 0..<lastNames.count))
            let phone = phones.remove(at: Int.random(in: 0..<phones.count))
            let mail = mails.remove(at: Int.random(in: 0..<mails.count))
            
            let person = Person(name: name, lastName: lastName, phone: phone, mail: mail)
            
            persons.append(person)
        }
        
        return persons
    }
}
