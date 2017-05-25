//
//  ViewController2.swift
//  UIDocume
//
//  Created by 马耀 on 2017/5/9.
//  Copyright © 2017年 mayao. All rights reserved.
//

import UIKit
import QuickLook

class ViewController2: UIViewController,QLPreviewControllerDataSource,QLPreviewControllerDelegate {
    
    var myQlPreViewController:QLPreviewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("123", ofType: "txt")
        let url = NSURL(fileURLWithPath: path!)

        creatNav()
        self.view.backgroundColor = UIColor.orangeColor()
        
        myQlPreViewController = QLPreviewController()
        myQlPreViewController.delegate = self
        myQlPreViewController.dataSource = self
        myQlPreViewController .view.frame = self.view.frame
        self .addChildViewController(myQlPreViewController)
        self.view.addSubview(myQlPreViewController.view)
    }
    
    func creatNav(){
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationItem.title = "查看"
        self.edgesForExtendedLayout = UIRectEdge.None
        self.navigationController?.navigationBar.barTintColor = UIColor.redColor()
        let gobackBtn = UIButton()
        gobackBtn.frame = CGRectMake(0, 0, 60, 20)
        gobackBtn.setTitle("返回", forState: UIControlState.Normal)
        gobackBtn.addTarget(self, action: "press", forControlEvents: UIControlEvents.TouchUpInside)
        gobackBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -50, 0, 0)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: gobackBtn)
    }

    
    func numberOfPreviewItemsInPreviewController(controller: QLPreviewController) -> Int {
        
        return 1
    }
    
    func previewController(controller: QLPreviewController, previewItemAtIndex index: Int) -> QLPreviewItem{
        // 路径 可以获得基本信息 但是不能打开 
        let path = NSBundle.mainBundle().pathForResource("123", ofType: "txt")
        let url = NSURL(fileURLWithPath: path!)
        return  url as QLPreviewItem
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
