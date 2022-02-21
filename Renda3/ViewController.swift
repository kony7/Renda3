//
//  ViewController.swift
//  Renda3
//
//  Created by SeinaKonishi on 2022/02/21.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    var number:Int = 0
    let firestore = Firestore.firestore()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addNumber(){
        number += 1
        label.text = String(number)
        firestore.collection("counts").document("share").setData(["count":number])
    }


}

