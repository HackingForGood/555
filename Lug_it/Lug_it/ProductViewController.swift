//
//  ProductViewController.swift
//  Lug_it
//
//  Created by Younoussa Ousmane Abdou on 1/4/18.
//  Copyright © 2018 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    var product: Product?

    // MARK: Outlets
    @IBOutlet weak var productLBL: UILabel!
    @IBOutlet weak var locationLBL: UILabel!
    @IBOutlet weak var sizeLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productLBL.text = product?.name
        locationLBL.text = product?.location
        sizeLBL.text = "\(product?.size ?? 0.0)"
    }
}
