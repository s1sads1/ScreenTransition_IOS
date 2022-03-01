//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 박선호 on 2022/02/28.
//

import UIKit

protocol SendDataDelegate : AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name : String?
    weak var delegate : SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
        
    }
    

    @IBAction func BackButton(_ sender: UIButton) {
        
        self.delegate?.sendData(name: "Gunner")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}
