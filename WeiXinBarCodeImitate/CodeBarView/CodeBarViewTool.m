//
//  CodeBarViewTool.m
//  WeiXinBarCodeImitate
//
//  Created by chenHS on 16/12/26.
//  Copyright © 2016年 nice. All rights reserved.
//

#import "CodeBarViewTool.h"

@implementation CodeBarViewTool
+ (UIViewController*)viewControllerWithView:(UIView*)view {
    for (UIView* next = [view superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}
@end
