//
//  ChatViewController.swift
//  
//
//  Created by Julian Meyer on 5/3/15.
//
//

import Foundation
import UIKit

class ChatViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    var chatRooms : Array<String> = []
    @IBOutlet weak var tableView: UITableView!
    var roomField: UITextField!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatRooms.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        chatRooms = ["TestRoomPleaseIgnore", "AnotherTestRoom"]
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.roomField = nil;
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    @IBAction func clickAdd() {
        var alert = UIAlertController(title: "Chat Room", message: "Enter a chat room", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) in
            if((self.roomField.text) != nil) {
                self.chatRooms.append(self.roomField.text);
                self.tableView.reloadData();
            }
        }))
        
        alert.addTextFieldWithConfigurationHandler { (textField) in
            self.roomField = textField;
        }
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "ChatReuseID")
        cell.textLabel!.text = chatRooms[indexPath.row]
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true);
        var storyboard = UIStoryboard(name: "Main", bundle: NSBundle(path: "Main.storyboard"))
        var chatDetailController = storyboard.instantiateViewControllerWithIdentifier("ChatDetailView") as! ChatDetailController
        chatDetailController.room = tableView.cellForRowAtIndexPath(indexPath)!.textLabel!.text!
        self.navigationController?.pushViewController(chatDetailController, animated: true)
    }
}
