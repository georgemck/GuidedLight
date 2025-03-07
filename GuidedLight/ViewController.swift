//
//  ViewController.swift
//  GuidedLight
//
//  Created by George McKinney on 2/6/25.
//

import UIKit

class ViewController: UIViewController {

    var LightState = false
    
    @IBOutlet weak var LightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UpdateUI()
        view.backgroundColor = .black
    }
    
    func UpdateUI(){
        LightState.toggle()
        view.backgroundColor = LightState ? .blue : .red
    }

    @IBAction func TG(_ sender: UITapGestureRecognizer) {
        print(sender)
        LightState.toggle()

        if(LightState == true){
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
    @IBAction func ButtonPressed(_ sender: UIButton) {
        print("pressed")
        UpdateUI()
    }
}

