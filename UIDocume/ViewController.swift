//
//  ViewController.swift
//  UIDocume
//
//  Created by 马耀 on 2017/5/9.
//  Copyright © 2017年 mayao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.redColor()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //ViewController3  非控制器
        //ViewController2 控制器 （有办法自定义 但是比较麻烦）
        let con = ViewController2()
        self.navigationController?.pushViewController(con, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

