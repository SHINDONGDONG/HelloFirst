//
//  Detail2.swift
//  HelloFirst
//
//  Created by 申民鐡 on 2021/11/08.
//

import UIKit

class Detail2 :UIViewController,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var TableViewMain: UITableView!
    
    let arr : Array = [1,2,3,4,5,6,7,8,9]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //data 몇개?
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     //데이터 무엇?  반복할거가타...
    // 임의의 셀을 만들기
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "Table Cell 1")
        cell.textLabel?.text = "\(indexPath.row+1)번으로 출력이 됩니다."
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //delegate, datasource 를 사용하여 view에 나타내기
        TableViewMain.delegate = self
        TableViewMain.dataSource = self

        //테이블의 데이터가 무엇?
        //데이터는 몇개?
        //데이터 행을 눌렀다_!
        
    }
}
