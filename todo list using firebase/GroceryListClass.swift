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
    
    required convenience init?(coder aDecoder: NSCoder) {
        let thisListName = aDecoder.decodeObject(forKey: "listName") as! String
        let thisListOwner = aDecoder.decodeObject(forKey: "listOwner") as! UserClass
        let thisListItems = aDecoder.decodeObject(forKey: "listItems") as! Array<ItemClass>
        
        self.init(inpListName: thisListName, inpOwner: thisListOwner, inpListItems: thisListItems)
        
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.listName, forKey: "listName")
        aCoder.encode(self.listItems, forKey: "listItems")
        aCoder.encode(self.listOwner,forKey: "listOwner")
    }
    
}
