//
//  LSPArrowItem.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-10.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPArrowItem.h"

@implementation LSPArrowItem
+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title
{
    LSPArrowItem *item = [[LSPArrowItem alloc] init];
    
    item.icon = icon;
    item.title = title;
    
    
    return item;
}

+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title vcClass:(Class) vcClass
{
    LSPArrowItem *item = [[LSPArrowItem alloc] init];
    
    item.icon = icon;
    item.title = title;
    item.vcClass = vcClass;
    
    return item;
}
+ (instancetype)cellWithTitle:(NSString *)title vcClass:(Class) vcClass
{
    return [self cellModelWithIcon:nil title:title vcClass:vcClass];
}
@end
