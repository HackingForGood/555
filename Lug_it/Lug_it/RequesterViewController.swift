//
//  ViewController.swift
//  Lug_it
//
//  Created by Younoussa Ousmane Abdou on 6/17/17.
//  Copyright © 2017 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit
import FirebaseDatabase

class RequesterViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    // First entry (Child Reference)
    let productChild = FIRDatabase.database().reference().child("Product")
    let locationChild = FIRDatabase.database().reference().child("Location")
    let volumeChild = FIRDatabase.database().reference().child("Volume")
    let dateChild = FIRDatabase.database().reference().child("Date")
    
    // MARK: DATA GUY
    // Request
    //    var newRequest = Request(product: "Laptop", location: "Cambridge, MA", description: "a brand new laptop", date: "July 2017", volume: 100, size: 100, width: 100, height: 100, length: 100, weight: 100, userID: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productChild.observe(.value, with: { (snap) in
            print(snap.value as? String ?? "nothing here")
        })
        
        locationChild.observe(.value, with: { (snap) in
            print(snap.value as? String ?? "nothing here")
        })
        
        volumeChild.observe(.value, with: { (snap) in
            print(snap.value as? Double ?? "nothing here")
        })
        
        dateChild.observe(.value, with: { (snap) in
            print(snap.value as? String ?? "nothing here")
        })
        
        // Textfiled
        locationTF.delegate = self
    }
    
    // MARK: Outlets
    @IBOutlet weak var locationTF: UITextField!
    @IBOutlet weak var productTF: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var volumeTF: UITextField!
    @IBOutlet weak var sizeTF: UITextField!
    @IBOutlet weak var widthTF: UITextField!
    @IBOutlet weak var heightTF: UITextField!
    @IBOutlet weak var lengthTF: UITextField!
    @IBOutlet weak var weightTF: UITextField!
    @IBOutlet weak var userIDTF: UITextField!
    
    // Test label
    @IBOutlet weak var testLBL:UILabel!
    
    // MARK: Done Button Touched
    @IBAction func doneButtonTouch(_ sender: UIBarButtonItem) {
    }
    
    // MARK: DATA GUY
    //    func getFields () -> Request {
    //        return newRequest
    //    }
    //
    //    func setFields(r: Request) {
    //        var newR = r
    //        newR.product = locationTF.text ?? "Default text"
    //    }
    
    
    
}

