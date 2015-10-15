//
//  ZCBaseVC.m
//  ZCWidgetDemo
//
//  Created by 张灿 on 15/9/5.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import "ZCBaseVC.h"
#import "ZCWebVC.h"

@interface ZCBaseVC ()

@end

@implementation ZCBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initBaseView];
}
- (void)initBaseView{
    UIButton* topButton= [[UIButton alloc]initWithFrame:CGRectMake(30, 74, self.view.frame.size.width-60, 40)];
    [topButton setTitle:@"详细介绍参考这篇文章" forState:(UIControlStateNormal)];
    [topButton setTitleColor:[UIColor blueColor] forState:(UIControlStateNormal)];
    [topButton addTarget:self action:@selector(btnClick) forControlEvents:(UIControlEventTouchUpInside)];
    topButton.layer.borderColor = [UIColor blueColor].CGColor;
    topButton.layer.borderWidth = 1.0;
    topButton.layer.cornerRadius = 5.0;
    [self.view addSubview:topButton];
}

- (void)btnClick{
    if (self.urlString) {
        ZCWebVC* vc = [[ZCWebVC alloc]init];
        vc.urlString = self.urlString;
        [self.navigationController pushViewController:vc animated:YES];
    }
}
@end
