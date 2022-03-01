//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 박선호 on 2022/02/28.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    var name : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func CodePushButton(_ sender: UIButton) {
        guard let viewController =
                self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else { return }
        
        viewController.name = "Gunter"
        self.navigationController?.pushViewController(viewController, animated: true)

    }
    
    @IBAction func CodePresentButton(_ sender: UIButton) {
        guard let viewController =
                self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else {return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Gunter"
        viewController.delegate = self
        self.present( viewController, animated: true, completion: nil)
                                                           
        
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SuguePushViewController {
            viewController.name = "Ganter"
        }
    }
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }

}

