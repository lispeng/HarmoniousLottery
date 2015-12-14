//
//  LSPTabBar.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-6.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPTabBar.h"
#import "LSPButton.h"


@interface LSPTabBar()

@property (strong,nonatomic) UIButton *selectedButton;

@end
@implementation LSPTabBar

 -(void)addTabBarImage:(NSString *)name selectedImage:(NSString *)selName
{
    LSPButton *button = [LSPButton buttonWithType:UIButtonTypeCustom];
    
    [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    
    [button setBackgroundImage:[UIImage imageNamed:selName] forState:UIControlStateSelected];
    
    [self addSubview:button];
    
    if (self.subviews.count == 1) {
        [self buttonClick:button];
    }
    
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    
}
- (void)layoutSubviews
{
    for (int i = 0; i < self.subviews.count; i ++) {
        
        LSPButton *button = self.subviews[i];
        
        CGFloat buttonW = self.frame.size.width * 0.2;
        
        CGFloat buttonH = self.frame.size.height;
        
        CGFloat buttonX = buttonW * i;
        
        CGFloat buttonY = 0;
        
        button.tag = i;
        
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
       
    }
}

- (void)buttonClick:(LSPButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(tabBarClicked:fromIndex:to:)]) {
        
        [self.delegate tabBarClicked:self fromIndex:self.selectedButton.tag to:sender.tag];
    }
    
    self.selectedButton.selected = NO;
    
    sender.selected = YES;
    
    self.selectedButton = sender;

    
}

@end
