//
//  ddddd.h
//  UIDocume
//
//  Created by Apple on 2017/5/24.
//  Copyright © 2017年 mayao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuickLook/QuickLook.h>

@interface QLPreviewController (SelectorCrashSafety)
+ (void)exchangeMethod;

+ (void)noExchangeMethod;
@end
//@interface ddddd : NSObject
//+ (void)exchangeMethod;
//
//+ (void)noExchangeMethod;
//@end
