//
//  LSPTabBarController.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-6.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPTabBarController.h"
#import "LSPTabBar.h"
#import "LSPButton.h"
@interface LSPTabBarController()<tabBarDelegate>



@end
@implementation LSPTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //自定义tarBar
    LSPTabBar *newTabBar = [[LSPTabBar alloc] init];
    
    newTabBar.frame = self.tabBar.bounds;
    
    newTabBar.delegate = self;
    
    
    
    [self.tabBar addSubview:newTabBar];
    
    for (int i = 0; i < self.viewControllers.count; i ++) {
        
        NSString *name = [NSString stringWithFormat:@"TabBar%d",i + 1];
        NSString *selName = [NSString stringWithFormat:@"TabBar%dSel",i +1];
        
        [newTabBar addTabBarImage:name selectedImage:selName];
    }

    
   
}

- (void)tabBarClicked:(LSPTabBar *)tabBar fromIndex:(NSInteger)index to:(NSInteger)to
{
    self.selectedIndex = to;
}

@end
