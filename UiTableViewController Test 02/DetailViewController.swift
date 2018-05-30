//
//  DetailViewController.swift
//  UiTableViewController Test 02
//
//  Created by D7703_04 on 2018. 5. 28..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var detailTableView: UITableView!
    @IBOutlet weak var cellImageView: UIImageView!
    
    var cellImage: String = ""
    var local1: String = ""
    var tel1: String = ""
    var menu: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // delegate connection
        detailTableView.delegate = self
        detailTableView.dataSource = self
        
        cellImageView.image = UIImage(named: cellImage)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
//        if indexPath.row == 0 {
//            cell.textLabel?.text = "주소 : " + local1
//            return cell
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = "전화번호 : " + tel1
//            return cell
//        } else {
//            cell.textLabel?.text = "메뉴 : " + menu
//            return cell
//        }
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "주소 : " + local1
            return cell
        case 1:
            cell.textLabel?.text = "전화번호 : " + tel1
            return cell
        default:
            cell.textLabel?.text = "메뉴 : " + menu
            return cell
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
