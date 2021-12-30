//
//  CustomModel.swift
//  JSONParser
//
//  Created by 장효원 on 2021/12/30.
//

import UIKit

struct CustomModels: Decodable {
    var data:[CustomModel]
}

struct CustomModel: Decodable {
    var name:String
}
