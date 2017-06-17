//
//  ViewController.swift
//  Lug_it
//
//  Created by Younoussa Ousmane Abdou on 6/17/17.
//  Copyright © 2017 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit
import FirebaseDatabase

class RequesterViewController: UIViewController {
    
    let locationReference = FIRDatabase.database().reference().child("Requester")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationReference.observe(.value, with: { (snap) in
            print(snap.value as? String ?? "Nothing here")
        })
        
    }

    
}

