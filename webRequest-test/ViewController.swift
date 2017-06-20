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
                    print(json)
                } catch {
                    print("could not serialize")
                }
            }
        }.resume()
    }


}

