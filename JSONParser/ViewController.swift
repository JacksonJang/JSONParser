//
//  ViewController.swift
//  JSONParser
//
//  Created by 장효원 on 2021/12/30.
//

import UIKit

class ViewController: UIViewController {

    let jsonString = """
    {
        "data" : [
            {
                "test1" : "test1"
            },
            {
                "test2" : "test2"
            },
            {
                "test3" : "test3"
            },
            {
                "test4" : "test4"
            }
        ]
    }
    """
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        convertJSONToStringAsDictionary(jsonString: jsonString)
    }

    func convertJSONToStringAsDictionary(jsonString:String) {
        let data = jsonString.data(using: .utf8)!
        do {
            if let jsonArray = try JSONSerialization.jsonObject(with: data, options : .allowFragments) as? Dictionary<String,Any>
            {
               print(jsonArray) // use the json here
            } else {
                print("bad json")
            }
        } catch let error as NSError {
            print(error)
        }
    }

}

