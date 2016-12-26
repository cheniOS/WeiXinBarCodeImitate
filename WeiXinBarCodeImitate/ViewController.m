//
//  ViewController.m
//  WeiXinBarCodeImitate
//
//  Created by chenHS on 16/12/26.
//  Copyright © 2016年 nice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.codeBarView];
    self.codeBarView.codeString = @"123321123454213344";
 
    /*test Label*/
    
    UILabel * titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 300, mainScreenWidth, 20)];
    titleLabel.text = @"请扫描";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    // Do any additional setup after loading the view, typically from a nib.
}
-(CodeBarView *)codeBarView{
    if (!_codeBarView) {
        _codeBarView = [[CodeBarView alloc]initWithFrame:CGRectMake(0, 100,mainScreenWidth, 150)];
    }
    return _codeBarView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
