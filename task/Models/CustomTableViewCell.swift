//
//  CustomTableViewCell.swift
//  task
//
//  Created by saiko diabovic on 8/14/18.
//  Copyright © 2018 cloudconnectiv. All rights reserved.
//

import UIKit
//
class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var cellBackGround: UIView!
    @IBOutlet var serverImage: UIImageView!
    @IBOutlet var serverName: UILabel!
    @IBOutlet var ipAddress: UILabel!
    @IBOutlet var deviceIPSubnetMask: UILabel!
    @IBOutlet var statusImage: UIImageView!
    
    @IBOutlet var statusBackGroundView: UIView!
    
    @IBAction func checkButton(_ sender: Any) {
    }
    @IBOutlet var checkBackGround: UIView!
    
    @IBAction func soundButton(_ sender: Any) {
    }
    @IBOutlet var soundBackGround: UIView!
    
    @IBAction func alarmButton(_ sender: Any) {
    }
    @IBOutlet var alarmBackGround: UIView!
    
    @IBAction func phoneButton(_ sender: Any) {
    }
    
    @IBOutlet var phoneBackGround: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
