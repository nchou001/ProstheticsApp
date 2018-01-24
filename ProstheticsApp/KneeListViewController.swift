//
//  KneeListViewController.swift
//  ProstheticsApp
//
//  Created by Nathaniel Choung on 1/23/18.
//  Copyright © 2018 ST&G. All rights reserved.
//

import UIKit

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
    Knee(serial: "VGK-125",name: "VGK Prosthetic Knee",pdacReq: 0,kLev: 3,weightLim: 275.0,buildHeight: 282.0),
    Knee(serial: "M0703",name: "Dolphin Knee",pdacReq: 1,kLev: 3,weightLim: 220.0,buildHeight: 184.0),
    Knee(serial: "M0780",name: "Swan 75 Knee",pdacReq: 1,kLev: 3,weightLim: 165.0,buildHeight: 172.0),
    Knee(serial: "M0786",name: "Swan 100 Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 175.0),
    Knee(serial: "1323",name: "Stance Flexion 5-Bar Pneumatic Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 219.0),
    Knee(serial: "1324",name: "Stance Flexion 5-Bar Mechanical Knee",pdacReq: 1,kLev: 2,weightLim: 275.0,buildHeight: 160.0),
    Knee(serial: "1341",name: "Safe Stride Knee",pdacReq: 0,kLev: 3,weightLim: 220.0,buildHeight: 157.77),
    Knee(serial: "1319",name: "Pneumatic Single Axis Knee",pdacReq: 0,kLev: 3,weightLim: 220.0,buildHeight: 146.43),
    Knee(serial: "1320",name: "Pneumatic Single Axis Knee with Weight Activated Lock",pdacReq: 1,kLev: 3,weightLim: 220.0,buildHeight: 159.68),
    Knee(serial: "1322",name: "Polycentric Pneumatic 4-Bar Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 218.0),
    Knee(serial: "1321",name: "Polycentric 4-Bar Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 160.0),
    Knee(serial: "L1321",name: "Polycentric 4-Bar Manual Locking Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 160.0),
    Knee(serial: "1326",name: "4-Bar Knee for AK and KD",pdacReq: 1,kLev: 3,weightLim: 220.0,buildHeight: 160.0),
    Knee(serial: "1311",name: "Weight Activated Brake Knee",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 42.44),
    Knee(serial: "1313A",name: "Manual Locking Knee - Type A",pdacReq: 1,kLev: 3,weightLim: 198.0,buildHeight: 39.43),
    Knee(serial: "1313A-N",name: "Manual Locking Knee - Type B",pdacReq: 1,kLev: 3,weightLim: 220.0,buildHeight: 39.43),
    Knee(serial: "1312",name: "Mechanical 4-Bar Knee",pdacReq: 0,kLev: 3,weightLim: 275.0,buildHeight: 75.07),
    Knee(serial: "1314",name: "4-Bar Knee with Extension Assist for KD",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 111.45),
    Knee(serial: "1315",name: "4-Bar Knee with Extension Assist for KD",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 111.45),
    Knee(serial: "1317",name: "Single Axis Knee with Internal Extension Assist and Adjustable Constant Friction",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 77.32),
    Knee(serial: "1318",name: "Single Axis Knee with Manual Lock",pdacReq: 1,kLev: 3,weightLim: 275.0,buildHeight: 77.32),
]

class KneeListViewController: UITableViewController {
    
    var filteredArray2: [Knee] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (filteredArray2.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = filteredArray2[indexPath.row].serial
        return cell
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
