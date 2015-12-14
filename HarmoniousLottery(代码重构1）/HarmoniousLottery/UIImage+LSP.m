//
//  UIImage+LSP.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-9.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "UIImage+LSP.h"

@implementation UIImage (LSP)
+ (UIImage *)resizableWithImage:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    CGFloat newImageTop = image.size.height * 0.5;
    CGFloat newImageLeft = image.size.width * 0.5;
    CGFloat newImageBotton = image.size.height * 0.5;
    CGFloat newImageRight = image.size.width * 0.5;
    
    UIImage *newImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(newImageTop, newImageLeft, newImageBotton, newImageRight)];
    
    return newImage;
}
@end
