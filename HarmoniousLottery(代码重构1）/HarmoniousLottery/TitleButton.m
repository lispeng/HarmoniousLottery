//
//  TitleButton.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-8.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "TitleButton.h"

@interface TitleButton()

@property (nonatomic,strong) UIFont *titleFont;

@end

@implementation TitleButton

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)deCoder
{
    if (self = [super initWithCoder:deCoder]) {
        
        [self setup];
    }
    return self;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    NSDictionary *attr = @{NSFontAttributeName : self.titleFont};
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil].size.width;
    CGFloat titleH = contentRect.size.height;
    CGRect rect = CGRectMake(titleX, titleY, titleW, titleH);
    return rect;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat titleW = 30;
    CGFloat titleX = contentRect.size.width - titleW;
    CGFloat titleY = 0;
    CGFloat titleH = contentRect.size.height;
    CGRect rect = CGRectMake(titleX, titleY, titleW, titleH);
    return rect;

}
- (void)setup
{
    self.titleFont = [UIFont systemFontOfSize:13];
    self.titleLabel.font = self.titleFont;
    self.imageView.contentMode = UIViewContentModeCenter;
}
@end
