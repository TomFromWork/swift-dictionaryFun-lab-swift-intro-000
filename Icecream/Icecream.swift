//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        
        var instructors: [String] = []
        
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                instructors += [key]
            }
        }
        
        return instructors
    }

    
    
    // 3.
    func count(forFlavor: String) -> Int {
        
        var number = 0
        
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == forFlavor {
                number += 1
            }
        }
        
        return number
    }
    
    
    
    // 4.
    func flavor(forPerson: String) -> String? {
        
        let flavor = favoriteFlavorsOfIceCream[forPerson]
        
        return flavor
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            favoriteFlavorsOfIceCream[forPerson] = flavor
            return true
        } else {
            return false
        }
        
    }
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        } else {
            return false
        }
    }
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        
        let size = favoriteFlavorsOfIceCream.count
        return size
    }
    
    
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        } else {
            return false
        }
    }
    
    
    
    
    // 9.
    func attendeeList() -> String {
        
        var sortedNames = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for (index, name) in allNames.enumerated() {
            sortedNames += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            
            if index < allNames.count - 1 {
                sortedNames += "\n"
            }
        }
        
        return sortedNames
    }
    
    
    
    
    
    
    

}
