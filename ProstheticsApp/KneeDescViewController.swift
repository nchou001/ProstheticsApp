//
//  KneeDescViewController.swift
//  ProstheticsApp
//
//  Created by Nathaniel Choung on 8/16/18.
//  Copyright © 2018 ST&G. All rights reserved.
//

import UIKit

class KneeDescViewController: UIViewController {

    @IBOutlet weak var serialLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        serialLabel.text = kneeList[myIndex].serial
        descLabel.text = kneeList[myIndex].name
        myImage.image = UIImage(named: kneeList[myIndex].serial + ".png")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
