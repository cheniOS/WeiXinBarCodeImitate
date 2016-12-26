//
//  CodeBarView.m
//  WeiXinBarCodeImitate
//
//  Created by chenHS on 16/12/26.
//  Copyright © 2016年 nice. All rights reserved.
//

#import "CodeBarView.h"
static CGFloat  codeLabelHeight =  20.0f;
@implementation CodeBarView
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor  = [UIColor whiteColor];
        [self addSubview:self.codeImageView];
        [self addSubview:self.codeLabel];
        [self addSubview:self.toucheButton];
        
    }
    return self;
}

-(void)singleTap{
    
    [self addSubviewWhenEnlarge];
   
    [UIView imageViewAnimationWithIsShowView:self.enlargeImageView andIsShow:YES];
   
}
-(void)addSubviewWhenEnlarge{
    self.vc  = [CodeBarViewTool viewControllerWithView:self];
    [self.vc.view addSubview:self.bgView];
    
    CGRect  viewFrame = [self convertRect:self.bounds toView:nil];
    UIImage  * enlargeImage = [UIView getImageWithView:self];
    self.enlargeImageView = [[UIImageView alloc]initWithFrame:viewFrame];
    self.enlargeImageView.image = enlargeImage;
    [self.bgView addSubview:self.enlargeImageView];
    self.bgView.backgroundColor = [UIColor whiteColor];
    self.enlargeImageView.userInteractionEnabled = YES;
    [self.bgView addSubview:self.bgButton];

}
-(void)toHidenBgView{
    [UIView imageViewAnimationWithIsShowView:self.enlargeImageView andIsShow:NO];
   
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
//
            for (UIView *v in self.bgView.subviews) {
                [v removeFromSuperview];
            }
            [self.bgView removeFromSuperview];
            [self.vc.navigationController setNavigationBarHidden:NO animated:NO];
        });
    });
    

}
-(void)setCodeString:(NSString *)codeString{
    self.codeLabel.text = codeString;
    [UIView insertBlankWithLabel:self.codeLabel];
    [UIView generateCodeWithImageView:self.codeImageView code:codeString];
}
-(UIButton *)toucheButton{
    if (!_toucheButton) {
        _toucheButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0,CGRectGetWidth(self.frame) ,CGRectGetHeight(self.frame))];
    }
    
    [_toucheButton addTarget:self action:@selector(singleTap) forControlEvents:UIControlEventTouchUpInside];
    
    return _toucheButton;
}
-(UIButton *)bgButton{
    if (!_bgButton) {
         _bgButton= [[UIButton alloc]initWithFrame:self.bgView.frame];
    }
 
     [_bgButton addTarget:self action:@selector(toHidenBgView) forControlEvents:UIControlEventTouchUpInside];
    return _bgButton;
}
-(UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0,mainScreenWidth ,mainScreenHeight)];
    }
  
    return _bgView;
}
-(UILabel *)codeLabel{
    if (!_codeLabel) {
         _codeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0,CGRectGetMaxY(self.codeImageView.frame),CGRectGetWidth(self.frame), codeLabelHeight)];
    }
    _codeLabel.textAlignment = NSTextAlignmentCenter;
    _codeLabel.textColor = [UIColor blackColor];
    return _codeLabel;
}
-(UIImageView *)codeImageView{
    if (!_codeImageView) {
        _codeImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0,CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)-codeLabelHeight)];
    }
    return _codeImageView;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
