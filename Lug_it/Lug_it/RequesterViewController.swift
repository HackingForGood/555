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
    
    // MARK: Properties
    var product: Product?
    
    // First entry (Child Reference)
    let nameChild = FIRDatabase.database().reference().child("Product")
    let locationChild = FIRDatabase.database().reference().child("Location")
    let sizeChild = FIRDatabase.database().reference().child("Volume")
    
    // MARK: Outlets
    @IBOutlet weak var nameTFL: UITextField!
    @IBOutlet weak var locationTFL: UITextField!
    @IBOutlet weak var sizeTFL: UITextField!
    
    // MARK: Actions
    @IBAction func donePressed(_ sender: UIButton) {
        product = Product(name: nameTFL.text, location: locationTFL.text, size: Double(sizeTFL.text!))
        
        print(product?.name)
    }
    
    // Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        nameChild.observe(.value, with: { (snap) in
            print(snap.value as? String ?? "nothing here")
        })
        
        locationChild.observe(.value, with: { (snap) in
            print(snap.value as? String ?? "nothing here")
        })
        
        sizeChild.observe(.value, with: { (snap) in
            print(snap.value as? Double ?? "nothing here")
        })
    }
    
    
}
