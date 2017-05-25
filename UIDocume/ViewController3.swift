
//
//  ViewController3.swift
//  UIDocume
//
//  Created by 马耀 on 2017/5/9.
//  Copyright © 2017年 mayao. All rights reserved.
//

import UIKit
import QuickLook

class ViewController3: UIViewController,UIDocumentInteractionControllerDelegate {
    var documentInteractionController : UIDocumentInteractionController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.greenColor()
        let path = NSBundle.mainBundle().pathForResource("1234", ofType: "zip")
        let url = NSURL(fileURLWithPath: path!)

        documentInteractionController = UIDocumentInteractionController(URL: url)

        documentInteractionController.delegate = self
        
//        documentInteractionController.presentOpenInMenuFromRect(CGRectZero, inView: self.view, animated: true)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        // 预览： 返回值是能不能打开成功
        documentInteractionController.presentPreviewAnimated(true)
        // 预览end
        
//         不预览
//                var navRect = self.navigationController?.navigationBar.frame
//                navRect?.size = CGSizeMake(1500, 40)
////        //返回值是能不能打开成功
//                documentInteractionController.presentOptionsMenuFromRect(navRect!, inView: self.view, animated: true)
        //
    }
    
    func documentInteractionControllerViewControllerForPreview(controller: UIDocumentInteractionController) -> UIViewController {
        
        return self
    }
    
    func documentInteractionControllerViewForPreview(controller: UIDocumentInteractionController) -> UIView? {
        
        return self.view
    }
    
    func documentInteractionControllerRectForPreview(controller: UIDocumentInteractionController) -> CGRect {
        
        return self.view.frame
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

