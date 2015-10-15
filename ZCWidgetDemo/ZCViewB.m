//
//  ZCViewB.m
//  ZCWidgetDemo
//
//  Created by 张灿 on 15/9/5.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import "ZCViewB.h"

@implementation ZCViewB

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    NSLog(@"ViewB响应");
}
- (BOOL)canBecomeFirstResponder{
    return YES;
}
- (BOOL)becomeFirstResponder{;
    return YES;
}
//- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
//    NSLog(@"ViewB震动了");
//}
@end
