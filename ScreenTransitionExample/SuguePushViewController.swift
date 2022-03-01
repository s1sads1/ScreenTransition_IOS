//
//  SuguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 박선호 on 2022/02/28.
//

import UIKit

//protocol SendDataDelegate2 : AnyObject {
//    func sendData(name: String)
//}

class SuguePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name : String?
    var delegate : SendDataDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }

    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Genter")
        self.navigationController?.popViewController(animated: true)
        
    }
    


}
