//
//  Person.swift
//  webRequest-test
//
//  Created by Shivam Sharma on 6/20/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import Foundation

class SWPerson {
    private var _name: String!
    private var _height: String!
    private var _birthYear: String!
    private var _hairColor: String!
    
    var name: String {
        return _name
    }
    
    var height: String {
        return _height
    }
    
    var birthYear: String {
        return _birthYear
    }
    
    var hairColor: String {
        return _hairColor
    }
    
    init(name: String, height: String, birthYear: String, hairColor:String) {
        self._name = name
        self._height = height
        self._birthYear = birthYear
        self._hairColor = hairColor
    }
}
