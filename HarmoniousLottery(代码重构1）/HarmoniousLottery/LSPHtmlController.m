//
//  LSPHtmlController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-14.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPHtmlController.h"
#import "LSPHelp.h"
@interface LSPHtmlController ()<UIWebViewDelegate>

@end

@implementation LSPHtmlController
- (void)loadView
{
    self.view = [[UIWebView alloc] init];
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
    UIWebView *webView = (UIWebView *)self.view;
    webView.delegate = self;
    //NSString *name = [NSString stringWithFormat:self.html.html];
    NSURL *url = [[NSBundle mainBundle] URLForResource:self.html.html withExtension:nil];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
}
- (void)back
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *distTitle = [NSString stringWithFormat:@"window.location.href = '#%@';",self.html.ID];
    [webView stringByEvaluatingJavaScriptFromString:distTitle];
    
    
}
@end
