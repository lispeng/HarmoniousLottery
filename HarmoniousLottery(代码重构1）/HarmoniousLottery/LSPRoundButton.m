//
//  LSPRoundButton.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-29.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPRoundButton.h"

@implementation LSPRoundButton

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageW = 40;
    CGFloat imageH = 47;
    CGFloat imageX = (contentRect.size.width - imageW) * 0.5;
    CGFloat imageY = 20;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

- (void)setHighlighted:(BOOL)highlighted
{
    
}

@end
