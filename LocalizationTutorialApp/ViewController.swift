//
//  ViewController.swift
//  LocalizationTutorialApp
//
//  Created by omaestra on 12/02/2019.
//  Copyright © 2019 maestracode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alertTitle = NSLocalizedString("Hello world", comment: "")
        let alertMessage = NSLocalizedString("this.is.awesome", comment: "")
        let cancelButtonText = NSLocalizedString("Cancel", comment: "")
        let confirmButtonText = NSLocalizedString("Confirm", comment: "")
        
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: cancelButtonText, style: .cancel, handler: nil)
        let confirmAction = UIAlertAction(title: confirmButtonText, style: .default, handler: nil)
        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)
        
        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: nil)
        }
    }
}

