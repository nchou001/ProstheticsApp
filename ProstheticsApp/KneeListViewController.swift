//
//  KneeListViewController.swift
//  ProstheticsApp
//
//  Created by Nathaniel Choung on 1/23/18.
//  Copyright © 2018 ST&G. All rights reserved.
//

import UIKit

var myIndex = 0
struct Knee {
    var serial = String()
    var name = String()
    var pdacReq = Int()
    var kLev = Int()
    var weightLim = Double()
    var buildHeight = Double()
    
    init(serial: String, name: String, pdacReq: Int, kLev: Int, weightLim: Double, buildHeight: Double){
        self.serial = serial
        self.name = name
        self.pdacReq = pdacReq
        self.kLev = kLev
        self.weightLim = weightLim
        self.buildHeight = buildHeight
    }
}

let kneeList: [Knee] = [
    Knee(serial: "VGK-125P",name: "VGK Prosthetic Knee",pdacReq: 0,kLev: 3,weightLim: 275.0,buildHeight: 282.0),
    Knee(serial: "VGK-125KD",name: "VGK Prosthetic Knee",pdacReq: 0,kLev: 3,weightLim: 275.0,buildHeight: 282.0),
    Knee(serial: "2SR500",name: "Sensor-Hydraulic Swing and Stance Phase Control Knee",pdacReq: 0,kLev: 3,weightLim: 275.0,buildHeight: 246.0),
    Knee(serial: "M0703",name: "Dolphin Knee",pdacReq: 1,kLev: 3,weightLim: 220.0,buildHeight: 142.0),
    Knee(serial: "M0780",name: "Swan 75 Knee",pdacReq: 1,kLev: 3,weightLim: 165.0,buildHeight: 164.0),
    Knee(serial: "M0786",name: "Swan 100 Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 170.0),
    Knee(serial: "1323AP",name: "Stance Flexion 5-Bar Pneumatic Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 177.5),
    Knee(serial: "1323AL",name: "Stance Flexion 5-Bar Pneumatic Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 183.8),
    Knee(serial: "1322AP",name: "Polycentric Pneumatic 4-Bar Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 172.0),
    Knee(serial: "1322AL",name: "Polycentric Pneumatic 4-Bar Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 178.3),
    Knee(serial: "1341",name: "Safe Stride Knee",pdacReq: 0,kLev: 3,weightLim: 220.0,buildHeight: 156.6),
    Knee(serial: "1320",name: "Pneumatic Single Axis Knee with Weight Activated Lock",pdacReq: 1,kLev: 3,weightLim: 220.0,buildHeight: 160.0),
    Knee(serial: "1324AP",name: "Stance Flexion 5-Bar Mechanical Knee",pdacReq: 1,kLev: 2,weightLim: 275.0,buildHeight: 112.0),
    Knee(serial: "1324AL",name: "Stance Flexion 5-Bar Mechanical Knee",pdacReq: 1,kLev: 2,weightLim: 275.0,buildHeight: 118.3),
    
    Knee(serial: "L1324AP",name: "Stance Flexion 5-Bar Mechanical Knee with Manual Lock",pdacReq: 1,kLev: 2,weightLim: 275.0,buildHeight: 112.0),
    Knee(serial: "L1324AL",name: "Stance Flexion 5-Bar Mechanical Knee with Manual Lock",pdacReq: 1,kLev: 2,weightLim: 275.0,buildHeight: 118.3),
    
    Knee(serial: "1321AP",name: "Polycentric 4-Bar Knee",pdacReq: 1,kLev: 2,weightLim: 275.0,buildHeight: 108.0),
    Knee(serial: "1321AL",name: "Polycentric 4-Bar Knee",pdacReq: 1,kLev: 2,weightLim: 275.0,buildHeight: 114.3),
    
    Knee(serial: "L1321AP",name: "Polycentric 4-Bar Manual Locking Knee",pdacReq: 1,kLev: 1,weightLim: 275.0,buildHeight: 108.0),
    Knee(serial: "L1321AL",name: "Polycentric 4-Bar Manual Locking Knee",pdacReq: 1,kLev: 1,weightLim: 275.0,buildHeight: 114.3),
    
    Knee(serial: "1319",name: "Pneumatic Single Axis Knee",pdacReq: 0,kLev: 3,weightLim: 220.0,buildHeight: 146.43),
    
    Knee(serial: "1326AP",name: "4-Bar Knee for AK and KD",pdacReq: 1,kLev: 2,weightLim: 220.0,buildHeight: 87.3),
    Knee(serial: "1326AL",name: "4-Bar Knee for AK and KD",pdacReq: 1,kLev: 2,weightLim: 220.0,buildHeight: 93.6),
    

    Knee(serial: "L1311A",name: "Weight Activated Brake Knee with Manual Lock",pdacReq: 1,kLev: 1,weightLim: 220.0,buildHeight: 65.0),
    Knee(serial: "1311T",name: "Weight Activated Brake Knee",pdacReq: 1,kLev: 1,weightLim: 220.0,buildHeight: 48.0),
    Knee(serial: "1311S",name: "Weight Activated Brake Knee",pdacReq: 1,kLev: 1,weightLim: 275.0,buildHeight: 48.0),
    
    Knee(serial: "1313A",name: "Manual Locking Knee - Type A",pdacReq: 1,kLev: 1,weightLim: 198.0,buildHeight: 43.0),
    Knee(serial: "1313A-N",name: "Manual Locking Knee - Type B",pdacReq: 1,kLev: 1,weightLim: 220.0,buildHeight: 43.5),
    
    Knee(serial: "1312S",name: "Mechanical 4-Bar Knee",pdacReq: 0,kLev: 1,weightLim: 275.0,buildHeight: 83.0),
    //Knee(serial: "1314",name: "4-Bar Knee with Extension Assist for KD",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 111.45),
    //Knee(serial: "1315",name: "4-Bar Knee with Extension Assist for KD",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 111.45),
    //Knee(serial: "1317",name: "Single Axis Knee with Internal Extension Assist and Adjustable Constant Friction",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 77.32),
    Knee(serial: "1318S",name: "Single Axis Knee with Manual Lock",pdacReq: 1,kLev: 1,weightLim: 275.0,buildHeight: 82.0),
]

class KneeListViewController: UITableViewController {
    
    var filteredArray2: [Knee] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (filteredArray2.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! KneeListTableViewCell
        //cell.textLabel?.text = filteredArray2[indexPath.row].serial
        //cell.imageView?.image = UIImage(named: filteredArray2[indexPath.row].serial + ".jpg")
        cell.myImage.image = UIImage(named: (filteredArray2[indexPath.row].serial + ".png"))
        cell.myLabel.text = filteredArray2[indexPath.row].serial
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = kneeList.index(where: {$0.serial == filteredArray2[indexPath.row].serial})!
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let filteredArray = kneeList.filter { $0.pdacReq == searchParam.pdacVariable && $0.kLev == searchParam.kLevel && $0.weightLim >= searchParam.weight}
        let kneeSpace = searchParam.mtpToFloor - searchParam.footBuildHeight - 90.0
        filteredArray2 = filteredArray.filter{ $0.buildHeight <= kneeSpace }
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
