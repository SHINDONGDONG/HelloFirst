//
//  ViewController.swift
//  HelloFirst
//
//  Created by 申民鐡 on 2021/11/04.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func Detail2(_ sender: Any) {
        if let detail2 = self.storyboard?.instantiateViewController(withIdentifier: "Detail2"){
            self.navigationController?.pushViewController(detail2, animated: true)
        }
        
    }
    @IBAction func Click_moveBtn(_ sender: Any) {
        //코드로 클릭을했을 때 뷰 넘어가기
        //스토리보드에서 컨트롤러를 찾는다 -> 컨트롤러로 이동
        //이동할 컨트롤러의 identity를 설정 후
        //nil if 값이 들어있을 때 트루임 옵셔널 바이닝
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailController"){
            //move,push controller
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
