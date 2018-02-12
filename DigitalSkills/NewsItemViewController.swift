//
//  FirstViewController.swift
//  DigitalSkills
//
//  Created by Aleksandr Filippov on 12.02.2018.
//  Copyright © 2018 Aleksandr Filippov. All rights reserved.
//

import UIKit

class NewsItemViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func share(_ sender: AnyObject) {
        let activityViewController = UIActivityViewController(
            activityItems: ["В Москве проходит чемпионат DigitalSkills"],
            applicationActivities: nil)
        if let popoverPresentationController = activityViewController.popoverPresentationController {
            popoverPresentationController.barButtonItem = (sender as! UIBarButtonItem)
        }
        present(activityViewController, animated: true, completion: nil)
    }
}

