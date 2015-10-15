//
//  ZCResponderVC.m
//  ZCWidgetDemo
//
//  Created by 张灿 on 15/9/5.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import "ZCResponderVC.h"
#import "ZCTextField.h"
#import "ZCViewA.h"
#import "ZCViewB.h"
#import <CoreMotion/CoreMotion.h>

@interface ZCResponderVC ()
@property(nonatomic,weak)ZCTextField* textField;
@end

@implementation ZCResponderVC

- (void)viewDidLoad {
    [super viewDidLoad];
   self.title = @"UILResponder详解";
    self.urlString = @"http://www.jianshu.com/p/2dda99a0e09a";
    [self initView];
    
}

- (void)initView{
    ZCViewA* viewA = [[ZCViewA alloc]initWithFrame:CGRectMake(40, 124, 200, 300)];
    viewA.backgroundColor = [UIColor redColor];
//    viewA.userInteractionEnabled = NO;
    
    ZCViewB* viewB = [[ZCViewB alloc]initWithFrame:CGRectMake(20, 20, 150, 200)];
    viewB.backgroundColor = [UIColor blueColor];
//    [viewB becomeFirstResponder];
    
    
    ZCTextField* textF = [[ZCTextField alloc]initWithFrame:CGRectMake(20, 50, 100, 100)];
    textF.backgroundColor = [UIColor whiteColor];
    self.textField = textF;
    [viewB addSubview:textF];
    
    [viewA addSubview:viewB];
    [self.view addSubview:viewA];
    
    UILabel* testLabel = [[UILabel alloc]initWithFrame:CGRectMake(40, 425, 200, 40)];
    UIFont* font = [UIFont fontWithName:@"Courier" size:15];
    testLabel.font = font;
    testLabel.text = @"我喝吧";
    [self.view addSubview:testLabel];
    

}
- (NSArray *)keyCommands
{
    return @[[UIKeyCommand keyCommandWithInput:@"f"
              
                                 modifierFlags:UIKeyModifierCommand
                                        action:@selector(searchKeyPressed:)]];
}

- (void)searchKeyPressed:(UIKeyCommand *)keyCommand
{
    NSLog(@"啊");
    // Respond to the event
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"self.View响应");
    [self.textField resignFirstResponder];
}
//- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
//  NSLog(@"Responder震动了");
//}
@end
