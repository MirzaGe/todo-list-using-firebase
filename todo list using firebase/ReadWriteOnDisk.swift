//
//  ReadWriteOnDisk.swift
//  todo list using firebase
//
//  Created by sherry on 23/10/2021.
//

import UIKit

class ReadWriteOnDisk: NSObject {

    static let docsURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
    
    static let dataPath = docsURL.appendingPathComponent("data.plist").path
    static let userPath = docsURL.appendingPathComponent("user.plist").path
    
    
    
    
    class func writeData ()
    {
        AppData.sharedInstance.offlineLST = Array<GroceryListClass> ()
        for anyList in AppData.sharedInstance.currentLST
        {
            if ( anyList.listOwner.uid == AppData.sharedInstance.curUser?.uid)
            {
                AppData.sharedInstance.offlineLST.append(anyList)
            }
        }
        NSKeyedArchiver.archiveRootObject(AppData.sharedInstance.offlineLST, toFile: dataPath)
    }
    
    class func readData()
    {
        if let readData = NSKeyedUnarchiver.unarchiveObject(withFile: <#T##String#>
    }
    
    class func writeUser ()
    {
        
    }
    
    
    class func readUser ()
    {
        
    }
    
    
}
