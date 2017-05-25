//
//  ViewController4.swift
//  UIDocume
//
//  Created by Apple on 2017/5/23.
//  Copyright © 2017年 mayao. All rights reserved.
//

import UIKit
import QuickLook

class ViewController4: QLPreviewController,QLPreviewControllerDataSource,QLPreviewControllerDelegate,UIDocumentInteractionControllerDelegate {
   var documentInteractionController : UIDocumentInteractionController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBarHidden = true
        
        self.delegate = self
        self.dataSource = self
//        let btn = UIButton(frame: CGRectMake(0, 100, 200, 200))
//        btn.backgroundColor = UIColor.redColor()
//        btn.addTarget(self, action: "action", forControlEvents: UIControlEvents.TouchUpInside)
//        self.view.addSubview(btn)
        creatNav()
    }
    
    func creatNav(){
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationItem.title = "查看"
//        self.edgesForExtendedLayout = UIRectEdge.None
        self.navigationController?.navigationBar.barTintColor = UIColor.redColor()
        let gobackBtn = UIButton()
        gobackBtn.frame = CGRectMake(0, 0, 60, 20)
        gobackBtn.setTitle("返回", forState: UIControlState.Normal)
        gobackBtn.addTarget(self, action: "press", forControlEvents: UIControlEvents.TouchUpInside)
        gobackBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -50, 0, 0)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: gobackBtn)
    }

    
    func previewController(controller: QLPreviewController, frameForPreviewItem item: QLPreviewItem, inSourceView view: AutoreleasingUnsafeMutablePointer<UIView?>) -> CGRect {
        return self.view.bounds
    }
    
    func action(){
        
        let path = NSBundle.mainBundle().pathForResource("123", ofType: "txt")
        let url = NSURL(fileURLWithPath: path!)
        documentInteractionController = UIDocumentInteractionController(URL: url)
        documentInteractionController.presentOpenInMenuFromRect(CGRectZero, inView: self.view, animated: true)
    }

    func numberOfPreviewItemsInPreviewController(controller: QLPreviewController) -> Int {
        return 1
    }
    
    func previewController(controller: QLPreviewController, previewItemAtIndex index: Int) -> QLPreviewItem {
        let path = NSBundle.mainBundle().pathForResource("123", ofType: "txt")
        let url = NSURL(fileURLWithPath: path!)
        //        let url2 = NSURL(string: "")
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
