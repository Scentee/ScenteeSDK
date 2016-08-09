//
//  ViewController.swift
//  ScenteeSample
//
//  Created by Scentee on 2016/08/07.
//  Copyright © 2016年 Scentee. All rights reserved.
//

import UIKit
import ScenteeSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        do {
            try ScenteeSDK.catchException {
                ScenteeSDK.scentee().puffAndFlashLedWithRed(255, green: 255, blue: 255, special: 1, time: 5000)
            }
        }
        catch {
            let alert: UIAlertController = UIAlertController(title: "Puff failed..", message: "Make sure the device is connected.", preferredStyle: .Alert)
            let yesAction = UIAlertAction(title: "OK", style: .Default) { action in print("OK") }
            alert.addAction(yesAction)
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
}
