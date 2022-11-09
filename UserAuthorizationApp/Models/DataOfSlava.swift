//
//  DataOfSlava.swift
//  UserAuthorizationApp
//
//  Created by User on 10.11.2022.
//

import Foundation
import UIKit

struct Person {
    let myName: String
    let mySurname: String
    let age: Int
    let activity: String
    let hobby: String
    
    let textOfMyBiography: String
    let myViewProger: UIView
}

struct DataRegistration {
    let nameUser: String
    let password: String
    
    var person: Person
}

