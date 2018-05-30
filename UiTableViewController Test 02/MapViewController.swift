//
//  MapViewController.swift
//  UiTableViewController Test 02
//
//  Created by 김종현 on 2018. 5. 30..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var storeMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //storeMapView.mapType = MKMapType.hybrid
        // 늘해랑 35.172566, 129.071734
        let location = CLLocationCoordinate2DMake(35.172566, 129.071734)
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region = MKCoordinateRegion(center: location, span: span)
        storeMapView.setRegion(region, animated: true)
        
        // pin 꼽기
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "늘해랑"
        annotation.subtitle = "TEL:051-860-3210"
        storeMapView.addAnnotation(annotation)
        storeMapView.selectAnnotation(annotation, animated: true)
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
