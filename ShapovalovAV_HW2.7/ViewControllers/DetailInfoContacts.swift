//
//  DetailInfoContacts.swift
//  ShapovalovAV_HW2.7
//
//  Created by Arthur on 10.09.2020.
//  Copyright © 2020 Arthur. All rights reserved.
//

import UIKit

class DetailInfoContacts: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = "Phone: \(person.phoneNumber.randomElement()!)"
        emailLabel.text = "Email: \(person.email.randomElement()!)"
    }
}
