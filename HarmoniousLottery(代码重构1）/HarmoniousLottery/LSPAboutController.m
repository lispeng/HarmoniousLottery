//
//  LSPAboutController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-15.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPAboutController.h"
#import "LSPCellGroup.h"
#import "LSPArrowItem.h"
#import "LSPCellModel.h"
@interface LSPAboutController ()

@end

@implementation LSPAboutController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect = CGRectZero;
    UIWebView *webView = [[UIWebView alloc] initWithFrame:rect];
    [self.view addSubview:webView];
    LSPCellGroup *group1 = [[LSPCellGroup alloc] init];
    LSPArrowItem *sina = [LSPArrowItem cellModelWithIcon:nil title:@"评分支持"];
    LSPArrowItem *sns = [LSPArrowItem cellModelWithIcon:nil title:@"联系电话"];
    sns.subLabel = @"10086";
    sns.option = ^{
        
        NSURL *url = [NSURL URLWithString:@"tel://10086"];
        [webView loadRequest:[NSURLRequest requestWithURL:url]];
        
    };
        group1.items = @[sina,sns];
    [self.datas addObject:group1];
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = [UIColor clearColor];
    imageView.frame = CGRectMake(0, 0, self.view.frame.size.width, 300);
    imageView.image = [UIImage imageNamed:@"21.jpg"];
    self.tableView.tableHeaderView = imageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
