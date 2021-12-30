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
                "name" : "test1"
            },
            {
                "name" : "test2"
            },
            {
                "name" : "test3"
            },
            {
                "name" : "test4"
            }
        ]
    }
    """
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        convertJSONToStringAsDictionary(jsonString: jsonString)
        convertJSONToStringAsModel(jsonString: jsonString)
    }

    func convertJSONToStringAsDictionary(jsonString:String) {
        print("convertJSONToStringAsModel")
        
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
    
    func convertJSONToStringAsModel(jsonString:String) {
        print("convertJSONToStringAsModel")
        
        let data = jsonString.data(using: .utf8)!
        let decoder = JSONDecoder()
        
        do{
            let model = try decoder.decode(CustomModels.self, from: data)
            print(model)
        }catch{
            
        }
    }

}

