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
/*
 *根据传入的条形码创建条形码图
 */
+ (void)generateCodeWithImageView:(UIImageView*)imageView code:(NSString*)code;
/*
 *将传入的条形码添加空格
 */
+ (void)insertBlankWithLabel:(UILabel *)label;
/*
 *将传入的view进行截图
 */
+ (UIImage * )getImageWithView:(UIView *)view;
/*
 *根据isShow判断条形码旋转和还原
 */
+ (void)imageViewAnimationWithIsShowView:(UIView*)view  andIsShow:(BOOL)isShow;
 
@end
