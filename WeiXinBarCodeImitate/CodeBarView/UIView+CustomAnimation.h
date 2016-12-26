//
//  UIView+CustomAnimation.h
//  WeiXinBarCodeImitate
//
//  Created by chenHS on 16/12/26.
//  Copyright © 2016年 nice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CodeBarViewTool.h"
#define mainScreenHeight [UIScreen mainScreen].bounds.size.height
#define mainScreenWidth [UIScreen mainScreen].bounds.size.width
@interface UIView (CustomAnimation)
//创建条形码
+ (void)generateCodeWithImageView:(UIImageView*)imageView code:(NSString*)code;
+ (void)insertBlankWithLabel:(UILabel *)label;
+ (UIImage * )getImageWithView:(UIView *)view;
+ (void)imageViewAnimationWithIsShowView:(UIView*)view  andIsShow:(BOOL)isShow;
 
@end
