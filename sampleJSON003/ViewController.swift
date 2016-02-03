//
//  ViewController.swift
//  sampleJSON003
//
//  Created by Eriko Ichinohe on 2016/02/03.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        //-- json.txtファイルを読み込んで
        let path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
        let jsondata = NSData(contentsOfFile: path!)
        //-- 辞書データに変換して
        let jsonDictionary = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSDictionary
        //--  辞書データの個数だけ繰り返して表示する
        for (key,data) in jsonDictionary {
            var d1 = data["餅"] as! String
            var d2 = data["醤油"] as! String
            var d3 = data["月見団子"] as! String

            
            print("キー[\(key)] 餅[\(d1)]")
            print("キー[\(key)] 醤油[\(d2)]")
            print("キー[\(key)] 月見団子[\(d3)]")
        }

        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

