//
//  PInfoViewController.swift
//  ProstheticsApp
//
//  Created by Nathaniel Choung on 1/23/18.
//  Copyright © 2018 ST&G. All rights reserved.
//

import UIKit

class PInfoViewController: UIViewController {

    @IBOutlet weak var weightField: UITextField!
    
    @IBOutlet weak var mtpField: UITextField!
    
    @IBOutlet weak var fbhField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let weightTemp = Double(weightField.text!){
            searchParam.weight = weightTemp
        }
        if let mtpTemp = Double(mtpField.text!){
            searchParam.mtpToFloor = mtpTemp
        }
        if let fbhTemp = Double(fbhField.text!){
            searchParam.footBuildHeight = fbhTemp
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
