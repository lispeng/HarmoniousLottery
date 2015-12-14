//
//  LSPLabelItem.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-11.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPLabelItem.h"

@implementation LSPLabelItem
+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title
{
    LSPLabelItem *item = [[LSPLabelItem alloc] init];
    
    item.icon = icon;
    item.title = title;
    
    return item;
}
@end
