//
//  ItemClass.swift
//  todo list using firebase
//
//  Created by sherry on 17/10/2021.
//

import UIKit

class ItemClass: NSObject {

    var itemName: String!
    var itemTime: Date!
    var itemPurchased: Bool!
    
    init(inpItemName:String,inpItemTime:Date,inpItemPurchased:Bool) {
        itemName = inpItemName
        itemTime = inpItemTime
        itemPurchased = inpItemPurchased
        
    }
    
}
