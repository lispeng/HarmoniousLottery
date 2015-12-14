//
//  LSPArrowItem.h
//  HarmoniousLottery
//
//  Created by mac on 15-9-10.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPSwitchItem.h"
#import "LSPCellModel.h"
@interface LSPArrowItem : LSPCellModel

+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title;
+ (instancetype)cellModelWithIcon:(NSString *)icon title:(NSString *)title vcClass:(Class) vcClass;
+ (instancetype)cellWithTitle:(NSString *)title vcClass:(Class) vcClass;

@end
