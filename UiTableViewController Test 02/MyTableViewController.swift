import UIKit

class MyTableViewController: UITableViewController {
    
    var foodStoreNames = ["늘해랑", "번개반점", "아딸", "왕짜장", "토마토 도시락", "홍콩반점"]
    var foodStoreThumbnail = ["01", "02", "03", "04", "05", "06"]
    var foodStoreAddress = ["부산시 부산진구 양정동 418-282", "부산시 부산진구 양정동 418-282", "부산시 부산진구 양정동 418-282", "부산시 부산진구 양정동 418-282", "부산시 부산진구 양정동 418-282", "부산시 부산진구 양정동 418-282"]
    var foodStoreTel = ["051-852-9969", "051-852-9969", "051-852-9969", "051-852-9969", "051-852-9969", "051-852-9969"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.title = "DIT 배달통"
        //tableView.isEditing = true
    }
    
    
    //    @IBAction func editable(_ sender: Any) {
    //
    //        tableView.isEditing = true
    //    }
    //
    //    @IBAction func nonEditable(_ sender: Any) {
    //        tableView.isEditing = false
    //    }
    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodStoreNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
            as! FoodStoreTableViewCell
        // Configure the cell...
        
        cell.foodStoreCellName.text = foodStoreNames[indexPath.row]
        cell.foodStoreCellImage.image = UIImage(named: foodStoreThumbnail[indexPath.row])
        cell.foodStoreCellAddress.text = foodStoreAddress[indexPath.row]
        cell.foodStoreCellTel.text = foodStoreTel[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(foodStoreNames[indexPath.row])
        print(foodStoreTel[indexPath.row])
        
        /*
         //전화걸기 alert
         let optionMenu = UIAlertController(title: "전화걸기 : " + foodStoreNames[indexPath.row], message: foodStoreTel[indexPath.row], preferredStyle: .actionSheet)
         let callAction = UIAlertAction(title: "전화를 거시겠습니까?", style: .default) {
         (action: UIAlertAction) -> Void in
         let alert = UIAlertController(title: "전화 거는 중", message: nil, preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: "뚜루뚜두", style: .default, handler: nil))
         self.present(alert, animated: true)
         }
         
         let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
         
         optionMenu.addAction(callAction)
         optionMenu.addAction(cancelAction)
         present(optionMenu, animated: true, completion: nil)
         */
    }
    
    
    
    // Override to support conditional editing of the table view.
    //    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    //        // Return false if you do not want the specified item to be editable.
    //        return false
    //    }
    //
    
    // Override to support editing the table view.
    //    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    //        if editingStyle == .delete {
    //            // Delete the row from the data source
    //            //tableView.deleteRows(at: [indexPath], with: .fade)
    //
    //         foodStoreNames.remove(at: indexPath.row)
    //            foodStoreAddress.remove(at: indexPath.row)
    //            foodStoreTel.remove(at: indexPath.row)
    //            foodStoreThumbnail.remove(at: indexPath.row)
    //
    //            tableView.deleteRows(at: [indexPath], with: .fade)
    //            //tableView.reloadData()
    //
    //        }
    //        } else if editingStyle == .insert {
    //            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    //        }
    // }
    
    
    
    // Override to support rearranging the table view.
    //    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
    //
    //        let tmp1 = foodStoreNames[to.row]
    //            foodStoreNames[to.row] = foodStoreNames[fromIndexPath.row]
    //            foodStoreNames[fromIndexPath.row] = tmp1
    //
    //        let tmp2 = foodStoreThumbnail[to.row]
    //        foodStoreThumbnail[to.row] = foodStoreThumbnail[fromIndexPath.row]
    //        foodStoreThumbnail[fromIndexPath.row] = tmp2
    //
    //            tableView.reloadData()
    //    }
    
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showDetail" {
            if let indexPath =  tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DetailViewController
                // 이름 넘기기
                destinationController.title = foodStoreNames[indexPath.row]
                
                // 이미지 넘기기
                destinationController.cellImage = foodStoreThumbnail[indexPath.row]
                
                destinationController.local1 = foodStoreAddress[indexPath.row]
                destinationController.tel1 = foodStoreTel[indexPath.row]
            }
        }
    }
}
