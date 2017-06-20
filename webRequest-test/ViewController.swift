//
//  ViewController.swift
//  webRequest-test
//
//  Created by Shivam Sharma on 6/19/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://swapi.co/api/people/1/"
        let session = URLSession.shared
        let url = URL(string: urlString)
        
        session.dataTask(with: url!) { (data: Data?, response: URLResponse?, error: Error?) in
            if let responseData = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: responseData, options: .allowFragments)
                    
                    
                    if let dict = json as? Dictionary<String, AnyObject> {
                        if let name = dict["name"] as? String, let height = dict["height"] as? String, let birthYear = dict["birth_year"] as? String, let hairColor = dict["hair_color"] as? String {
                            let person = SWPerson(name: name, height: height, birthYear: birthYear, hairColor: hairColor)
                            print(person.name)
                            print(person.height)
                            print(person.birthYear)
                            print(person.hairColor)
                        }
                    }
                } catch {
                    print("could not serialize")
                }
            }
        }.resume()
    }


}

