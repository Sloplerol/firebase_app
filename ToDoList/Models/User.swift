//
//  User.swift
//  ToDoList
//
//  Created by satrol_ on 2024/4/5.
//

import Foundation

struct User : Codable{
    let id:String
    let email:String
    let name:String
    let joined:TimeInterval
}
