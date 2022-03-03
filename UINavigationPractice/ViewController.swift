//
//  ViewController.swift
//  UINavigationPractice
//
//  Created by Karpinets Alexander on 03.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func toGreenVC(_ sender: UIButton) {
        let nextVC = storyboardInstance.instantiateViewController(withIdentifier: "greenVC")
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func toYellowVC(_ sender: UIButton) {
        let nextVC = storyboardInstance.instantiateViewController(withIdentifier: "yellowVC")
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func toRootVC(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func toPreviousScene(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

}

