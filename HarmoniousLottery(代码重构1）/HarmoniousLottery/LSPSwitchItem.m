//
//  LSPSwitchItem.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-9.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPSwitchItem.h"

@implementation LSPSwitchItem
+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title
{
    LSPSwitchItem *item = [[LSPSwitchItem alloc] init];
    
    item.icon = icon;
    item.title = title;
    
    
    return item;
}

@end
