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
    let RequesterChild = FIRDatabase.database().reference().child("Requester")
    
    // Request
    var newRequest = Request(product: "Laptop", location: "Cambridge, MA", description: "a brand new laptop", date: "July 2017", volume: 100, size: 100, width: 100, height: 100, length: 100, weight: 100, userID: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        RequesterChild.observe(.value, with: { (snap) in
            self.newRequest.product = snap.value as? String ?? "Nothing here"
            self.newRequest.location = snap.value as? String ?? "Nothing here"
            self.newRequest.date = snap.value as? String ?? "Nothing here"
            self.newRequest.volume = snap.value as? Double ?? 0.0
            
            print(snap.)
        })
    }
    
    // MARK: DATA GUY
    func getFields () -> Request {
        return newRequest
    }
    
    func setFields(r: Request) {
        var newR = r
        newR.product = locationTF.text ?? "Default text"
    }
    
    

}

