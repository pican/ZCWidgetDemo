//
//  ZCWebVC.m
//  ZCWidgetDemo
//
//  Created by 张灿 on 15/9/5.
//  Copyright (c) 2015年 pican. All rights reserved.
//

#import "ZCWebVC.h"

@interface ZCWebVC ()<UIWebViewDelegate>
@property(nonatomic,weak)UIWebView* webView;


@end

@implementation ZCWebVC

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL* url = [NSURL URLWithString:self.urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    UIWebView* webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    self.webView = webView;
    self.webView.delegate = self;
    [self.view addSubview:webView];
    [webView loadRequest:request];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSString* title = [self.webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    self.title = title;
}


@end
