//
//  MapTableViewCell.swift
//  UiTableViewController Test 02
//
//  Created by amadeus on 2018. 6. 2..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit
import MapKit

class MapTableViewCell: UITableViewCell {

    @IBOutlet weak var detailMapView: MKMapView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
