//
//  ViewController.swift
//  Simple TableView
//
//  Created by D7702_09 on 2019. 5. 8..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var myTableView: UITableView!
    var animals = ["Cat","Horse","Pig","Dog","Bird"]
    var subtitle = ["고양이","말","돼지","개","새"]
    
    // navigationBar에 title  설정
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // Delegate 객체와 ViewController의 연결
        myTableView.dataSource = self
        myTableView.delegate = self
           self.title = "동물농장"
    }

    
    
    //UITableViewDataSource Delegate 메소드
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return animals.count
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //cell을 생성, 메모리 풀(cell identifier)를 검사해서 있으면 가져와서 재활용하고 없으면 새로 생성함. 다음재활용을 위해 메모리풀에 저장
        let myCell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        let myRow = indexPath.row
        let mySection = indexPath.section
        myCell.textLabel?.text = animals[myRow]
//        myCell.detailTextLabel?.text = year[myRow]
        myCell.detailTextLabel?.text = "section = \(mySection) row = \(myRow)"
        
        //cell에 이미지 넣기
        myCell.imageView?.image = UIImage(named: animals[myRow])
        
        
        return myCell
    
    }

     public func numberOfSections(in tableView: UITableView) ->Int{
        return 1
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        if section == 0{
            return "section header \(section)"
        }else{
            return "section header \(section)"
        }
    }
        public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?{
            if section == 0{
                return "section footer \(section)"
            }else{
                return "section footer \(section)"
            }
        }
    // UITableViewDelegate 메소드 
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100.0
    }
        //배열에 있는 데이터 DetailViewController에 넘겨 주기
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "godetail" {
            let dvController=segue.destination as! DetailViewController
            dvController.dataLabel  = animals[2]
            dvController.dataImage = animals[2]
        } else if segue.identifier == "gocell" {
            let dcController = segue.destination as! DetailCellViewController
            let myIndexPath = myTableView.indexPathForSelectedRow
            let myRow =  myIndexPath?.row
            dcController.cellData = animals[myRow!]
            dcController.cellImage = animals[myRow!]
            
            
        }else if segue.identifier == "godetailcell" {
            
            let dtController = segue.destination as! myTableViewController
            
            let myIndexPath = myTableView.indexPathForSelectedRow
            let myRow = myIndexPath?.row
            
            dtController.detailAnimals = animals[2]
            dtController.detailYear = subtitle[2]
        }
        
        else {
            fatalError()
        }
    }
        
    }
    
    


