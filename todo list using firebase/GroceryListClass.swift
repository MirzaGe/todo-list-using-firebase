//
//  GroceryListClass.swift
//  todo list using firebase
//
//  Created by sherry on 17/10/2021.
//

import UIKit

class GroceryListClass: NSObject {

    var listName: String!
    var listItems: Array<ItemClass>!
    var listOwner: UserClass!
    
    init(inpListName:String,inpOwner:UserClass,inpListItems:Array<ItemClass>) {
        listName = inpListName
        listItems = inpListItems
        listOwner = inpOwner
    }
    
}
