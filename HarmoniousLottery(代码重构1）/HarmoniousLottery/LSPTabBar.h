//
//  LSPTabBar.h
//  HarmoniousLottery
//
//  Created by mac on 15-9-6.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LSPTabBar;
@protocol tabBarDelegate <NSObject>

@optional
- (void)tabBarClicked:(LSPTabBar *)tabBar fromIndex:(NSInteger)index to:(NSInteger)to;

@end
@interface LSPTabBar : UIView

@property (nonatomic,weak) id<tabBarDelegate> delegate;

- (void)addTabBarImage:(NSString *)name selectedImage:(NSString *)selName;
@end
