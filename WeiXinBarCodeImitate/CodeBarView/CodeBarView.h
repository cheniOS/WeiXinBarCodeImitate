//
//  CodeBarView.h
//  WeiXinBarCodeImitate
//
//  Created by chenHS on 16/12/26.
//  Copyright © 2016年 nice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+CustomAnimation.h"
@interface CodeBarView : UIView
/*
 * 初始的条形码图
 */
@property(strong,nonatomic)UIImageView * codeImageView;
/*
 * 点击放大后条形码图
 */
@property(strong,nonatomic)UIImageView * enlargeImageView;
/*
 *初始的条形码label
 */
@property(strong,nonatomic)UILabel * codeLabel;
/*
 *条形码
 */
@property(copy,nonatomic)NSString * codeString;
/*
 *点击后的背景View
 */
@property(strong,nonatomic)UIView * bgView;
/*
 *当前view所在的ViewController
 */
@property(strong,nonatomic)UIViewController * vc;
@property(strong,nonatomic)UIButton * toucheButton;
@property(strong,nonatomic)UIButton * bgButton;
@end
