//
//  DetailViewController.swift
//  Simple TableView
//
//  Created by D7702_09 on 2019. 5. 22..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    //ViewControler의 배열 데이터를 받는 변수 선언
    var dataLabel: String?
    var dataImage: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        myLabel.text = dataLabel
//        myImageView.image = UIImage(named: dataImage!)

    }
    

    @IBAction func backToViewController(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func saveData(_ sender: Any) {
        myLabel.text = "Data Saved"
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
