//
//  ViewController.m
//  ZCWidgetDemo
//
//  Created by 张灿 on 15/9/5.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import "ViewController.h"
#import "ZCLabelVC.h"
#import "ZCResponderVC.h"

@interface ViewController ()
@property(nonatomic,strong)NSArray* titles;
@property(nonatomic,strong)NSArray* classNames;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"iOS控件详解";
    [self initTitles];
    [self initClassNames];
    
}

#pragma mark - tableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.titles.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"iosCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = self.titles[indexPath.row];
    cell.textLabel.textColor = [UIColor blackColor];
    return cell;
}
#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSString *className = self.classNames[indexPath.row];
    
    UIViewController *subViewController = [[NSClassFromString(className) alloc] init];
    
    [self.navigationController pushViewController:(UIViewController*)subViewController animated:YES];
}
#pragma mark- 初始化方法
- (void)initTitles
{
    NSArray *titles = @[@"UILabel详解",
                        @"UIResponder详解"
                        ];
    self.titles = titles;
    
}

- (void)initClassNames
{
    NSArray *classNames = @[@"ZCLabelVC",
                            @"ZCResponderVC"
                            ];
    self.classNames = classNames;
}
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"ViewController震动了");
}
@end
