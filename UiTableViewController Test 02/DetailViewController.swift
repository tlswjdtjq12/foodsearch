//
//  DetailViewController.swift
//  UiTableViewController Test 02
//
//  Created by D7703_04 on 2018. 5. 28..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MKMapViewDelegate {

    @IBOutlet weak var detailTableView: UITableView!
    @IBOutlet weak var cellImageView: UIImageView!
    
    
    var cellImage: String = ""
    var name: String = ""
    var local1: String = ""
    var tel1: String = ""
    var menu: String = ""
    var type: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // delegate connection
        detailTableView.delegate = self
        detailTableView.dataSource = self
        
//        detailMapView.delegate = self
        
        cellImageView.image = UIImage(named: cellImage)
        self.title = name
        
//        goMapView()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = "주소 : " + local1
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = "전화번호 : " + tel1
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = "메뉴 : " + menu
            return cell
        default :
            let cell = tableView.dequeueReusableCell(withIdentifier: "mapCell", for: indexPath) as! MapTableViewCell
            return cell
        }
    }
}
    
 /*
    // MapView
    func goMapView() {

        let geoCoder = CLGeocoder()
//        geoCoder.geocodeAddressString(local1, completionHandler: {
//
//            (placemarks: [CLPlacemark]?, error: Error?) -> Void in
//
//            if let error = error {
//                print(error)
//                return
//            }
//
//            if placemarks != nil {
//                let placemark = placemarks![0]
//
//                // Add annotation
//                let annotation = MKPointAnnotation()
//                annotation.title = self.name
//                annotation.subtitle = self.type
//
//                if let location = placemark.location {
//                    annotation.coordinate = location.coordinate
//
//                    // Display annotation
//                    self.detailMapView.showAnnotations([annotation], animated: true)
//                }
//            }
//
//        })
//    }
    
      geoCoder.geocodeAddressString(local1) {

            (placemarks: [CLPlacemark]?, error: Error?) -> Void in
            if let error = error {
                print(error)
                return
            }

            if placemarks != nil {
                let placemark = placemarks![0]

                // Add annotation
                let annotation = MKPointAnnotation()
                annotation.title = self.name
                annotation.subtitle = self.type

                if let location = placemark.location {
                    annotation.coordinate = location.coordinate
                    self.detailMapView.addAnnotation(annotation)
                    
                    // Set zoom level
                    let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
                    self.detailMapView.setRegion(region, animated: true)
//                    self.detailMapView.showAnnotations([annotation], animated: true)
                }
            }
        }
    }
    
//    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
//        print("tapped callout")
//    }
    
        
        //storeMapView.mapType = MKMapType.hybrid
        // 늘해랑 35.172566, 129.071734
//        let location = CLLocationCoordinate2DMake(35.172566, 129.071734)
//        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
//        let region = MKCoordinateRegion(center: location, span: span)
//        detailMapView.setRegion(region, animated: true)
//
//        // pin 꼽기
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = location
//        annotation.title = "늘해랑"
//        annotation.subtitle = "TEL:051-860-3210"
//        detailMapView.addAnnotation(annotation)
//        detailMapView.selectAnnotation(annotation, animated: true)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
 */
