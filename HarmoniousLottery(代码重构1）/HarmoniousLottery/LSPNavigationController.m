//
//  LSPNavigationController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-8.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPNavigationController.h"

@implementation LSPNavigationController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

+ (void)initialize
{
       
    NSString *name = nil;
    UINavigationBar *navBar = [UINavigationBar appearance];
    if([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0)
    {
        name = @"NavBar64";
    }
    else
    {
        name = @"NavBar";
    }
    [navBar setBackgroundImage:[UIImage imageNamed:name] forBarMetrics:UIBarMetricsDefault];
    navBar.tintColor = [UIColor whiteColor];
    
    NSMutableDictionary *attribute = [NSMutableDictionary dictionary];
    
    attribute[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attribute[NSFontAttributeName] = [UIFont systemFontOfSize:18];
    
    [navBar setTitleTextAttributes:attribute];
    
    
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    NSMutableDictionary *dics = [NSMutableDictionary dictionary];
    dics[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    dics[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    [item setTitleTextAttributes:dics forState:UIControlStateNormal];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
    
    
}
@end
