//
//  ZCViewA.m
//  ZCWidgetDemo
//
//  Created by 张灿 on 15/9/5.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import "ZCViewA.h"

@implementation ZCViewA

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    NSLog(@"ViewA响应");
}
//- (BOOL)canBecomeFirstResponder{
//    return YES;
//}
//- (BOOL)becomeFirstResponder{
//    [super becomeFirstResponder];
//    return YES;
//}
//- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
////    [super motionBegan:motion withEvent:event];
//    NSLog(@"ViewA震动了");
//}
@end
