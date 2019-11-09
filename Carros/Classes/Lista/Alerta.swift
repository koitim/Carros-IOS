//
//  Alerta.swift
//  Carros
//
//  Created by user136953 on 11/7/19.
//  Copyright © 2019 koitim. All rights reserved.
//

import UIKit

class Alerta {
    class func alerta(_ msg: String, viewController: UIViewController) {
        let alert = UIAlertController(title: "Alerta", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        viewController.present(alert, animated: true, completion: nil)    }
}
