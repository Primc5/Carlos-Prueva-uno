//
//  CelulaSwitch.swift
//  Prueva1
//
//  Created by PABLO CRUZ MENDEZ on 17/10/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class CelulaSwitch: UITableViewCell {

    @IBOutlet var lblizq: UILabel?
    @IBOutlet var swicth: UISwitch?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func clicked(_ sender: Any) {
        print(lblizq?.text)
    }
    
}
