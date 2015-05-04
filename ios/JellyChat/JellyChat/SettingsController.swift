//
//  SettingsController.swift
//  JellyChat
//
//  Created by Julian Meyer on 5/3/15.
//  Copyright (c) 2015 Julian Meyer. All rights reserved.
//

import Foundation
import UIKit

class SettingsController : UIView {
    @IBOutlet weak var nickField: UITextField!
    @IBAction func saveButton(sender: AnyObject) {
        var userDefaults : NSUserDefaults = NSUserDefaults.standardUserDefaults();
        userDefaults.setValue(nickField.text, forKey: "nickname");
    }
}