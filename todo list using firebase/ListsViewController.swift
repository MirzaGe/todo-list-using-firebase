//
//  ListsViewController.swift
//  todo list using firebase
//
//  Created by sherry on 17/10/2021.
//

import UIKit

class ListsViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var profileButton: UIButton!
    
    @IBOutlet weak var listsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppData.sharedInstance.curUser = UserClass(inpName: "Amir", inpEmail: "defEmail", inpUid: "defUid")

        PrepareFirstLists.prepare()
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.sharedInstance.currentLST.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listsCell", for: indexPath)
        
        let thisList = AppData.sharedInstance.currentLST[indexPath.row] as GroceryListClass
        
        cell.textLabel?.text = thisList.listName
        cell.detailTextLabel?.text = String(thisList.listItems.count) + " for " + thisList.listOwner.name
        
        return cell
    }
    
    @IBAction func newListAction(_ sender: Any) {
    }
    
    @IBAction func profileAction(_ sender: Any) {
    }
    
    

}
