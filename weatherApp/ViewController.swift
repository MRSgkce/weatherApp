//
//  ViewController.swift
//  weatherApp
//
//  Created by Mürşide Gökçe on 11.05.2025.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var searcharea: UITextField!
    @IBOutlet weak var symbols: UIImageView!
    @IBOutlet weak var labelweather: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        searcharea.delegate = self
        
    }

    @IBAction func searchButoon(_ sender: UIButton) {
        searcharea.endEditing(true)
        print(searcharea.text!)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searcharea.endEditing(true)
        print(searcharea.text!)
        return true
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        searcharea.text = ""
    }
    
}

