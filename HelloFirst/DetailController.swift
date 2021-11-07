//
//  DetailController.swift
//  HelloFirst
//
//  Created by 申民鐡 on 2021/11/08.
//

import UIKit
import WebKit


class DetailController: UIViewController {
    @IBOutlet weak var WebViewMain: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. web을 키는방법 url string
        //2. url > request
        //3. req > webview load

        let urlString = "https:www.google.com"
        if let url = URL(string: urlString){ //unwrap 스트링을 url으로 바꾸어주는 형태 옵셔널 바인딩
            let urlReq = URLRequest(url: url)
            WebViewMain.load(urlReq)
        }
        
    }
    
    
}
