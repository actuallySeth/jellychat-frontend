//
//  chatView.swift
//  JellyChat
//
//  Created by Omar Qureshi on 5/2/15.
//  Copyright (c) 2015 Arjun Sethi. All rights reserved.
//

import UIKit

class chatView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var buttonUP: UIButton!
    [NSNotificationCenter defaultCenter] addObserver:self selector:;@selector;;;(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    return YES;
}
