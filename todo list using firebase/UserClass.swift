//
//  UserClass.swift
//  todo list using firebase
//
//  Created by sherry on 17/10/2021.
//

import UIKit

class UserClass: NSObject {
    
    var name: String!
    var email: String!
    var uid: String!
    
    init(inpName:String,inpEmail:String,inpUid:String) {
        name = inpName
        email = inpEmail
        uid = inpUid
    }
    
    

}
