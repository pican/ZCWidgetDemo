//
//  UIView+hitTest.h
//  ZCWidgetDemo
//
//  Created by 张灿 on 15/9/5.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef UIView * (^STHitTestViewBlock)(CGPoint point, UIEvent *event, BOOL *returnSuper);
typedef BOOL (^STPointInsideBlock)(CGPoint point, UIEvent *event, BOOL *returnSuper);

@interface UIView (STHitTest)
/// althought this is strong ,but i deal it with copy
@property(nonatomic, strong) STHitTestViewBlock hitTestBlock;
@property(nonatomic, strong) STPointInsideBlock pointInsideBlock;

@end