//
//  PDACViewController.swift
//  ProstheticsApp
//
//  Created by Nathaniel Choung on 1/16/18.
//  Copyright © 2018 ST&G. All rights reserved.
//

import UIKit

struct SearchParameters {
    var pdacVariable = 0
    var kLevel = 0
    var weight = 0
    var mtpToFloor = 0.0
    var footBuildHeight = 0.0
}

var searchParam = SearchParameters()

class PDACViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        searchParam.pdacVariable = sender.tag
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
