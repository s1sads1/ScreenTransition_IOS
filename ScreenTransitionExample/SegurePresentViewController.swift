//
//  SegurePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 박선호 on 2022/02/28.
//

import UIKit

class SegurePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
       
    }
    

}
