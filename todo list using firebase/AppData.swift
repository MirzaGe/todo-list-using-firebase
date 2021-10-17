//
//  AppData.swift
//  todo list using firebase
//
//  Created by sherry on 17/10/2021.
//

import UIKit

class AppData: NSObject {
    static let sharedInstance = AppData()
    
    var curUser : UserClass?
    var currentLST: Array <GroceryListClass>!
    
    public override init()
    {
        currentLST = Array<GroceryListClass> ()
        
    }

}
