//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by satrol_ on 2024/4/5.
//

import Foundation

struct ToDoListItem:Codable,Identifiable {
    let id:String
    let title:String
    let dueDate:TimeInterval
    let createDate:TimeInterval
    var isDone:Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
