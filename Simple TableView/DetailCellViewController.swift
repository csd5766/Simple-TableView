//
//  DetailCellViewController.swift
//  Simple TableView
//
//  Created by D7702_09 on 2019. 5. 22..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit

class DetailCellViewController: UIViewController {

    @IBOutlet weak var DetailCellImageView: UIImageView!
    @IBOutlet weak var detailCellData: UILabel!
    
    var cellData: String?
    var cellImage: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        detailCellData.text = cellData
        DetailCellImageView.image = UIImage(named: cellImage!)
   
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
