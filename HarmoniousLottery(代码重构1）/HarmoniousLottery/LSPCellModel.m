//
//  LSPCellModel.m
//  HarmoniousLottery
//
//  Created by mac on 15-9-9.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPCellModel.h"

@implementation LSPCellModel

+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title
{
    LSPCellModel *item = [[LSPCellModel alloc] init];
    
    item.icon = icon;
    item.title = title;
    
    
    return item;
}
@end
